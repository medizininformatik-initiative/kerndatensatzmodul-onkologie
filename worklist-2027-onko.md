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
2. GitHub: #154/#170 schließen mit Verweis auf Commit `a398c6b1`; #302 labeln; Issues für `14w.14` (IG Publisher) + `14w.17` (Bildbefund) anlegen
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
