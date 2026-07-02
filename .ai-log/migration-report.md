# Migrationsbericht — MII KDS Onkologie → HL7 FHIR IG Publisher

**Variante B** (KI-gestützt, nach der Migrations-Spezifikation des Template-Repos
`mii-kds-sample-ig-inoffiziell`, Marcel Susky / TU Dresden).
**Datum:** 2026-07-02 · **Quelle:** `kerndatensatzmodul-onkologie@dev` ·
**Zielbranch:** `hl7-ig-build` · **Arbeitsbranch:** `hl7-ig-build-migration`

## 1. Vorgehen (Spec-Schritte)

1. **Inventarisierung** der Quelle → `.ai-log/source-inventory.json`.
2. **Skelett** selektiv aus der Vorlage übernommen (Übernehmen-/Nicht-übernehmen-Liste
   migration-agent-spec §5a.2): `ig.ini` (auf `fhir2.base.template#current` umgestellt),
   Seitengerüst `input/pagecontent/`, `input/translations/en/`, `input/images/`,
   `input/ignoreWarnings.txt`. **Nicht** übernommen: `README.md`, Modul-CI (`main.yml`,
   `render-plantuml.yml`), `qc/`, sowie die Vorlagen-/Migrations-Doku (MIGRATION.md, skills/,
   AGENTS.md, tools/, DESIGN/ROLES/SOURCES …) und die Vorlagen-Beispiel-FSH — gemäß Prinzip
   *template-sanitize*. Reale Modul-FSH (`input/fsh/…`, 362 Dateien) **unverändert**.
3. **MODULE_METADATA** unverändert aus der Quelle übernommen (Bestandsschutz): `id`,
   `canonical`, `packageId`, `version` (2026.0.3), `dependencies`, `publisher`. Einzige
   Sprach-Anpassung: `language: de-DE` → `language: de` für die i18n-Mechanik (FSH unverändert;
   Sprach-Mismatch-Warnung via `input/ignoreWarnings.txt` `%(de-DE)%` abgefangen).
4. **Artefakte:** FSH unverändert; `sushi .` erzeugt 73 Profile, 14 Extensions, 3 Logical
   Models, 98 ValueSets, 43 CodeSystems, 257 Instanzen — **0 Errors**.
5. **Narrative:** Manteldokument-Crosswalk (MIGRATION.md §6) umgesetzt; FQL-/Simplifier-
   Direktiven gemäß `fql-rules.tsv` transformiert (Details §3). `fql-scan.sh` über
   `input/pagecontent`: **0 Direktiven, 0 UNBEKANNT**.
6. **Mehrsprachigkeit:** deutsch führend; `parameters: i18n-default-lang: de`, `i18n-lang: [en]`,
   `translation-sources: input/translations/en`. EN-Ressourcen-Supplements sind optional (Gate C)
   und wurden **nicht** neu erfunden.
7. **CI:** `.github/workflows/ig-publisher.yml` neu (Details §5). Bestehende Workflows unberührt.
8. **Bericht** (diese Datei) + PR nach `hl7-ig-build` (kein Merge, keine Veröffentlichung).

## 2. Migrierte Seiten (Manteldokument-Crosswalk)

| Quelle (2026.x-DE) | Ziel `input/pagecontent/` |
|---|---|
| Index.page.md (Impressum/Autoren) + BeschreibungModulOnko.page.md | `index.md` |
| BeschreibungvonSzenarienfrdieAnwendungderModule.page.md | `use-cases.md` |
| Datenstzeinkl.Beschreibungen.page.md | `data-sets.md` |
| UML.page.md | `uml.md` |
| KontextimGesamtprojektBezgezuanderenModulen.page.md | `context.md` |
| Abweichungen-zum-oBDS.page.md | `abweichungen-obds.md` |
| BezugZuNationalenStandards.page.md | `bezug-nationale-standards.md` |
| BezugZuInternationalenStandards.page.md | `bezug-internationale-standards.md` |
| Referenzen.page.md | `references.md` |
| TechnischeImplementierung: Terminologien / Verwendung-von-Extensions / CapabilityStatement / QA-Validierung / Profile-Inhalt-und-Vererbung / Profile-Beziehungen | `conformance.md` (konsolidiert) |
| Release-Notes.page.md | `changes.md` |
| (Pflichtabschnitt, in der Quelle ohne eigene Seite) | `security-privacy.md` (Stub, TODO:REVIEW) |
| Vorlage (generisch) | `downloads.md`, `translationinfo.md` |

