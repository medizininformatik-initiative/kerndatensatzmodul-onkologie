#!/usr/bin/env python3
"""Interaktive Profilkarte (mCODE-Stil) für MII-KDS-Modul-IGs generieren.

Liest die Profil-IDs und Ressourcentypen aus fsh-generated/resources/ und
rendert ein klickbares HTML/CSS-Grid (keine JS-, keine Liquid-Syntax), das
in input/pagecontent/profiles.md bzw. die DE-Übersetzung eingefügt wird.

Die GRUPPEN-Kuratierung ist modulspezifisch und wird hier gepflegt; das
Skript verifiziert jede referenzierte ID gegen fsh-generated und bricht bei
toten Zielen ab. Wiederverwendbar für weitere Modul-Migrationen (Biobank/
Bioproben, Bildgebung, ICU): GRUPPEN austauschen, Rest bleibt.

Aufruf:  python3 scripts/gen-profile-map.py            # prüft nur (IDs, Abdeckung)
         python3 scripts/gen-profile-map.py --print de # HTML-Block ausgeben

Der erzeugte Block wird manuell (oder per Folge-Tooling) zwischen der
Überschrift "### Interaktive Profilübersicht" / "### Interactive profile map"
und dem Folgeabschnitt eingesetzt; siehe profiles.md dieses Moduls als
Referenz-Einbettung.
"""
import argparse
import glob
import html
import json
import sys

COLORS = {
    'Condition': '#FFF3A3', 'Observation': '#CDEFC0', 'Procedure': '#C9C9F5',
    'CarePlan': '#E0E0FA', 'MedicationStatement': '#F8D8F0',
    'MedicationRequest': '#F8D8F0', 'AdverseEvent': '#F5C6C6',
    'Specimen': '#BDEDED', 'DiagnosticReport': '#D2F2D2',
    'ServiceRequest': '#E4F7E4', 'List': '#EDEDED', 'RequestGroup': '#E0E0FA',
}

