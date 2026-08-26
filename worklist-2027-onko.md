# Worklist v2027 — Soll-Ist-Abgleich (kommunizierter Plan ↔ GitHub ↔ beads ↔ Repo)

**Stand:** 2026-08-24 · Branch `feat/2027-issues` (⚠️ nur lokal, kein Upstream!)
**Quellen:** Kommunizierter 2027-Plan (TAM), GitHub-Issues (55 offen), beads (34 offen), `design-backlog-triage-onko.md`

---

## 1. Der kommunizierte 2027-Plan — Punkt für Punkt

| # | Kommuniziertes Item | GitHub | beads | Status |
|---|---|---|---|---|
| 1 | **Umzug auf IG Publisher** | ❌ kein Issue | `14w.14` (neu, P1) | 🔴 offen — `_genonce.sh`/`ig.ini`-Gerüst existiert, Migration ungetrackt gewesen |
| 2 | **Nebenwirkungsliste CTCAE/MedDRA** (#154, #170–172, #281) + SNOMED-Mapping (#281) | 5 Issues offen | Epic `1yu` (3 offen) | 🟢 **~60% fertig**: CTCAE-4.03-VS (790 MedDRA-Codes), de-Supplement-CS (KR-Liste), Grad≥3-Invariante — alles in Commit `a398c6b1`. Offen: MedDRA→SNOMED-CM (`qg7`), SNOMED-Slice AdverseEvent (`v9e`), Beispiele (`qst`), Slicing wording/Nummer (#172). **#154/#170 sind faktisch erledigt → auf GitHub schließen/kommentieren** |
| 3 | **LOINC-Laborwerte Biomarker** (ENCR Table 4, #246) | #246 offen | `14w.15` (neu) | 🔴 offen |
| 4 | **TNM auf SNOMED** (pot. breaking, #189) + **finales/berechnetes TNM** | #189, #272, #242 offen | `14w.24` (neu, P1) | 🟢 **weit fortgeschritten, aber ungemergt**: SNOMED-Dual-Coding T/N/M, Konsistenz-Invariante, synthesized-stage-Profil, Beispiel-Bundles, phase-aware Synthesis + Kim-Demo — 17 Commits auf `feat/2027-issues`, **nicht in dev, nicht gepusht**. Offen: #272 (präkoordinierte UICC-Qualifier, approved), #242 (Binding-Check), Review + Merge |
| 5 | **Karnofsky/ECOG auf LOINC** (#236, #269) | 2 Issues offen | `14w.16` (neu) | 🔴 offen |
| 6 | **Onkologischer Bildbefund** (Integration Modul Bildgebung) | ❌ kein Issue | `14w.17` (neu) | 🔴 offen — war komplett ungetrackt; **GitHub-Issue anlegen** |
| 7 | **Gleason-Überarbeitung** (#259–261) | 3 Issues offen (2 approved) | `14w.21` (neu) + #260 in Epic `2a4` | 🔴 offen |
| 8 | **oBDS-LM + Mappings auf MII-LM** (#217) | #217 offen (approved) | `14w.23` (neu) | 🔴 offen — `mvgenomseq_schemas/` liegt bereits im Repo |
| 9 | **Toronto-Erläuterungsseite** (ohne Profile, #205) | #205 offen (Label `v2028`) | `14w.18` (P3) | 🔴 offen — ✅ ENTSCHIEDEN (2026-08-24): Doku-Seite kommt in v2027, Profile bleiben post-2027 (D6b nur für Profile). GitHub-Label bei #205 anpassen |
| 10 | **Bindings/Kardinalitäten aufweichen** (MII-Patient→Patient, #288 MedicationStatement) | #288 offen (approved) | `14w.19` (neu) | 🔴 offen — MII-Patient→Patient war ungetrackt |
| 11 | **Redaktionelle Verbesserungen** (Beispiele/Mappings/Links) | ~10 Bugs (#280, #290, #213, #277, #278, #302 …) | Epic `2a4` + neu `2a4.1` (#302) | 🟡 teilweise: CapabilityStatement-SP-URL-Fix (`1sz`) erledigt; Rest offen. Ballot-Redaktion separat in Epic `ehq` |
| 12 | **Upstream-Anpassungen** (Basis, Labor, Biobank, Forschungsvorhaben, #232) | #232 offen | `14w.20` (neu) | 🔴 offen — wartet z.T. auf finale 2026er-Releases der Module |

Zusätzlich erledigt (nicht im kommunizierten Plan, aber v2027-relevant): §65c-Fixes (Tumor-ID `14w.5`, Fernmetastasen-bodySite `14w.6`, Seitenlokalisation/Meningeosis `14w.7`), Genetik-MolGen-Guidance-Seite, ATC-2026 (#268 ✓).

## 2. Was auf dem Branch liegt, aber nirgendwo angekommen ist ⚠️

1. **`feat/2027-issues` hat keinen Remote-Upstream** — 17 Commits (komplette TNM-Strecke + CTCAE-Katalog + §65c) nur lokal. → `git push -u origin feat/2027-issues`, dann PR gegen `dev`.
2. ~~Untracked im Working Tree~~ ✅ ENTSCHIEDEN (2026-08-24): `input/examples-source/` (Fremdmaterial NCI/KR/BfArM) ist **gitignored**, bleibt nur lokal als Quellmaterial. Triage-/Review-Docs + Worklist sind committet. Roadmap-PPTX bleibt vorerst untracked.
3. **GitHub-Label-Nacharbeit:** #154/#170 schließen, #302 labeln (`bug`,`v2027`), #205 Label klären, #279 gem. D6a umformulieren, Issues für IG-Publisher-Umzug + Bildbefund anlegen.

## 3. Run-Reihenfolge für morgen (Vorschlag)

**Block A — Hausputz (30 min):**
1. Branch pushen + PR `feat/2027-issues` → `dev` (TNM + CTCAE-Strecke reviewbar machen)
2. GitHub: #154/#170 schließen mit Verweis auf Commit `a398c6b1` — Rest ✅ erledigt (2026-08-24): Über-Ticket **#307** „Geplante Changes für Version 2027" + Milestone `2027.0.0` (allen v2027-Issues zugewiesen), neue Issues #304 (IG Publisher), #305 (Bildbefund), #306 (MII-Patient-Aufweichung), #302 gelabelt
3. ~~Entscheidung examples-source~~ ✅ erledigt (gitignored, 2026-08-24)

**Block B — Quick Wins aus Epic `2a4` (approved Bugs):**
4. `2a4.1`/#302 VS-Filter-Fix (klarer Einzeiler im FSH)
5. #260 Gleason Titel/Description · #265 Prostata value[x] · #213 falsches IG-Beispiel · #262 Tumorkonferenz-Discriminator

**Block C — 2027-Features mit Vorarbeit:**
6. `14w.24` finales TNM in IG überführen (baut auf Branch-Vorarbeit)
7. Epic `1yu` fertigstellen: `qg7` MedDRA→SNOMED-CM → `v9e` SNOMED-Slice → `qst` Beispiele
8. `14w.22` approved Profiländerungen (#298 0..*, #297 FIGO-Substages) — klein, unstrittig

**Danach (nach Priorität):** `14w.14` IG-Publisher-Umzug (P1, blockiert perspektivisch Doku-Arbeiten) → `14w.16` Karnofsky/ECOG-LOINC → `14w.15` Laborwerte → `14w.21` Gleason → Rest.

## 4. beads-Zustand nach diesem Abgleich

- 34 offene Issues, 0 in progress · 5 Epics: `1yu` (P1, CTCAE), `2a4` (P1, Bugs), `ehq` (P1, Ballot), `14w` (P2, 2027 — jetzt 21 Kinder), `ioj` (P2, Mapping-Support)
- Neu angelegt heute: `14w.14`–`14w.24` (11 Roadmap-Lücken) + `2a4.1` (#302) · `bd dolt push` ✓ erledigt
- Der kommunizierte Plan ist damit **vollständig in beads abgebildet**; `bd ready` liefert morgen direkt die Arbeit.

## 5. Gesamtreihenfolge v2027 — alle Tickets mit Abhängigkeiten (Stand 2026-08-25)

Vollständige Sequenzierung aller 40 offenen beads-Issues in 7 Wellen. Innerhalb einer
Welle ist alles parallelisierbar; Kanten `A ← B` bedeuten „A braucht B".

> ⚠️ **bd-Defekt:** `bd dep add` ist aktuell kaputt (fehlende `wisp_*`-Tabellen,
> siehe `kerndatensatzmodul-onkologie-ws6`, Fix-Skript `.claude/scripts/fix-bd-wisp-tables.sql`).
> Die Kanten unten sind daher hier dokumentiert und nach dem Fix in bd nachzutragen.

### Abhängigkeitskanten (nach bd-Fix als `bd dep add <issue> <depends-on>` anlegen)

```
qst      ← qg7, v9e        # Beispiele brauchen ConceptMap + Profil-Slices
14w.3    ← 14w.9           # CUP-Bundle nutzt transformationVon (CUP→Primär, Best-Of-Regel)
14w.10   ← 14w.9           # ZNS-Doku referenziert Transformation /0→/3
14w.2    ← 14w.1           # Prädispositions-VS docken an HGNC-/MolGen-Klärung an
14w.12   ← 14w.4           # OPS-Seitensuffix-Frage wird bei OPS-VS-Arbeit geklärt
pxy      ← 7kl             # ein Metadaten-Sweep; Lizenztext-Entscheidung zuerst
pxy      ← ehq(HDB-703)    # CRMI-Manifest pinnt SNOMED-Version → 703 vorher entscheiden
7kl/pxy  ← 14w.15, 14w.4, 14w.2, 14w.25, qg7, v9e   # Sweeps erst, wenn alle neuen VS/CM existieren
14w.23   ← 14w.9, 14w.19, 14w.21, 14w.22, 14w.24    # LM-Mappings erst auf finale Profile
14w.18, 14w.13(Doku), ioj.2(Doku) ← 14w.14 (soft)   # neue IG-Seiten nicht doppelt migrieren
14w.24   ← Branch-Merge feat/2027-issues → dev
14w.26   ← 14w.24          # y/a/r-Symbol-Harmonisierung (pot. breaking) mit TNM-SNOMED-Strecke gemeinsam entscheiden
14w.27   ← 14w.24 (soft)   # TNM-9-Codes: SNOMED-Slice-Handling mit TNM-SNOMED-Strecke/#242 abstimmen
3bj(Teil 2), 14w.20 ← externe Upstream-Releases (Meta/Basis/Labor/Biobank/Forschungsvorhaben)
```

### Welle 0 — Vorarbeit sichern (sofort)
1. ~~`feat/2027-issues` pushen + PR → `dev`~~ ✅ erledigt (2026-08-25): **PR #310** (ersetzt #274, Closes #154/#170); CI läuft über den PR
2. **`14w.24`** (P1) finales TNM: Review, IG-Aufnahme, Merge — entsperrt Klassifikations-/Beispielthemen
3. ~~`3bj` Teil 1~~ ✅ erledigt (2026-08-25): direkt als PR — kerndatensatz-meta#234 (SP condition-asserted-date); Nebenbefund CapabilityStatement evidence-detail-URL gefixt. Teil 2 (Dependency + Verifikation) bleibt in Welle 7

### Welle 1 — Bugfixes (parallel, jederzeit releasbar)
- **`2a4.1`** (P1) VS-Filter Mamma-Imaging (#302) — Einzeiler
- **`d8f`** (P1) ATC-Transitions 2022 + L01XC in VS 2018–2021 + Generator-Fix
- `02q` oBDS-Nummern 16.x Systemische Therapie
- `rvk` + `eyg` TNM-/Morphologie-SearchParameter (ein Aufschlag; `rvk` braucht Entscheidung a/b)
- `dq9` ICD-O-3-Morphologie validate-code mit CS-Version 2014 (Meldung Heidelberg) — Reproduktion + Ursachenklärung TX-Server vs. VS-Design, Rückmeldung an UKHD
- `2a4.3` medication[x]-Slice ohne Slicing-Definition im Snapshot (HL7-Validator compare, Meldung S. Taupadel) — im selben Aufschlag wie `14w.19`/#288 fixen
- ~~`2a4.4` KRK RDE96~~ ✅ + ~~`2a4.5` LOINC-Answer-Lists~~ ✅ (2026-08-25 gefixt: radelement.org-Fragment-CS; 3 enumerierte VS, dabei Inhaltsfehler LL4678-0 entdeckt)
- `a5l` (P1) CI-Validierung war seit Feb/März doppelt defekt (stale Artefakt + Validator-NPE durch Freitext-Suppressions) — Kern gefixt, Resthärtung offen; fhir-validation-Skill um Warnungen ergänzt
- `2a4.6` Hygiene: 25 CS/VS ohne Title (shareable-Verletzung) · `2a4.7` Prostata-TURP-Beispiel (SNOMED nicht im VS) — aus erster echter CI-Validierung seit Feb (50 Errors real, 7 Cluster; TNM-y/r-praefix-Befund → Review-Notiz an `14w.24`, CRMI-package-Befund → `pxy`)
- Epic `2a4`-Rest: #265, #262, #260, `2a4.2`/#213 (IG-Beispiel MedicationStatement→Procedure, Community-Remeldung 2026-08-25), #290, #280, #278, #277
- Parallel-Track Epic `ehq`: WU-1 Kat.1 (4 Code-Ergänzungen), Kat.2-Begründungen, Bugs 361/675, **Entscheidung HDB-703** (blockiert `pxy`)

### Welle 2 — Infrastruktur-Weiche
- **`14w.14`** (P1) Umzug HL7 IG Publisher — bewusst früh, damit alle neuen IG-Seiten (Wellen 4–5) nur einmal geschrieben werden

### Welle 3 — Entschiedene/approved Profiländerungen (klein, parallel)
- `14w.22` morphology-behavior 0..* + FIGO-Substages (#298/#297, approved)
- `14w.21` Gleason (#261 approved; #259-Entscheidung einholen)
- `14w.19` Bindings/Kardinalitäten aufweichen (#288 approved, #306 MII-Patient) — Design: medicationCodeableConcept-Aufweichung als Invariante (CodeableConcept ODER Medication-Referenz mit Code); Entscheidung Montag 2026-08-31, danach PR ggf. von chgl; zusammen mit `2a4.3` umsetzen; Rückmeldung an C. Gulden + P. Behrend (FDPG)
- **`14w.9`** occurredFollowing + neue Extension transformationVon (Design fertig) — entsperrt `14w.3` + `14w.10`
- `14w.26` TNM-Symbole y/a/r: value-Muster vereinheitlichen (Community-Frage 2026-08-25; nach `14w.24`, da pot. breaking — ✅ ENTSCHIEDEN: Dual-Coding, beide Codes vergeben wie bei den Kategorien)
- `14w.27` TNM 9. Auflage: T1b3/M1c1/M1c2 + vollständiges 8.→9.-Delta in UICC-CS/VS, Binding uicc-Slice → extensible (Zusage an UKHD, Kommentierung 2027; SNOMED-Slice mit `14w.24`/#242 abstimmen)
- `14w.16` Karnofsky/ECOG auf LOINC (#236, #269)

### Welle 4 — Terminologie-Ausbau (parallel)
- Epic `1yu`: `qg7` MedDRA→SNOMED-CM ∥ `v9e` AdverseEvent-Slices → danach `qst` Beispiele
- `14w.15` LOINC-Biomarker (ENCR Table 4, #246)
- `14w.4` OPS-VS komplettieren + IG-Text Instillationen — entsperrt `14w.12`
- `14w.1` Genetische Marker (HGNC/LOINC/Cat-VRS, MolGen-Abgleich zuerst) — entsperrt `14w.2`
- `14w.2` Prädispositionssyndrome/-gene (ORPHA + HGNC)
- `14w.25` KDL-VS Dokumentklassen

### Welle 5 — Modellierung, Beispiele, Doku
- `14w.3` CUP-Beispielbundle (nach `14w.9`)
- `14w.10` ZNS-Sonderregeln-Doku (nach `14w.9`) · `14w.11` Harnblasen-Organmodul (P3)
- `14w.12` OP-Seitenlokalisation (nach `14w.4`)
- `14w.8` §65c-Beispielinstanzen · `14w.18` Toronto-Seite (nach `14w.14`)
- `14w.17` Bildbefund-Modellierung (Scope-Klärung; extern vom Bildgebungs-Modul-Stand abhängig)
- `14w.13` Phasen-Episodisierung: nur Gap-Doku-Seite (Entscheidung: in diesem Zyklus nicht lösen)
- `ioj.1` + `ioj.2` DQ-Regeln/Guidance (Zulieferung CQL-Library #292; Doku-Teil nach `14w.14`)

### Welle 6 — Konsolidierung auf finale Profile
- `14w.23` oBDS-LM + Mappings MII-Onko-LM/MVGenomSeq (#217) — erst wenn Profiländerungen (Wellen 0/3) gemergt sind

### Welle 7 — Querschnitts-Sweeps + Release-Vorbereitung (zwingend zuletzt)
- `7kl` SNOMED-Copyright in alle VS → danach `pxy` CRMI-Metadaten (ein kombinierter Sweep über alle Artefakte; braucht HDB-703 für den SNOMED-Version-Pin im Manifest)
- `ehq` Bulk-Kosmetik (696 source/targetUri, 469, 703-Align über ~25–53 Dateien) im selben Sweep
- `14w.20` Upstream-Änderungen nachziehen + `3bj` Teil 2 (CapabilityStatement verifizieren) — sobald finale 2026er-Releases vorliegen, direkt vor Release

**Kernaussagen:** Die kritische Kette ist Branch-Merge → `14w.24` → `14w.23` → Sweeps (`7kl`/`pxy`) → `14w.20`/Release. Alles andere hängt in breiten, parallelen Wellen daneben. Bewusst früh: `14w.14` (verhindert doppelte Seiten-Migration) und `d8f` (Datenvalidität historischer Medikation). Bewusst zuletzt: alles, was *alle* Artefakte anfasst.

## 6. Stand 2026-08-26 (Kurzprotokoll für Session-Übergabe)

**PR #310:** reviewfertig, CI grün, 13 Restfehler alle extern (THO/MedDRA-TermServ). Review-Dossier: `review-dossier-pr310.md` + Artifact.
**Heute erledigt:** `7kl` (51 Ressourcen Affiliate-Lizenz) · `#288` umgesetzt (medicationReference 0..1, CC 0..1, keine Invariante nötig — GH kommentiert, chgl-PR erledigt) · `14w.30` ICD-O-Paket (4 Jahres-VS + Union-Haupt-VS + transitions-CM mit 55 kuratierten Umsteigern + IG-Seite 'ICD-O — Revisionen und Validierung') · ATC: 9 Jahres-VS versions-gepinnt (3.422 Einträge) + Terminologieseite ausgebaut (WHO vs ATC-DE, Transitions-Tabelle, Kuratierungs-Absatz) · wisp-Fix (bd dep läuft, 11 Kanten live, `ws6` zu) · dq9 vollständig aufgeklärt (Mechanik 1080 + Inhalt 55; Diff: examples-source/icdo/).
**Wiedereröffnet:** `2a4.3` — SUSHI emittiert Choice-Slicing-Intro by design nicht; compare-Abbruch = HL7-Tool-Strictness (Upstream-Optionen im Ticket).
**Nachmittag 2026-08-26 (autonome Fortsetzung):** `14w.9`✅(+dueTo-Slice+4 Beispiele+Drei-Achsen-Guidance) · `v9e`✅ · `14w.16`✅(#269: CMs waren systematisch falsch — 16 LA-Codes korrigiert; #236: Answer-VS+Bindings) · `14w.3`✅(CUP-Bundle inkl. Best-Of-Auflösung als Selbe-Ressource) · `ioj.1`+`ioj.2`✅→Epic `ioj` auto-zu (DQ-Specs an GH #292) · `14w.15` Kern (28er-Biomarker-VS, LOINC-SNOMED-Report, 5 Fehltreffer-Lektion; offen: Review+Binding-Ort).
**Offen/Nächstes:** Rückmeldungs-Entwürfe (K. Schmitt: Repro+Diff+Fix; S. Taupadel: compare-Einordnung) · BfArM-Aktualisierungsliste manuell gegen die 55 CM-Mappings · dq9/14w.30 nach CI-Bestätigung schließen · Review durch Thomas (Dossier Schritt 1: Beispiele) · Entscheidungen: #259 Gleason-SCT, 14w.19-Rest (#306) · OPS/ICD-10-GM-VS-Pins als Folgekandidaten des Musters.
**Abend 2026-08-26 (zweite autonome Runde):** `14w.15`-Umbau nach User-Entscheid: Biomarker-Codes auf neue IG-Seite `Biomarker-Tumormarker-LOINC` verlagert, VS aus Build entfernt, 4 falsche Snowstorm-Anker aussortiert (16/28 belastbar) · `14w.25`✅ KDL-VS (45 TermServ-verifizierte Codes, deprecated raus) + Folgeticket `0mm` (KDL→SCT/LOINC-Map; DVMD-CR = User-Entscheid) · `br7`✅ PlantUML-CI repariert (apt=1.2020.2 → jar-Pin 1.2025.10; 2 Diagramm-Syntaxfehler in 06_Histologie: Map→map, Vorwärtsverweis) · `14w.18`✅ Toronto-Seite (Tier-Modell, Übergangsweg Weitere_Klassifikationen, GH #205 kommentiert) · `2a4.8`✅ (topics 2025 DE/EN, Such-Beispiele ×3 Seiten, Typos; Nebenbefund → Ticket `c9e` Doppel-topic StrahlentherapieProcedure) · `a5l`: fertiger Upstream-NPE-Issue-Entwurf (org.hl7.fhir.core) in Ticket-Notizen, wartet auf Go.
