# Design: Backlog-Triage & Epic-Struktur MII Onkologie

**Status:** DRAFT — Entscheidungspunkte offen (D1–D6)
**Datum:** 2026-07-28
**Quellen:** `soll-ist-abgleich-onko-2026.md` (Drei-Wege-Abgleich) · GitHub Issues (55 offen) · beads (12, inkl. 2 neue Epics) · Ballot-Snapshot `ballot-integration-review-2026.md`

---

## 1. Kontext & Problem

Die offene Arbeit ist über drei Systeme verteilt und nur teilweise verknüpft:

| Quelle | Offen | Getrackt via |
|--------|-------|--------------|
| HDB-Ballot (Jira) | 39 non-Done | 21 via GitHub, **18 ungetrackt** |
| GitHub Issues | 55 offen | Labels unvollständig: nur 14×`v2027`, 3×`v2026` |
| beads | 12 | 3 Epics (PRO-CTCAE `1yu`, Ballot `ehq`, 2027 `14w`) + 9 Tasks |

**Kernproblem dieses Dokuments:** 30 der 55 offenen GitHub-Issues haben **weder HDB-Bezug noch Release-Label** — sie hängen in keinem Epic und keiner Roadmap. Das 2027-Epic (`14w`) wurde bisher nur aus den `v2027`-gelabelten Issues gebaut und ist damit unvollständig.

## 2. Ziele / Nicht-Ziele