# (deutscher Gruppentitel, englischer Gruppentitel, [(Label, Profil-Id), ...])
GRUPPEN = [
    ("Diagnose (oBDS 5)", "Diagnosis (oBDS 5)", [
        ("Diagnose Primärtumor", "mii-pr-onko-diagnose-primaertumor"),
        ("Frühere Tumorerkrankung", "mii-pr-onko-fruehere-tumorerkrankung"),
        ("Evidenz Erstdiagnose", "mii-pr-onko-liste-evidenz-erstdiagnose")]),
    ("Histologie & Pathologie (oBDS 6)", "Histology & Pathology (oBDS 6)", [
        ("Histologie ICD-O-3", "mii-pr-onko-histologie-icdo3"),
        ("Grading", "mii-pr-onko-grading"),
        ("Tumorgröße", "mii-pr-onko-tumorgroesse"),
        ("Befund", "mii-pr-onko-befund"),
        ("Specimen", "mii-pr-onko-specimen"),
        ("Lymphknoten untersucht", "mii-pr-onko-anzahl-untersuchte-lymphknoten"),
        ("Lymphknoten befallen", "mii-pr-onko-anzahl-befallene-lymphknoten"),
        ("Sentinel untersucht", "mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten"),
        ("Sentinel befallen", "mii-pr-onko-anzahl-befallene-sentinel-lymphknoten")]),
    ("TNM & Staging (oBDS 8–12)", "TNM & Staging (oBDS 8–12)", [
        ("TNM-Klassifikation", "mii-pr-onko-tnm-klassifikation"),
        ("TNM synthetisiert", "mii-pr-onko-tnm-klassifikation-synthetisiert"),
        ("T", "mii-pr-onko-tnm-t-kategorie"), ("N", "mii-pr-onko-tnm-n-kategorie"),
        ("M", "mii-pr-onko-tnm-m-kategorie"), ("L", "mii-pr-onko-tnm-l-kategorie"),
        ("V", "mii-pr-onko-tnm-v-kategorie"), ("Pn", "mii-pr-onko-tnm-pn-kategorie"),
        ("S", "mii-pr-onko-tnm-s-kategorie"), ("y", "mii-pr-onko-tnm-y-symbol"),
        ("r", "mii-pr-onko-tnm-r-symbol"), ("a", "mii-pr-onko-tnm-a-symbol"),
        ("m", "mii-pr-onko-tnm-m-symbol"),
        ("Weitere Klassifikationen", "mii-pr-onko-weitere-klassifikationen"),
        ("Residualstatus", "mii-pr-onko-residualstatus"),
        ("Fernmetastasen", "mii-pr-onko-fernmetastasen"),
        ("ECOG", "mii-pr-onko-allgemeiner-leistungszustand-ecog"),
        ("Karnofsky", "mii-pr-onko-allgemeiner-leistungszustand-karnofsky"),
        ("ASA", "mii-pr-onko-asa-klassifikation")]),
    ("Therapie (oBDS 13–16)", "Therapy (oBDS 13–16)", [
        ("Operation", "mii-pr-onko-operation"),
        ("Strahlentherapie", "mii-pr-onko-strahlentherapie"),
        ("Bestrahlung", "mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie"),
        ("Nuklearmedizin", "mii-pr-onko-strahlentherapie-bestrahlung-nuklearmedizin"),
        ("Systemische Therapie", "mii-pr-onko-systemische-therapie"),
        ("Medikation", "mii-pr-onko-systemische-therapie-medikation"),
        ("Nebenwirkung", "mii-pr-onko-nebenwirkung-adverse-event")]),
    ("Verlauf, Konferenz & Abschluss (oBDS 17–20)",
     "Follow-up, Conference & Closure (oBDS 17–20)", [
        ("Verlauf", "mii-pr-onko-verlauf"),
        ("Tumorkonferenz", "mii-pr-onko-tumorkonferenz"),
        ("Empf. Kombinationstherapie", "mii-pr-onko-therapieempfehlung-kombinationstherapie"),
        ("Empf. Medikation", "mii-pr-onko-therapieempfehlung-medikation"),
        ("Empf. Operation", "mii-pr-onko-therapieempfehlung-operation"),
        ("Tod", "mii-pr-onko-tod")]),
    ("Genetik & Studien (oBDS 23–24)", "Genetics & Studies (oBDS 23–24)", [
        ("Genetische Variante", "mii-pr-onko-genetische-variante"),
        ("Studienteilnahme", "mii-pr-onko-studienteilnahme")]),
    ("Organmodul Mamma", "Organ module: Breast", [
        ("Estrogen-Rezeptor", "mii-pr-onko-mamma-rezeptorstatus-estrogen"),
        ("Progesteron-Rezeptor", "mii-pr-onko-mamma-rezeptorstatus-progesteron"),
        ("HER2/neu", "mii-pr-onko-mamma-her2neu-status"),
        ("Menopause-Status", "mii-pr-onko-mamma-menopause-status"),
        ("Präop. Markierung", "mii-pr-onko-mamma-praeoperative-markierung"),
        ("Mamma-OP", "mii-pr-onko-mamma-operation"),
        ("Sozialdienst", "mii-pr-onko-mamma-sozialdienst")]),
    ("Organmodul Prostata", "Organ module: Prostate", [
        ("PSA", "mii-pr-onko-prostate-psa"),
        ("Gleason Patterns", "mii-pr-onko-prostate-gleason-patterns"),
        ("Gleason Score", "mii-pr-onko-prostate-gleason-score-gesamt"),
        ("Grade Group", "mii-pr-onko-prostate-gleason-grade-group"),
        ("Anzahl Stanzen", "mii-pr-onko-prostate-anzahl-stanzen"),
        ("Positive Stanzen", "mii-pr-onko-prostate-anzahl-positive-stanzen"),
        ("Befall Stanze", "mii-pr-onko-prostate-ca-befall-stanze"),
        ("Clavien-Dindo", "mii-pr-onko-prostate-clavien-dindo"),
        ("Prostata-OP", "mii-pr-onko-prostata-operation")]),
    ("Organmodul Kolorektal", "Organ module: Colorectal", [
        ("Abstand Anokutanlinie", "mii-pr-onko-krk-abstand-anokutan"),
        ("Abstand aboral", "mii-pr-onko-krk-abstand-aboral"),
        ("CRM/Resektionsebene", "mii-pr-onko-krk-abstand-circumferelle-resektionsebene"),
        ("MRT mesorektale Faszie", "mii-pr-onko-krk-mrt-mesorektale-faszie"),
        ("Anastomoseninsuffizienz", "mii-pr-onko-krk-anastomoseninsuffizienz"),
        ("KRK-OP", "mii-pr-onko-krk-operation"),
        ("Stoma-Markierung", "mii-pr-onko-krk-stoma-markierung"),
        ("KRK-Specimen", "mii-pr-onko-krk-specimen")]),
    ("Organmodul Melanom", "Organ module: Melanoma", [
        ("Breslow-Tiefe", "mii-pr-onko-melanom-breslow-tiefe"),
        ("Ulzeration", "mii-pr-onko-melanom-ulzeration"),
        ("Sicherheitsabstand", "mii-pr-onko-melanom-sicherheitsabstand"),
        ("LDH", "mii-pr-onko-melanom-ldh"),
        ("Exzision", "mii-pr-onko-melanom-exzision")]),
]