**14 handkuratierte Narrative-Seiten** migriert (11 aus der Quelle + 1 konsolidierte
Technik-Seite + 1 Pflicht-Stub Security + 2 generische Vorlagenseiten).

### Nicht als Narrative dupliziert (bewusste, faithful-migration-Entscheidung)

Die Quelle enthält zusätzlich **~130 handgeschriebene Pro-Profil-Seiten** unter
`TechnischeImplementierung/FHIR-Profile/*` und `oBDS-SNOMED-CT-Mapping/*`. In Simplifier sind
diese nötig, weil Simplifier **keine** Artefaktseiten generiert. Der **IG Publisher generiert je
StructureDefinition / ValueSet / CodeSystem / ConceptMap automatisch eine Artefaktseite**
(Artifacts-Tab); die beschreibenden Texte liegen in den FSH-`^description`/`^definition`. Diese
Seiten wurden daher **nicht** als separate `pagecontent`-Narrative dupliziert. Dort konzentriert
sich auch der Großteil der 2109 Quell-Direktiven (`<tab>`=500, `@```=454, `{{json`=201,
`{{tree`=88, `{{xml`=83, `{{link`=83) — allesamt Render-Direktiven, die der IG Publisher ersetzt.
**Gate A / Fachvertretung:** bestätigen, dass die generierten Artefaktseiten die Pro-Profil-Texte
ausreichend abdecken; bei Bedarf einzelne kuratierte Profil-Narrative nachziehen. `TODO:REVIEW`

## 3. FQL-/Simplifier-Direktiven — angewandte Transformationen

Regelquelle: `fql-rules.tsv`. Auf den migrierten Seiten behandelt:

- `{{page-title}}` → entfernt (Titel aus `sushi-config.yaml` `pages:`/`menu:`).
- `{{index:root}}` → entfernt (Navigation erzeugt das Template).
- `{{pagelink:Name}}` (UML.page.md, Release-Notes) → in `changes.md` per Skript zu lesbaren
  Bezeichnungen aufgelöst (kein erfundener Artefakt-Link); in `uml.md` als Prosa + Verweis auf
  das Logical Model / Artefakte. `TODO:REVIEW` — optional als direkte Artefakt-Links verknüpfen.
- `{{tree:<canonical LogicalModel>}}` + `@``` … for differential.element select path, definition`
  (data-sets.md) → `{% include StructureDefinition-<id>-dict.xhtml %}` (Element-Wörterbuch,
  verifizierter Pattern der Vorlage) + Link zur Artefaktseite.
- `@``` … from ConceptMap …` (bezug-nationale-standards.md) → Link zur ConceptMap-Artefaktseite
  `ConceptMap-mii-cm-onkologie-to-mvgenomseq.html`.
- `{{render:<CapabilityStatement canonical>}}` (conformance.md) → Link auf
  `CapabilityStatement-mii-cps-onko-capabilitystatement.html` (Artefaktseite wird generiert).
- Bilder (raw.githubusercontent-URLs) → lokal nach `input/images/` kopiert und mit relativem
  `<img src="…">` referenziert (self-contained Build). `input/images/` ist im Modul per
  `input/.gitignore` ausgenommen; die migrierten SVGs wurden gezielt `-f` hinzugefügt.

**Verifikation:** `tools/fql-scan.sh input/pagecontent` → „Keine Simplifier-/FQL-Direktiven
gefunden." (0 zugeordnet, 0 UNBEKANNT).

## 4. Guardrails / Bestandsschutz

- Canonical URLs & IDs bestehender Conformance-Ressourcen **unverändert** (nur `sushi-config`
  Sprache/Parameter/Seiten/Menü und `ig.ini` Template angepasst).
