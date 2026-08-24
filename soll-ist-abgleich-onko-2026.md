# Soll-Ist-Abgleich Onko 2026 — Ballot ↔ GitHub ↔ beads

> **Zweck:** Drei-Wege-Abgleich der offenen Arbeit über alle Tracking-Quellen.
> **Quellen:** HL7-DE Ballotierungsportal (HDB-Jira, Snapshot `ballot-integration-review-2026.md`, 2026-07-15) · GitHub Issues (158 gesamt / 58 offen) · beads (10, remote-DB gebootstrapt).

## Executive Summary

| Kennzahl | Wert |
|----------|------|
| HDB-Ballot-Issues (non-Done, reviewed) | **39** |
| davon ✅ integriert / 🟡 partiell / ❌ offen / ⚪ n.a. | 7 / 17 / 11 / 4 |
| **HDB OHNE GitHub-Issue** (Tracking-Lücke) | **18** |
| Offene GitHub-Issues OHNE HDB-Bezug (ballot-unabhängig) | **40** |
| beads (bestehend) | **10** (5 = PRO-CTCAE-Epic ↔ #281, 5 = techn. Findings) |

### Kernbefunde
1. **Größte Lücke — SNOMED-ConceptMaps:** 8 der 18 ungetrackten HDB-Issues (396, 465, 467, 469, 471, 472, 473, 696) betreffen dieselbe CM-Dateimenge → im Ballot-Plan als **WU-1** gebündelt. Kein einziges davon hat ein GitHub-Issue. Höchste Hebelwirkung.
2. **beads ≠ Ballot:** Die 10 bestehenden beads decken **kein** HDB-Ballot-Issue ab — sie tracken PRO-CTCAE-Nebenwirkungen (↔ GitHub #281/#154/#170-172) und 4 technische SearchParameter/CapabilityStatement-Findings, die weder in HDB noch (teils) in GitHub stehen.
3. **GitHub-Übermenge:** 40 offene GitHub-Issues sind ballot-unabhängig (Mapping-Support-Serie #291-296, Terminologie-Automatisierung #282-284, Prostata #259-265, v2027-Backlog). Diese laufen parallel zur Ballot-Nacharbeit.
4. **Doppel-Tracking-Risiko:** GitHub #281 (Masterkatalog Nebenwirkungen) und das beads-Epic `1yu` beschreiben dieselbe Arbeit — sollten explizit verknüpft werden.

---

# Soll-Ist-Abgleich Onko 2026 — Ballot (HDB) ↔ GitHub ↔ beads

_Generiert: 9413c25e · Ballot-Snapshot: ballot-integration-review-2026.md (2026-07-15) · 39 HDB-Issues · 158 GitHub-Issues (alle) · 10 beads_

## A. Drei-Wege-Matrix (39 HDB-Ballot-Issues)

Status aus Ballot-Review: ✅ integriert · 🟡 partiell · ❌ offen · ⚪ nicht repo-actionable

| HDB | Kurz | Ballot-Status | Eff | GitHub-Issue(s) | Lücke |
|-----|------|--------------|-----|-----------------|-------|
| 358 | Szenarien überarbeiten + Sequenzdiagra | ❌ | L | — | ⚠️ KEIN GitHub-Issue |
| 361 | Profile-Beziehungen; `PrimaerDiagnose` | 🟡 | M | — | ⚠️ KEIN GitHub-Issue |
| 396 | Oligometastatic postkoordination (MRCM | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 413 | Internationale Codes (SNOMED/LOINC) in | 🟡 | L | — | ⚠️ KEIN GitHub-Issue |
| 417 | Diagnosesicherung ↔ Condition.verifica | ✅ | – | — | — (erledigt) |
| 465 | Therapie-Ende-Grund SCT mapping (R/W/A | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 467 | Diagnosesicherung 7.3 (Autopsie) → 373 | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 469 | Strahlentherapie Applikationsart SCT m | 🟡 | M | — | ⚠️ KEIN GitHub-Issue |
| 471 | Strahlenart Tb-161 → 89457008 | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 472 | Zielgebiet: 74964007 → body-structure  | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 473 | Verlauf Primärtumor R → 263855007 | ❌ | S | — | ⚠️ KEIN GitHub-Issue |
| 487 | Container issue "Kommentierung L. Gräß | ⚪ | – | — | kein Code (Klärung/extern) |
| 627 | ATC post-hoc: mark + require coding.ve | 🟡 | M | — | ⚠️ KEIN GitHub-Issue |
| 628 | UNII: Dinatriumfolinat ✅ / G-CSF ❌ | 🟡 | S | — | ⚠️ KEIN GitHub-Issue |
| 671 | Bundles: alle tumorcharakterisierenden | 🟡 | L | — | ⚠️ KEIN GitHub-Issue |
| 672 | TNM Binding AJCC vs UICC (review task) | ✅/⚪ | S | #242(O) | — (erledigt) |
| 675 | Prostata Modul (Gleason, ClavienDindo, | 🟡 | S/M | — | ⚠️ KEIN GitHub-Issue |
| 676 | Mamma Modul (extra OP profile; Markier | ✅ | S | #241(O) | — (erledigt) |
| 677 | TNM MINT-Lesion/Bildgebung validation | ⚪ | – | — | kein Code (Klärung/extern) |
| 678 | Erstdiagnose Evidenz: List vs Conditio | ⚪ | S/M | #240(O) | kein Code (Klärung/extern) |
| 679 | Technical IG feedback (9 sub-points) | 🟡/❌ | S–M | #239(O) | getrackt |
| 680 | Minor technical IG issues (4 sub-point | 🟡/❌ | S | #239(O) | getrackt |
| 683 | Standard laterality extension statt cu | ❌ | L | — | ⚠️ KEIN GitHub-Issue |
| 688 | PSA-Profil (ein Profil, mehrere Codes) | ✅ | – | #237(O) | — (erledigt) |
| 689 | Karnofsky als Quantity (+ECOG refRange | 🟡 | M | #236(O) | getrackt |
| 690 | Observation.method → Patho-Untersuchun | 🟡 | M | — | ⚠️ KEIN GitHub-Issue |
| 691 | Mehr SNOMED in value-VS (nicht nur FIG | ✅ | M | — | — (erledigt) |
| 692 | Erstdiagnose vs Primärdiagnose vs Prim | ❌ | M | #235(O) | getrackt |
| 694 | Feststellungsdatum == Diagnosesicherun | ⚪ | S | — | kein Code (Klärung/extern) |
| 695 | Evidenz-List: Zweck + Beispiele + dup  | 🟡 | S | #229(O) | getrackt |
| 696 | ConceptMap source/targetUri (alle SNOM | ❌ | M | — | ⚠️ KEIN GitHub-Issue |
| 697 | source/targetUri TNM-CMs | ❌ | S | #228(O) | getrackt |
| 699 | TNM-Suffix Extension descriptions (ITC | 🟡 | S | #234(O) | getrackt |
| 703 | Inkonsistente SNOMED-Versionen (align) | 🟡 | M | #224(O) | getrackt |
| 709 | Binding + patternUri Konsistenz | 🟡 | S/M | — | ⚠️ KEIN GitHub-Issue |
| 711 | Nationale Vorarbeiten: GOLD-Text + oBD | ❌ | M | #216(C) #217(O) | getrackt |
| 712 | UML Genetische Variante ↔ Specimen lin | ✅ | S | #215(C) | — (erledigt) |
| 714 | Histologiedatum doppelt (Verlaufshisto | 🟡 | S/M | #233(O) | getrackt |
| 715 | Studienteilnahme / Modul Forschungsvor | ✅ | – | #232(O) | — (erledigt) |

## B. Lücke 1 — HDB-Issues OHNE GitHub-Issue (18)

Diese Ballot-Punkte sind **nicht** als GitHub-Issue getrackt → Kandidaten für neue beads.

| HDB | Kurz | Status | Eff | Datei(en) |
|-----|------|--------|-----|-----------|
| 358 | Szenarien überarbeiten + Sequenzdiagramm | ❌ | L | Szenarien page + new puml |
| 361 | Profile-Beziehungen; `PrimaerDiagnose` phant | 🟡 | M | `MII_Onko_UML_Relations_v2.pu`, Profile-Be |
| 396 | Oligometastatic postkoordination (MRCM-inval | ❌ | S | `mii-cm-onko-intention-sct.fsh` |
| 413 | Internationale Codes (SNOMED/LOINC) in VS er | 🟡 | L | ~85 `mii-vs-onko-*` VS (curation) |
| 465 | Therapie-Ende-Grund SCT mapping (R/W/A) | ❌ | S | `mii-cm-onko-therapie-ende-sct.fsh` |
| 467 | Diagnosesicherung 7.3 (Autopsie) → 373800009 | ❌ | S | `mii-cm-onko-primaertumor-diagnosesicherun |
| 469 | Strahlentherapie Applikationsart SCT mapping | 🟡 | M | `mii-cm-onko-strahlentherapie-applikations |
| 471 | Strahlenart Tb-161 → 89457008 | ❌ | S | `mii-cm-onko-strahlentherapie-strahlenart- |
| 472 | Zielgebiet: 74964007 → body-structure codes | ❌ | S | `mii-cm-onko-strahlentherapie-zielgebiet-s |
| 473 | Verlauf Primärtumor R → 263855007 | ❌ | S | `mii-cm-onko-verlauf-primaertumor-sct.fsh` |
| 627 | ATC post-hoc: mark + require coding.version | 🟡 | M | `mii-pr-onko-systemische-therapie-medikati |
| 628 | UNII: Dinatriumfolinat ✅ / G-CSF ❌ | 🟡 | S | `mii-vs-onko-systemische-therapie-substanz |
| 671 | Bundles: alle tumorcharakterisierenden Profi | 🟡 | L | organ-module `mii-exa-*-bundle.fsh` |
| 675 | Prostata Modul (Gleason, ClavienDindo, PSA)  | 🟡 | S/M | `mii-pr-onko-prostata-clavien-dindo.fsh` ( |
| 683 | Standard laterality extension statt custom | ❌ | L | Seitenlokalisation across ~6 files |
| 690 | Observation.method → Patho-Untersuchung | 🟡 | M | weitere-klassifikationen + tnm-klassifikat |
| 696 | ConceptMap source/targetUri (alle SNOMED CMs | ❌ | M | ~25 `mii-cm-onko-*-sct.fsh` |
| 709 | Binding + patternUri Konsistenz | 🟡 | S/M | `mii-pr-onko-strahlentherapie.fsh`, `mii-p |

## C. Lücke 2 — Offene GitHub-Issues OHNE HDB-Bezug (ballot-unabhängig)

40 offene GitHub-Issues ohne Ballot-Bezug.

| # | Titel | Labels |
|---|-------|--------|
| 301 | Konsistentes Casing bei StellungZurOp |  |
| 298 | Diagnose Extension `morphology-behavior-icdo3` auf 0..* stat |  |
| 297 | Weitere Klassifikationen: FIGO-Substages (und andere) ohne c |  |
| 296 | Mapping-Support: Entitätsspezifische TNM-Regeln (UICC + S3-L | enhancement,Mapping-Support |
| 295 | Mapping-Support: Plattform-§65c Confluence-Monitoring | Mapping-Support |
| 294 | Mapping-Support: infer_tnm_symbols/ Inference-Library | enhancement,Mapping-Support |
| 292 | Mapping-Support: MII-Onko Data-Quality CQL-Library | enhancement,Mapping-Support |
| 291 | Mapping-Support: TNM SNOMED-CT Enrichment für ETL-Pipelines | enhancement,v2026,Mapping-Support |
| 290 | Fix Verlauf Table im IG |  |
| 288 | Aufweichen der Cardinality auf MedicationStatement.medicatio |  |
| 287 | Bug: SUSHI --snapshot crash + Firely Bake differential conta | bug |
| 284 | chore: Monatliches Monitoring BfArM NOA für neue Onkologika- | enhancement |
| 283 | feat: Multi-Source Drug Terminology — EMA SMS + EMA PMS + FD | enhancement |
| 282 | feat: BfArM Infothek Onkologie — ATC & UNII Code Cross-Refer | enhancement |
| 281 | Masterkatalog Nebenwirkungen: MedDRA→SNOMED Mapping + PRO-CT |  |
| 280 | Link im IG funktioniert nicht |  |
| 279 | Idee: CompartmentDefinition für Condition (Diagnose Primärtu |  |
| 278 | Bug: Darstellung von performedDateTime slice und end element |  |
| 277 | Bug: StellungZurOp CodeSystem URI im Snapshot von Strahlenth |  |
| 273 | Angleichern von Tod-Observations über Modul Vitalstatus und  |  |
| 272 | TNM: SNOMED CT prä-koordinierte UICC Qualifier Values als op | enhancement |
| 271 | TNM String Generator - Referenzimplementierung (analog Dosie | enhancement |
| 269 | Answer List codes in `Mapping oBDS Karnofsky zu LOINC` |  |
| 265 | Observation.value[x] in MII_PR_Onko_Prostata_Anzahl_Stanzen | bug,approved |
| 262 | Tumorkonferenz: The discriminator path 'reference.resolve()' | bug,approved,debugging |
| 261 | Gleason Score ValueSet: Unterstützung für Scores < 6 und nur | enhancement,approved |
| 260 | MII_PR_Onko_Prostata_Gleason_Grade_Group: 'Primär' aus Titel | bug,approved |
| 259 | MII_PR_Onko_Prostata_Gleason_Grade_Group: SCT-Slice für code | enhancement,question |
| 246 | Implement the Lab Values for diagnosis and monoitirong for c | enhancement,v2027 |
| 231 | Sprechenderer CodeSystem-Name für Tod-tumorbedingt | enhancement,v2027 |
| 218 | Testen, ob in einer Onko-Medikation zwei ATC-Codes unterschi | v2027,todo |
| 213 | Falsches Beispiel im Implementation Guide unter Systemische  | bug,documentation,approved |
| 205 | Toronto TNM for Pediatric Cancer ? Was sind die Unterschiede | question |
| 196 | Onkologie Module example patient missing | documentation,enhancement,todo |
| 189 | TNM-Repräsentation an Minimal-Beispielverlauf klären | documentation,enhancement,v2027,todo |
| 181 | Geplante Changes für 2026 Version | enhancement,v2026 |
| 172 | Slicing auf CTCAE wording und MEddra nummer | enhancement,v2026,todo |
| 171 | CTCAE Code System vollständig abbilden | enhancement,v2027,todo |
| 170 | Invariante auf AdverseEvents | enhancement,v2027,todo |
| 154 | Deutsche CTCAE-Liste als CodeSystem hinterlegen | enhancement,question,v2027,todo |

## D. beads (10) — Zuordnung

| bead | P | Typ | Titel | ↔ GitHub / HDB |
|------|---|-----|-------|----------------|
| qg7 | P1 | task | ConceptMap MedDRA→SNOMED CT für PRO-CTCA | #281 (Subtask) |
| 9fm | P1 | task | Recherche & Extraktion der 78 PRO-CTCAE  | #281 (Subtask) |
| 1yu | P1 | epic | Masterkatalog Nebenwirkungen: MedDRA→SNO | #281 (Masterkatalog NW); HDB — |
| v9e | P2 | task | AdverseEvent-Profil um SNOMED-Slice für  | #281 (Subtask) |
| ccj | P2 | task | ValueSet mii-vs-onko-nebenwirkung-art mi | #281 (Subtask) |
| 3bj | P2 | task | Upstream: SearchParameter condition-asse | — (net-new, Upstream Meta) |
| rvk | P2 | bug | Bug: TNM N/M cppraefix SearchParameter e | — (net-new; nah #278?) |
| 1sz | P2 | bug | Bug: CapabilityStatement referenziert Mo | — (net-new; nah #277?) |
| qst | P3 | task | Beispiel-Instanzen für PRO-CTCAE basiert | #281 (Subtask) |
| eyg | P3 | task | Hygiene: Morphologie-SearchParameter exp | — (net-new Hygiene) |
## E. Vorschlag — neue beads für die 18 Tracking-Lücken

Gruppiert nach Work-Units aus dem Ballot-Delegationsplan (§4). Diese beads würden die Ballot-Nacharbeit trackbar machen (noch **nicht angelegt** — dieser Durchlauf liefert nur die Matrix).

| Vorschlag-bead | HDB abgedeckt | Typ | Eff | Kern-Dateien |
|----------------|---------------|-----|-----|--------------|
| WU-1 · SNOMED-ConceptMaps Ziel-Codes + source/targetUri + Versions-Align | 396, 465, 467, 471, 472, 473, 469, 696 | epic+tasks | L | alle `mii-cm-onko-*-sct.fsh` |
| WU-4 · Prostata ClavienDindo Label-Bug | 675 | bug | S | `mii-pr-onko-prostata-clavien-dindo.fsh` |
| WU-5 · UML PrimaerDiagnose-Phantomnode | 361 | bug | M | `MII_Onko_UML_Relations_v2.pu` |
| Szenarien + Sequenzdiagramm | 358 | task | L | Szenarien-Page + neue puml |
| Internationale Codes (SNOMED/LOINC) in ~85 VS | 413 | task | L | `mii-vs-onko-*` (Kuratierung) |
| ATC post-hoc coding.version | 627 | task | M | `mii-pr-onko-systemische-therapie-medikation.fsh` |
| UNII G-CSF (Terminologie-Klärung G-CSF≠GM-CSF) | 628 | task | S | `mii-vs-onko-...-substanzen-unii.fsh` |
| Tumorakte-Bundles-Policy | 671 | task | L | organ-module `mii-exa-*-bundle.fsh` |
| Standard-laterality-Extension-Refactor | 683 | task | L | ~6 Seitenlokalisation-Dateien |
| Observation.method → Patho-Modul-Link | 690 | task | M | weitere-klassifikationen + tnm-klassifikation |
| Binding + patternUri Konsistenz | 709 | task | S/M | strahlentherapie + operation |

**Hinweis:** HDB-679/680 (technische IG-Sammel-Issues) sind via GitHub #239 getrackt, aber mit vielen offenen 🟡/❌ Sub-Punkten (§3) — Kandidat für Aufsplittung in beads-Subtasks statt eines Sammel-Issues.

### Empfohlene nächste Schritte
1. beads-Epic **„Ballot-2026 Nacharbeit"** anlegen, WU-1..WU-6 als Subtasks (deckt 14 der 18 Lücken).
2. beads-Epic `1yu` explizit mit GitHub #281 verknüpfen (Doppel-Tracking auflösen).
3. Für die 4 net-new beads (3bj, rvk, 1sz, eyg) prüfen, ob GitHub-Issues #277/#278 dieselben Bugs sind → ggf. verknüpfen oder GitHub schließen.