CSS = '''<style>
.onko-map{display:grid;grid-template-columns:repeat(auto-fit,minmax(270px,1fr));gap:12px;margin:1em 0}
.onko-map .grp{border:1px solid #b9c4d0;border-radius:8px;padding:10px 12px;background:#fafcfe}
.onko-map .grp h5{margin:0 0 8px 0;font-size:0.95em;color:#20456b}
.onko-map a.chip{display:inline-block;margin:2px;padding:3px 9px;border-radius:5px;border:1px solid rgba(0,0,0,0.18);font-size:0.82em;color:#1a1a1a;text-decoration:none;line-height:1.5}
.onko-map a.chip:hover{filter:brightness(0.9);text-decoration:none}
.onko-legend{font-size:0.8em;margin:4px 0 1.5em 0}
.onko-legend span{display:inline-block;margin-right:10px;padding:1px 8px;border-radius:4px;border:1px solid rgba(0,0,0,0.18)}
</style>'''


def load_profiles():
    ids = {}
    for f in glob.glob('fsh-generated/resources/StructureDefinition-*.json'):
        d = json.load(open(f))
        if d.get('kind') == 'resource' and d.get('derivation') == 'constraint':
            ids[d['id']] = d.get('type')
    return ids


def build(lang, ids):
    out = [CSS, '<div class="onko-map">']
    for de_t, en_t, items in GRUPPEN:
        title = de_t if lang == 'de' else en_t
        out.append(f'<div class="grp"><h5>{html.escape(title)}</h5>')
        for label, pid in items:
            c = COLORS.get(ids[pid], '#EDEDED')
            out.append(
                f'<a class="chip" style="background:{c}" '
                f'href="StructureDefinition-{pid}.html" title="{ids[pid]}">'
                f'{html.escape(label)}</a>')
        out.append('</div>')
    out.append('</div>')
    leg = ''.join(
        f'<span style="background:{COLORS[t]}">{t}</span>'
        for t in ['Condition', 'Observation', 'Procedure', 'CarePlan',
                  'MedicationStatement', 'AdverseEvent', 'Specimen',
                  'DiagnosticReport'])
    out.append(f'<div class="onko-legend">{leg}</div>')
    return '\n'.join(out)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--print', dest='lang', choices=['de', 'en'],
                    help='HTML-Block für diese Sprache ausgeben')
    args = ap.parse_args()
    ids = load_profiles()
    used = {pid for _, _, items in GRUPPEN for _, pid in items}
    missing = sorted(used - set(ids))
    uncovered = sorted(set(ids) - used)
    if missing:
        sys.exit(f"FEHLER — Karte referenziert nicht existente Profile: {missing}")
    print(f"# Profile im Modul: {len(ids)} | in Karte: {len(used)} | "
          f"nicht in Karte: {uncovered or 'keine'}", file=sys.stderr)
    if args.lang:
        print(build(args.lang, ids))


if __name__ == '__main__':
    main()