- `dependencies` unverändert übernommen. **Offen (Gate A):** Floating Pins (`de.basisprofil.r4:
  1.5.x`, `…meta/base/medikation/molgen: 2026.0.x`) wurden aus Bestandsschutz **nicht**
  konkretisiert; Konkretisierung ist eine menschliche Entscheidung. `TODO:REVIEW`
- FHIR R4 (4.0.1). Keine Fakten erfunden; Unklarheiten als `TODO:REVIEW` markiert.
- Keine Vorlagen-Beispiele übernommen (es wurden keine Vorlage-FSH ins Modul kopiert).
- Default-Branch-Schutz: Arbeit ausschließlich in `hl7-ig-build*`; PR-Ziel `hl7-ig-build`.

## 5. CI/CD — `.github/workflows/ig-publisher.yml`

- Trigger: `push` auf `hl7-ig-build*` **und** `pull_request`.
- Baut SUSHI + IG Publisher über das MII-Snapshot-Image
  `ghcr.io/gefyra/ig-publisher-with-snapshot-support` (wie kerndatensatzmodul-labor).
- **Terminologie-Proxy** (NGINX + Client-Zertifikat aus `CDS_DEV_CLIENT_*`-Secrets) nach dem
  Labor-Vorbild; **Fallback** auf `https://tx.fhir.org`, falls die Proxy-Secrets im Repo fehlen.
- Bei `pull_request`: `output/` als Artifact `fhir-ig-output` hochgeladen. **Kein Pages-Deploy.**
- QA-Auszug (`output/qa.txt`) wird in die Job-Summary geschrieben.

## 6. Verifikation

- `sushi .` → **0 Errors**, 0 Warnings (nach Menü-`&`-Korrektur).
- `fql-scan.sh input/pagecontent` → **0 Direktiven, 0 UNBEKANNT**.
- Lokaler IG-Publisher-Build: best-effort (siehe PR-Beschreibung); andernfalls baut die CI im PR.

## 7. Definition of Done (MIGRATION.md §10)

- [x] `sushi .` fehlerfrei · [ ] IG-Publisher-Build grün (CI/Gate)
- [x] Crosswalk umgesetzt; Canonical-URL-Diff leer (Bestandsschutz)
- [x] `i18n-default-lang: de`
- [x] Keine Vorlagen-Beispiele im Modul
- [x] Arbeit nur in `hl7-ig-build*`; Default-Branch unverändert
- [ ] Benutzerdefinierte Seiten via Review-Gate freigegeben (Gate B)
- [x] PR mit Migrationsbericht

## 8. Review-Gates (Freigabe durch den Menschen — alle OFFEN)

- [ ] **Gate A** — URL-/ID-Bestandsschutz + Artefaktvollständigkeit (inkl. Pin-Konkretisierung,
  Abdeckung der Pro-Profil-Texte durch generierte Artefaktseiten).
- [ ] **Gate B** — Narrative inkl. Pflichtabschnitte (insb. `security-privacy.md`,
  Model-to-Profile-Tabelle, pagelink-Verlinkung in `changes.md`).
- [ ] **Gate C** — Sprachführung / optionale EN-Übersetzung.
- [ ] **Gate D** — Governance-Freigabe (TF KDS / AG IOP / NSG); erst danach Pages-Workflow.

## 9. Offene TODO:REVIEW

1. `security-privacy.md` — Consent/Pseudonymisierung/AuthZ modul-spezifisch konkretisieren.
2. `data-sets.md` — optionale redaktionelle Model-to-Profile-Gesamttabelle.
3. `uml.md` — Einzeldiagramme der organspezifischen Module optional einbetten.
4. `changes.md` — pagelink-Bezeichnungen optional als Artefakt-Links verlinken.
5. `conformance.md` — QA-Zahlen nach erstem grünem CI-Build referenzieren.
6. `sushi-config.yaml` — Entscheidung zur Konkretisierung der Floating Dependency-Pins.
7. Pro-Profil-Narrative: Prüfen, ob generierte Artefaktseiten ausreichen (§2).