**Ziele:**
- Jedes offene GitHub-Issue ist genau einem Track zugeordnet (Ballot-Nacharbeit · 2026-Maintenance · 2027-Features · Mapping-Support · Klärung/Schließen)
- beads-Epics spiegeln die Tracks vollständig
- Entscheidungen (SNOMED-Version, CM-won't-fix, …) sind explizit dokumentiert

**Nicht-Ziele:**
- Keine inhaltliche Bearbeitung der Issues selbst
- Kein Release-Bau (separater Strang)
- Keine Jira/HDB-Rückmeldung (folgt nach Triage)

## 3. Ist-Klassifikation aller 55 offenen GitHub-Issues

### 3.1 Ballot-Track (HDB-Bezug): 15
#242, #241, #240, #239, #237, #236, #235, #234, #233, #232, #229, #228, #226, #224, #217
→ gehören logisch zum Ballot-Epic `ehq` (bzw. sind dort referenziert; 6 davon tragen zusätzlich `v2027`)

### 3.2 Label `v2027`: 7 (ohne HDB)
#246, #231, #218, #189, #171, #170, #154 → im 2027-Epic `14w` erfasst ✓

### 3.3 Label `v2026`: 3
#291 (Mapping-Support TNM-Enrichment), #181 (Geplante Changes 2026 — Meta-Issue), #172 (CTCAE Slicing)

### 3.4 OHNE Label/Track: 30 ⚠️ — Vorschlag je Issue

**(a) Bug-Block → „2026 Maintenance" (10):**

| # | Titel (kurz) | Labels |
|---|---|---|
| 301 | Casing StellungZurOp | – |
| 290 | Verlauf-Table im IG kaputt | – |
| 287 | SUSHI --snapshot crash / Bake-Kontamination | bug |
| 280 | Link im IG funktioniert nicht | – |
| 278 | performedDateTime slice Darstellung Strahlenther. | – |
| 277 | StellungZurOp CS-URI im Snapshot veraltet | – |
| 265 | Prostata Anzahl_Stanzen value[x] | bug, **approved** |
| 262 | Tumorkonferenz discriminator resolve() | bug, **approved** |
| 260 | Gleason Grade Group „Primär" im Titel | bug, **approved** |
| 213 | Falsches Beispiel Systemische Therapie | bug, **approved** |

**(b) 2027-Feature-Kandidaten (12):**

| # | Titel (kurz) | Anmerkung |
|---|---|---|
| 298 | morphology-behavior-icdo3 → 0..* | Profiländerung |
| 297 | FIGO-Substages ohne codierbaren Wert | Profiländerung |
| 288 | Cardinality MedicationStatement aufweichen | Profiländerung |
| ~~279~~ | ~~CompartmentDefinition Condition als Hub~~ | → **Post-Ballot-QM** (D6a: R4-nicht-konform, Reframe auf GraphDefinition/OperationDefinition) |
| 273 | Tod-Observations ↔ Vitalstatus/VRDR | Cross-Modul |
| 272 | TNM prä-koordinierte UICC Qualifier (Dual-Coding) | Terminologie |
| 271 | TNM String Generator Referenzimplementierung | Begleitmaterial |
| 269 | Karnofsky→LOINC Answer-List-Codes | Terminologie |
| 261 | Gleason < 6 + nur ScoreErgebnis | **approved** enhancement |
| 259 | Gleason SCT-Slice verpflichten | question |
| 196 | Example Patient fehlt | Doku/Beispiele |
| ~~205~~ | ~~Toronto TNM Pediatric — Unterschiede?~~ | → **post-2027/Icebox** (D6b: braucht Päd-Onko-Kooperation) |

**(c) Mapping-Support-/Tooling-Serie (7):**
#296, #295, #294, #292 (Label `Mapping-Support`) · #284, #283, #282 (Drug-Terminology-Automatisierung) · [#291 hat schon v2026] · #281 ≙ beads-Epic `1yu`

**(d) Meta:** #181 „Geplante Changes 2026" — Sammel-/Tracking-Issue, kein Arbeitspaket.

## 4. Vorgeschlagene Ziel-Struktur (Tracks ↔ beads)

```
Track 1  Ballot-2026 Nacharbeit   → Epic ehq  (P1)   18 HDB-Lücken + 15 HDB-GitHub-Issues
Track 2  2026 Maintenance/Bugs    → Epic NEU? (P1)   10 Bugs aus 3.4a (4 davon approved)
Track 3  2027 Features            → Epic 14w  (P2)   7 v2027-Issues + 12 Kandidaten aus 3.4b
Track 4  Mapping-Support/Tooling  → Epic NEU? (P2)   7 Issues aus 3.4c (+ #291)
Track 5  PRO-CTCAE Masterkatalog  → Epic 1yu  (P1)   bestehend, ↔ #281
```

## 5. Entscheidungspunkte

- **D1 — 2027-Epic-Umfang:** Die 12 Kandidaten aus 3.4b ins Epic `14w` aufnehmen (und auf GitHub mit `v2027` labeln)?
- **D2 — Maintenance-Epic:** Eigenes Epic „2026 Maintenance" für den Bug-Block (3.4a) anlegen? Alternativ: Bugs bleiben epic-los und werden ad hoc gefixt.
- **D3 — Mapping-Support:** Eigenes Epic oder bewusst außerhalb der IG-Roadmap lassen (eigener Werkzeug-Track)?
- **D4 — ConceptMaps Kat.2:** HDB-465 (Therapie-Ende R/W/A/F) + HDB-396 (Oligometastasen) offiziell als **won't-fix mit Begründung** an Ballot zurückmelden? (Begründung: bewusste `#unmatched` wg. SNOMED-Postkoordinations-Grenzen, im Repo dokumentiert.)
- **D5 — SNOMED-Version (HDB-703/#224):** ✅ ENTSCHIEDEN — Abgleich gegen die **normative Version auf dem SU-TermServ** (`ontoserver.mii-termserv.de`, ggf. dt. Edition Juli 2026). Server verlangt Client-Zertifikat → als Task ins Ballot-Epic, ausführbar sobald Zert eingerichtet.
- **D6a — #279 CompartmentDefinition:** ✅ ENTSCHIEDEN — **Post-Ballot-QM**, nicht 2027-Feature. Technischer Befund: Custom-Compartment `Condition` ist in R4 **nicht konform** (`CompartmentDefinition.code` required-Binding auf Patient|Encounter|RelatedPerson|Practitioner|Device; `$everything` nur Patient/Encounter). Konforme Alternativen: (1) `GraphDefinition` mit Condition-Fokus, (2) custom `OperationDefinition` `$tumor-everything`, (3) IG-Doku-Seite mit Referenzpfad-Matrix. Issue #279 entsprechend umformulieren.
- **D6b — #205 Toronto TNM:** ✅ ENTSCHIEDEN — **post-2027 / Icebox**. Braucht Kooperation mit der Pädiatrischen Onkologie, die aktuell nicht besteht. Bleibt offen, gehört in kein Epic. **Option:** als **Kommentierungsfrage** in die nächste HL7-DE-Kommentierungsrunde einbringen („Besteht Bedarf an Toronto-TNM-Abbildung für pädiatrische Tumoren im KDS Onkologie?") → so klärt die Community die Relevanz, ohne dass wir Päd-Onko-Expertise vorhalten müssen.

## 6. Umsetzung nach Entscheidung

1. Epics gemäß D1–D3 anlegen/erweitern (beads), GitHub-Labels nachziehen
2. `ehq`/`14w`-Beschreibungen aktualisieren (Issue-Listen vervollständigen)
3. D4/D5-Entscheidungen in `ehq` als Design-Notiz festhalten; ggf. HDB-Rückmeldung formulieren
4. beads pushen (`bd dolt push`), Dokumente committen
