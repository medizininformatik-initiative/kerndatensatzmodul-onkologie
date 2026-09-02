# Page-structure advice

**This report PROPOSES and never edits a module.** It reads the source and target repositories read-only; its only writes are this report and the page-map v2 TSV (`--map`) - the map is the PRIMARY output and the contract step 5 consumes, this report is its rendering. Every routing row below is the branch the MEASUREMENTS support - a human (or the skill at step 5) decides and applies it.

| Input | Value |
| --- | --- |
| source repo | `/private/tmp/claude-501/-Users-thome-code-fhir-profiling-kerndatensatzmodul-onkologie/62d6b329-4adb-4f6b-9493-1bc8c7c062b9/scratchpad/onko-source-unmigrated` |
| target repo | `.` |
| routing table | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/.claude/skills/mii-ig-migration/references/routing-table.tsv` (17 patterns) |
| Gate 0 preflight | `/Users/thome/code/fhir-profiling/kerndatensatzmodul-onkologie/migration-log/preflight-analysis.json` |
| artefact census | fsh-generated/resources (614 resources; cross-checked by Gate 0's generated_crosscheck) |
| page map | `migration-log/page-map.tsv` |
| generated | 2026-08-27T06:10:00Z |
| script | `page-structure-advice.py` v1.3.0 |

Contract limits in force: menu total <= 33, dropdown children <= 10, top level <= 8, menu depth <= 2; size gate at > 2500 words, > 4 merged sources, or ANY repeated heading title; hub at >= 3 children.

## 1. Source page tree

The tree is taken from the FIRST of four inputs that yields pages: **(a)** the `pages:` block of the source `sushi-config.yaml`, **(b)** the authoritative Simplifier guide tree under `implementation-guides/` (spec 5.1a), **(c)** a flat count of `input/pagecontent/*.md`.

**Input used: (b) the Simplifier guide tree `implementation-guides/ImplementationGuide-2027.x-DE`, walked from its `toc.yaml`.**

### 1.0 Simplifier guide trees found

Every tree under `implementation-guides/` is listed - the choice is never made silently. Dispositions follow spec 5.1a: #1 authoritative, #2 parallel-language harvest seed, #3 historical/shared retained, #4 unrecognized.

| Guide tree | Title | Version (dir name) | Version (guide.yaml) | Lang | `*.page.md` on disk | Disposition |
| --- | --- | --- | --- | --- | ---: | --- |
| `ImplementationGuide-2025.x-DE` | MII IG Onkologie DE v2025 | 2025.x | 2025.1.0 | DE | 105 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `ImplementationGuide-2025.x-EN` | MII IG Onkologie EN v2025 | 2025.x | 2025.0.0 | EN | 102 | parallel-language tree - harvest seed for the translation skill, not a machine translation (5.1a #2); **STALE** (2025.x vs 2027.x) - every harvested page needs a per-page `TODO:REVIEW` naming both versions |
| `ImplementationGuide-2026.x-DE` | Medizininformatik Initiative - ImplementationGuide - Onkologie v2026 | 2026.x | 2026.0.3 | DE | 149 | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `ImplementationGuide-2027.x-DE` | Medizininformatik Initiative - ImplementationGuide - Onkologie v2026 | 2027.x | 2026.0.3 | DE | 155 | **AUTHORITATIVE** - steps 5.4/5.5 operate on this tree |

**Chosen: `ImplementationGuide-2027.x-DE`** - HUMAN OVERRIDE: --guide-tree ImplementationGuide-2027.x-DE (the spec 5.1a ranking below was not applied).

The module's narrative language read from `sushi-config.yaml` `language:` is **DE**.

**A human can override this choice**: re-run with `--guide-tree <directory name>`. The ranking above is evidence, not a verdict - confirm it against the rendered IG and record it in the inventory (Gate B reviews it).

### 1.1 Depth histogram

Walked from `implementation-guides/ImplementationGuide-2027.x-DE/toc.yaml`: an entry whose `filename` ends in `.page.md` is a page, any other `filename` is a sub-directory holding its own `toc.yaml`. A sub-directory is a LEVEL, not a page, so every page of one directory shares one level (that is how Simplifier renders a folder), and the levels are shifted so the shallowest page sits at level 1 - this guide's root `toc.yaml` lists only a folder, which adds no page level. Routing still needs a page parent, so each directory is represented by its `Index.page.md` and its remaining pages plus its sub-folders' representatives become that page's children; a parent may therefore share its children's level.

| Level | Pages | Share |
| --- | ---: | ---: |
| 1 | 9 | 6% |
| 2 | 14 | 9% |
| 3 | 30 | 19% |
| 4 | 70 | 45% |
| 5 | 32 | 21% |
| **total** | **155** | 100% |

Maximum depth used: **5**. Total words across the 155 source pages: **58655**. Pages in `input/pagecontent/`: **1**.

### 1.1a Structural findings in the source tree

Reported, never silently absorbed - each one is a page the migration would otherwise lose or invent.

- `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/toc.yaml` lists `Index.page.md`, but the **page file does not exist** - the entry is dangling and produced no page.
- `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/toc.yaml` lists `Residualstatus.page.md`, but the **page file does not exist** - the entry is dangling and produced no page.
- `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/FHIR-Profil--Ressourcentyp.page.md` exists on disk but is **not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md` exists on disk but is **not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md` exists on disk but is **not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md` exists on disk but is **not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.
- `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Studienteilnahme.page.md` exists on disk but is **not listed in MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/toc.yaml** - it is in the tree below, flagged, so the migration cannot lose it.

### 1.2 Parent-child tree

```
`- Index  `MIIIGModulOnkologie/Index.page.md`
   |- Beschreibung Modul Onkologie  `MIIIGModulOnkologie/BeschreibungModulOnko.page.md`
   |- Kontext im Gesamtprojekt / Bezüge zu anderen Modulen  `MIIIGModulOnkologie/KontextimGesamtprojektBezgezuanderenModulen.page.md`
   |- KDL-Dokumentklassen im onkologischen Behandlungspfad  `MIIIGModulOnkologie/KDL-Dokumentklassen.page.md`
   |- Referenzen  `MIIIGModulOnkologie/Referenzen.page.md`
   |- Abweichungen zum oBDS  `MIIIGModulOnkologie/Abweichungen-zum-oBDS.page.md`
   |- Bezug zu nationalen Standards  `MIIIGModulOnkologie/BezugZuNationalenStandards.page.md`
   |- Bezug zu internationalen Standards  `MIIIGModulOnkologie/BezugZuInternationalenStandards.page.md`
   |- Release Notes  `MIIIGModulOnkologie/Release-Notes.page.md`
   |- Index  `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md`
   |  |- Beschreibung von Szenarien für die Anwendung der Module  `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md`
   |  |- Datensätze inkl. Beschreibungen  `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md`
   |  `- UML  `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/UML.page.md`
   `- Index  `MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md`
      |- Profile - Inhalt und Vererbung  `MIIIGModulOnkologie/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md`
      |- Profile - Beziehungen und Referenzen  `MIIIGModulOnkologie/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md`
      |- Verwendung von Extensions  `MIIIGModulOnkologie/TechnischeImplementierung/Verwendung-von-Extensions.page.md`
      |- CapabilityStatement  `MIIIGModulOnkologie/TechnischeImplementierung/CapabilityStatement.page.md`
      |- Terminologien  `MIIIGModulOnkologie/TechnischeImplementierung/Terminologien.page.md`
      |- ICD-O — Revisionen und Validierung  `MIIIGModulOnkologie/TechnischeImplementierung/ICD-O-Terminologie.page.md`
      |- Tumormarker — kuratierte LOINC-Codes  `MIIIGModulOnkologie/TechnischeImplementierung/Biomarker-Tumormarker-LOINC.page.md`
      |- Toronto-Klassifikation (pädiatrische Onkologie)  `MIIIGModulOnkologie/TechnischeImplementierung/Toronto-Klassifikation.page.md`
      |- QA und Validierung  `MIIIGModulOnkologie/TechnischeImplementierung/QA-Validierung.page.md`
      |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md`
      |  |- FHIR-Profil--Ressourcentyp  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/FHIR-Profil--Ressourcentyp.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Index.page.md`
      |  |  |- Diagnose: Condition  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Diagnose-Condition.page.md`
      |  |  |- Frühere Tumorerkrankung: Condition  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Fruehere-Tumorerkrankung-Condition.page.md`
      |  |  |- Extension: ICD-O-3 Morphologie  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Extension-ICD-O-3-Morphologie.page.md`
      |  |  `- Erstdiagnose Evidenz: List  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Erstdiagnose-Evidenz-List.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Index.page.md`
      |  |  |- Specimen: Specimen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Specimen-Specimen.page.md`
      |  |  |- Lymphknotenuntersuchung : Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Lymphknotenuntersuchung-Observation.page.md`
      |  |  |- Histologiebefund: DiagnosticReport  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md`
      |  |  |- Grading: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Grading-Observation.page.md`
      |  |  |- Tumorgröße: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Tumorgroesse-Observation.page.md`
      |  |  `- Verlaufshistologie: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Verlaufshistologie-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md`
      |  |  |- TNM-Klassifikation: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Klassifikation-Observation.page.md`
      |  |  |- TNM-Kategorie-T: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-T-Observation.page.md`
      |  |  |- TNM-Kategorien-N: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-N-Observation.page.md`
      |  |  |- TNM-Kategorien-M: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-M-Observation.page.md`
      |  |  |- Extension: TNM-Prefix(c/p)  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Extension-TNM-Prefix-c-p.page.md`
      |  |  |- TNM-Symbol-a: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-a-Observation.page.md`
      |  |  |- TNM-Symbol-m: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-m-Observation.page.md`
      |  |  |- TNM-Kategorie-L: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-l-Observation.page.md`
      |  |  |- TNM-Kategorie-Pn: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-Pn-Observation.page.md`
      |  |  |- TNM-Symbol-r: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-r-Observation.page.md`
      |  |  |- TNM-Kategorie-S: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-S-Observation.page.md`
      |  |  |- TNM-Kategorie-V: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-V-Observation.page.md`
      |  |  |- TNM-Symbol-y: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-y-Observation.page.md`
      |  |  `- TNM-Breast-Cancer-Journey-Example  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Index.page.md`
      |  |  |- Weitere Klassifikationen: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Observation.page.md`
      |  |  `- Weitere Klassifikationen: Terminologien  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Index.page.md`
      |  |  |- Operation: Procedure  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Operation-Procedure.page.md`
      |  |  |- Extension: Intention  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Intention.page.md`
      |  |  `- Extension: Urgency  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Index.page.md`
      |  |  |- Strahlentherapie: Procedure  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md`
      |  |  |- Bestrahlungstherapie: Procedure  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md`
      |  |  |- Nuklearmedizinische Therapie: Procedure  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md`
      |  |  |- Extension: Intention  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Intention.page.md`
      |  |  |- Extension: Stellung  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Stellung.page.md`
      |  |  `- Extension: Bestrahlung  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Index.page.md`
      |  |  |- Systemische Therapie: Procedure  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md`
      |  |  |- Systemische Therapie: MedicationStatement  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md`
      |  |  `- Terminologien  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Index.page.md`
      |  |  `- Nebenwirkung: AdverseEvent  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Index.page.md`
      |  |  `- Residualstatus: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Residualstatus-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Index.page.md`
      |  |  `- Fernmetastasen: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Fernmetastasen-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Index.page.md`
      |  |  |- Allg. Leistungszustand ECOG: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-ECOG-Observation.page.md`
      |  |  |- Allg. Leistungszustand Karnofsky: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-Karnofsky-Observation.page.md`
      |  |  `- ASA-Klassifikation: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/ASA-Klassifikation-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Index.page.md`
      |  |  `- Verlauf: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Index.page.md`
      |  |  `- Tod: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Index.page.md`
      |  |  |- Tumorkonferenz: CarePlan  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-CarePlan.page.md`
      |  |  |- Therapieempfehlung Kombinationstherapie: RequestGroup  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md`
      |  |  |- Therapieempfehlung Medikation: MedicationRequest  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Medikation-MedicationRequest.page.md`
      |  |  |- Therapieempfehlung Operation: ServiceRequest  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Operation-ServiceRequest.page.md`
      |  |  `- Tumorkonferenz-Detailed-Recommendations-CarePlan  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md`
      |  |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Index.page.md`
      |  |  |- Genetische Variante:  Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md`
      |  |  `- Abbildung Variantentypen mit MolGen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/MolGen-Abbildung-Variantentypen.page.md`
      |  |- Studienteilnahme: Observation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md`
      |  `- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Index.page.md`
      |     |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md`
      |     |  |- Menopause Status  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md`
      |     |  |- Estrogen Rezeptorstatus  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md`
      |     |  |- Progesteron Rezeptorstatus  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md`
      |     |  |- Her2neu Status  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md`
      |     |  |- Präoperative Markierung  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md`
      |     |  |- Operation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md`
      |     |  `- Bundle Beispiel  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md`
      |     |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md`
      |     |  |- PSA-Wert  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md`
      |     |  |- Gleason Patterns  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md`
      |     |  |- Gleason Score und Grade Group  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md`
      |     |  |- Anzahl Stanzen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md`
      |     |  |- Anzahl positive Stanzen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md`
      |     |  |- Karzinom-Befall Stanze  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Karzinom-Befall-Stanze-Observation.page.md`
      |     |  `- Clavien-Dindo Komplikationen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md`
      |     |- Index  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md`
      |     |  |- Abstand Tumor zur Anokutanlinie  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md`
      |     |  |- Abstand zur Circumferellen Resektionsebene  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md`
      |     |  |- Abstand Resektionsrand Aboral  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md`
      |     |  |- MRT Mesorektale Faszie  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md`
      |     |  |- Anastomoseninsuffizienz  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md`
      |     |  |- Operation  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md`
      |     |  |- Specimen  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md`
      |     |  |- Stoma-Markierung  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md`
      |     |  `- Bundle Beispiel  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md`
      |     `- Übersicht Malignes Melanom  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md`
      |        |- Breslow-Tiefe  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md`
      |        |- Sicherheitsabstand  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Sicherheitsabstand-Observation.page.md`
      |        |- Ulzeration  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md`
      |        |- LDH  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md`
      |        `- Bundle Beispiel  `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md`
      `- Index  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md`
         |- Lokalisation Fernmetastasen  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Lokalisation-Fernmetastasen.page.md`
         |- Intention  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Intention.page.md`
         |- Seitenlokalisation  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Seitenlokalisation.page.md`
         |- Therapie Ende Grund  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Ende-Grund.page.md`
         |- Therapie Stellung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Stellung.page.md`
         |- Therapietyp  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapietyp.page.md`
         |- Primaertumor Diagnosesicherung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Primaertumor-Diagnosesicherung.page.md`
         |- Grading  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Grading.page.md`
         |- TNM klinisch  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-klinisch.page.md`
         |- TNM pathologisch  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-pathologisch.page.md`
         |- Allgemeiner Leistungszustand  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Allgemeiner-Leistungszustand.page.md`
         |- Operationskomplikation  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Operationskomplikation.page.md`
         |- Strahlentherapie - Strahleneinheit  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahleneinheit.page.md`
         |- Strahlentherapie - Applikationsart  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Applikationsart.page.md`
         |- Strahlentherapie - Boost  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Boost.page.md`
         |- Strahlentherapie - Strahlenart  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahlenart.page.md`
         |- Strahlentherapie - Zielgebiet  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Zielgebiet.page.md`
         |- Nebenwirkung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Nebenwirkung.page.md`
         |- Verlauf - Fernmetastasen  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Fernmetastasen.page.md`
         |- Verlauf - Gesamtbeurteilung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Gesamtbeurteilung.page.md`
         |- Verlauf - Lymphknoten  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Lymphknoten.page.md`
         |- Verlauf - Primaertumor  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Primaertumor.page.md`
         |- Therapieabweichung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieabweichung.page.md`
         |- Therapieplanung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieplanung.page.md`
         |- Tod  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Tod.page.md`
         |- Genetische Variante Ausprägung  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Genetische-Variante-Auspraegung.page.md`
         `- Studienteilnahme  `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Studienteilnahme.page.md`
```

## 2. Target page measurements

Words = whitespace tokens after removing HTML comments, table separator rows and the markup characters `>`, `|`, `*`, `_`, `` ` ``. Headings, list items, table cells and fenced code all count: the gate measures what the reader has to traverse. Repeated titles are compared case-sensitively; each repeat costs one publisher-appended anchor (`-2`, `-3`, ...). Merged sources are the distinct `<!-- source: X.md -->` section markers the migration itself left behind.

| Page | Words | h2 | h3 | h4 | other h | Repeated titles | Anchor collisions | Merged sources | Size gate |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: | ---: | --- |
| `ImplementationGuide-mii-ig-onko-de-v2026.md` | 286 | 0 | 5 | 0 | 0 | 0 | 0 | 0 | ok |
| `capability-statements.md` | 31 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `changes.md` | 560 | 0 | 1 | 1 | 1 | 0 | 0 | 0 | ok |
| `code-systems.md` | 148 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `downloads.md` | 325 | 0 | 0 | 7 | 0 | 0 | 0 | 0 | ok |
| `examples.md` | 43 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `extensions.md` | 121 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `guidance.md` | 130 | 0 | 2 | 0 | 0 | 0 | 0 | 0 | ok |
| `implementer-guidance.md` | 32 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `index.md` | 477 | 0 | 9 | 0 | 0 | 0 | 0 | 0 | ok |
| `logical-models.md` | 33 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `metadata.md` | 2198 | 0 | 1 | 7 | 1 | 0 | 0 | 0 | ok |
| `operations.md` | 104 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `profiles.md` | 77 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `rendering-artifacts.md` | 3933 | 0 | 8 | 3 | 0 | 0 | 0 | 0 | **TRIPS** - 3933 words > 2500 |
| `researcher-guidance.md` | 111 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `search-parameters.md` | 112 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `security-and-privacy.md` | 444 | 0 | 0 | 3 | 0 | 0 | 0 | 0 | ok |
| `translationinfo.md` | 80 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `uml-diagrams.md` | 42 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | ok |
| `value-sets.md` | 178 | 0 | 1 | 0 | 0 | 0 | 0 | 0 | ok |
| `version-history.md` | 548 | 0 | 0 | 6 | 0 | 0 | 0 | 0 | ok |

### 2.1 Pages that trip the size gate

- **`rendering-artifacts.md`** - 3933 words > 2500.
  - rule 5: re-run routing preferring branches 1 and 2, or split.

## 3. Menu budget

Clickable entries are the menu's real destinations: every `<li><a>` except the dropdown toggles, which only repeat their first child's href.

| Metric | Measured | Contract limit | Headroom |
| --- | ---: | ---: | ---: |
| total clickable entries | 26 | 33 | 7 |
| widest dropdown (Artifacts) | 11 | 10 | -1 |
| top-level entries | 7 | 8 | 1 |
| menu depth used | 2 | 2 | 0 |

| Dropdown | Children | Free (of 10) |
| --- | ---: | ---: |
| Guidance | 5 | 5 |
| Conformance | 5 | 5 |
| Artifacts | 11 | -1 |
| Metadata | 2 | 8 |

After the proposals in section 4: total 7 free, top level 1 free, freest dropdown Metadata (8 free).

## 4. Routing proposal (spec 9d/9e)

One row per source page. The branch number is the spec's; the measurement column is the number that forced it. Branch-4 rows state the presentation (4a) and the visibility (4b), and, where a menu entry fits, the remaining budget after it. `Words` is the source page's own size, counted the same way as the target pages in section 2.

| # | Source page | Lvl | Children | Words | Branch | Proposed destination | Measurement |
| ---: | --- | ---: | ---: | ---: | --- | --- | --- |
| 1 | `MIIIGModulOnkologie/Index.page.md` | 1 | 10 | 308 | 3 merge into agreed page | index.md | agreed page named 'index' exists in the target |
| 2 | `MIIIGModulOnkologie/BeschreibungModulOnko.page.md` | 1 | 0 | 275 | 3 merge into agreed page | index.md | semantic match 'beschreibungmodul' -> index (routing-table) |
| 3 | `MIIIGModulOnkologie/KontextimGesamtprojektBezgezuanderenModulen.page.md` | 1 | 0 | 327 | 3 merge into agreed page | implementer-guidance.md | semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table) |
| 4 | `MIIIGModulOnkologie/KDL-Dokumentklassen.page.md` | 1 | 0 | 630 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-kdl-dokumentklassen-intro.md | compact match on mii-vs-onko-kdl-dokumentklassen (1 candidate artefact) |
| 5 | `MIIIGModulOnkologie/Referenzen.page.md` | 1 | 0 | 116 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 6 | `MIIIGModulOnkologie/Abweichungen-zum-oBDS.page.md` | 1 | 0 | 408 | 3 merge into agreed page | guidance.md | semantic match 'abweichungen' -> guidance (routing-table) |
| 7 | `MIIIGModulOnkologie/BezugZuNationalenStandards.page.md` | 1 | 0 | 554 | 3 merge into agreed page | guidance.md | semantic match 'bezugzu' -> guidance (routing-table) |
| 8 | `MIIIGModulOnkologie/BezugZuInternationalenStandards.page.md` | 1 | 0 | 471 | 3 merge into agreed page | guidance.md | semantic match 'bezugzu' -> guidance (routing-table) |
| 9 | `MIIIGModulOnkologie/Release-Notes.page.md` | 1 | 0 | 3348 | 3 merge into agreed page | changes.md <br>_(source page is 3348 words > 2500 - merging it trips the host's size gate on its own (rule 5))_ | semantic match 'releasenotes' -> changes (routing-table) |
| 10 | `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md` | 2 | 3 | 13 | 4 own page | own page (HUB), pages:-NESTED under MIIIGModulOnkologie/Index.page.md (its host has no menu entry) <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | no artefact anchor; no agreed page; 3 child page(s) |
| 11 | `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md` | 2 | 0 | 498 | 3 merge into agreed page | guidance.md | semantic match 'szenarien' -> guidance (routing-table) |
| 12 | `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md` | 2 | 0 | 193 | 4 own page | own page (merged page), pages:-NESTED under MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry) | no artefact anchor; no agreed page; 0 child page(s) |
| 13 | `MIIIGModulOnkologie/AnwendungsflleInformationsmodell/UML.page.md` | 2 | 0 | 125 | 3 merge into agreed page | uml-diagrams.md | semantic match 'uml' -> uml-diagrams (routing-table) |
| 14 | `MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md` | 2 | 11 | 12 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 11 children, 2 anchoring distinct artefacts (CapabilityStatement) |
| 15 | `MIIIGModulOnkologie/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md` | 2 | 0 | 181 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 16 | `MIIIGModulOnkologie/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md` | 2 | 0 | 51 | 3 merge into agreed page | implementer-guidance.md | semantic match 'referenzen' -> implementer-guidance (routing-table) |
| 17 | `MIIIGModulOnkologie/TechnischeImplementierung/Verwendung-von-Extensions.page.md` | 2 | 0 | 330 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 18 | `MIIIGModulOnkologie/TechnischeImplementierung/CapabilityStatement.page.md` | 2 | 0 | 83 | 3 merge into agreed page | capability-statements.md | semantic match 'capabilitystatement' -> capability-statements (routing-table) |
| 19 | `MIIIGModulOnkologie/TechnischeImplementierung/Terminologien.page.md` | 2 | 0 | 621 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 20 | `MIIIGModulOnkologie/TechnischeImplementierung/ICD-O-Terminologie.page.md` | 2 | 0 | 583 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 21 | `MIIIGModulOnkologie/TechnischeImplementierung/Biomarker-Tumormarker-LOINC.page.md` | 2 | 0 | 686 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 22 | `MIIIGModulOnkologie/TechnischeImplementierung/Toronto-Klassifikation.page.md` | 2 | 0 | 872 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-asa-klassifikation-intro.md | tokens match on mii-pr-onko-asa-klassifikation (4 candidate artefacts) |
| 23 | `MIIIGModulOnkologie/TechnischeImplementierung/QA-Validierung.page.md` | 2 | 0 | 481 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 24 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md` | 3 | 18 | 190 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own) |
| 25 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/FHIR-Profil--Ressourcentyp.page.md` | 3 | 0 | 20 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(on disk but not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/toc.yaml)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 26 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Index.page.md` | 4 | 4 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 4 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 27 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Diagnose-Condition.page.md` | 4 | 0 | 1053 | 1 intro-note | input/intro-notes/ConceptMap-mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor-intro.md | tokens match on mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor (3 candidate artefacts) |
| 28 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Fruehere-Tumorerkrankung-Condition.page.md` | 4 | 0 | 815 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung-intro.md | tokens match on mii-pr-onko-fruehere-tumorerkrankung (1 candidate artefact) |
| 29 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Extension-ICD-O-3-Morphologie.page.md` | 4 | 0 | 167 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Index.page.md (no anchor of its own) |
| 30 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Erstdiagnose-Evidenz-List.page.md` | 4 | 0 | 347 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose-intro.md | tokens match on mii-pr-onko-liste-evidenz-erstdiagnose (1 candidate artefact) |
| 31 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Index.page.md` | 4 | 6 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 6 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 32 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Specimen-Specimen.page.md` | 4 | 0 | 270 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-specimen-intro.md | tokens match on mii-pr-onko-specimen (2 candidate artefacts) |
| 33 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Lymphknotenuntersuchung-Observation.page.md` | 4 | 0 | 650 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc-intro.md | tokens match on mii-sp-onko-observation-ext-tnm-n-itc (5 candidate artefacts) |
| 34 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md` | 4 | 0 | 250 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Index.page.md (no anchor of its own) |
| 35 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Grading-Observation.page.md` | 4 | 0 | 390 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-grading-intro.md | tokens match on mii-pr-onko-grading (9 candidate artefacts) |
| 36 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Tumorgroesse-Observation.page.md` | 4 | 0 | 419 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tumorgroesse-intro.md | tokens match on mii-pr-onko-tumorgroesse (6 candidate artefacts) |
| 37 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Verlaufshistologie-Observation.page.md` | 4 | 0 | 474 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc-intro.md | tokens match on mii-sp-onko-observation-ext-tnm-n-itc (5 candidate artefacts) |
| 38 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md` | 4 | 14 | 8 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 14 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 39 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Klassifikation-Observation.page.md` | 4 | 0 | 909 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-klassifikation-intro.md | tokens match on mii-pr-onko-tnm-klassifikation (8 candidate artefacts) |
| 40 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-T-Observation.page.md` | 4 | 0 | 501 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 41 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-N-Observation.page.md` | 4 | 0 | 530 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 42 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-M-Observation.page.md` | 4 | 0 | 555 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 43 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Extension-TNM-Prefix-c-p.page.md` | 4 | 0 | 119 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md (no anchor of its own) |
| 44 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-a-Observation.page.md` | 4 | 0 | 396 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts) |
| 45 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-m-Observation.page.md` | 4 | 0 | 422 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts) |
| 46 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-l-Observation.page.md` | 4 | 0 | 411 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 47 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-Pn-Observation.page.md` | 4 | 0 | 409 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 48 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-r-Observation.page.md` | 4 | 0 | 387 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts) |
| 49 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-S-Observation.page.md` | 4 | 0 | 415 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 50 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-V-Observation.page.md` | 4 | 0 | 412 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md | tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts) |
| 51 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-y-Observation.page.md` | 4 | 0 | 390 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts) |
| 52 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md` | 4 | 0 | 629 | 2 section on index page | h3/h4 section on profiles.md <br>_(on disk but not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/toc.yaml)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md (no anchor of its own) |
| 53 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Index.page.md` | 4 | 2 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 54 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Observation.page.md` | 4 | 0 | 836 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-weitere-klassifikationen-intro.md | tokens match on mii-pr-onko-weitere-klassifikationen (4 candidate artefacts) |
| 55 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md` | 4 | 0 | 489 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 56 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Operation-Procedure.page.md` | 4 | 0 | 1333 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md | tokens match on mii-sp-onko-procedure-ext-operation-intention (25 candidate artefacts) |
| 57 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Intention.page.md` | 4 | 0 | 91 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md | tokens match on mii-ex-onko-operation-intention (11 candidate artefacts) |
| 58 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md` | 4 | 0 | 232 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-operation-urgency-intro.md | tokens match on mii-ex-onko-operation-urgency (3 candidate artefacts) |
| 59 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Index.page.md` | 4 | 3 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 60 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Index.page.md` | 4 | 6 | 13 | 2 section on index page | h3/h4 section on search-parameters.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 6 children, 5 anchoring distinct artefacts (SearchParameter) |
| 61 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md` | 4 | 0 | 1414 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-procedure-strahlentherapie-strahlenart-intro.md | tokens match on mii-sp-onko-procedure-strahlentherapie-strahlenart (38 candidate artefacts) |
| 62 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md` | 4 | 0 | 899 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md | tokens match on mii-sp-onko-procedure-ext-operation-intention (9 candidate artefacts) |
| 63 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md` | 4 | 0 | 941 | 1 intro-note | input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md | tokens match on mii-sp-onko-procedure-ext-operation-intention (9 candidate artefacts) |
| 64 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Intention.page.md` | 4 | 0 | 73 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md | tokens match on mii-ex-onko-operation-intention (11 candidate artefacts) |
| 65 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Stellung.page.md` | 4 | 0 | 72 | 1 intro-note | input/intro-notes/ConceptMap-mii-cm-onko-therapie-stellung-sct-intro.md | tokens match on mii-cm-onko-therapie-stellung-sct (1 candidate artefact) |
| 66 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md` | 4 | 0 | 210 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost-intro.md | tokens match on mii-ex-onko-strahlentherapie-bestrahlung-boost (6 candidate artefacts) |
| 67 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Index.page.md` | 4 | 3 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 68 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md` | 4 | 0 | 1042 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-systemische-therapie-intro.md | tokens match on mii-pr-onko-systemische-therapie (21 candidate artefacts) |
| 69 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md` | 4 | 0 | 431 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-systemische-therapie-intro.md | tokens match on mii-pr-onko-systemische-therapie (21 candidate artefacts) |
| 70 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md` | 4 | 0 | 803 | 3 merge into agreed page | code-systems.md | semantic match 'terminologien' -> code-systems (routing-table) |
| 71 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Index.page.md` | 4 | 1 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 72 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md` | 4 | 0 | 367 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md | compact match on mii-pr-onko-nebenwirkung-adverse-event (8 candidate artefacts) |
| 73 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Index.page.md` | 4 | 1 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 74 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Residualstatus-Observation.page.md` | 4 | 0 | 388 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-residualstatus-intro.md | tokens match on mii-pr-onko-residualstatus (10 candidate artefacts) |
| 75 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Index.page.md` | 4 | 1 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 76 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Fernmetastasen-Observation.page.md` | 4 | 0 | 474 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-fernmetastasen-intro.md | tokens match on mii-pr-onko-fernmetastasen (12 candidate artefacts) |
| 77 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Index.page.md` | 4 | 3 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 3 children, 3 anchoring distinct artefacts (StructureDefinition) |
| 78 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-ECOG-Observation.page.md` | 4 | 0 | 641 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog-intro.md | tokens match on mii-pr-onko-allgemeiner-leistungszustand-ecog (11 candidate artefacts) |
| 79 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-Karnofsky-Observation.page.md` | 4 | 0 | 621 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky-intro.md | tokens match on mii-pr-onko-allgemeiner-leistungszustand-karnofsky (11 candidate artefacts) |
| 80 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/ASA-Klassifikation-Observation.page.md` | 4 | 0 | 535 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-asa-klassifikation-intro.md | tokens match on mii-pr-onko-asa-klassifikation (1 candidate artefact) |
| 81 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Index.page.md` | 4 | 1 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 82 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md` | 4 | 0 | 549 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-verlauf-intro.md | tokens match on mii-pr-onko-verlauf (18 candidate artefacts) |
| 83 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Index.page.md` | 4 | 1 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 84 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md` | 4 | 0 | 515 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tod-intro.md | tokens match on mii-pr-onko-tod (9 candidate artefacts) |
| 85 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Index.page.md` | 4 | 5 | 13 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 5 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 86 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-CarePlan.page.md` | 4 | 0 | 778 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tumorkonferenz-intro.md | tokens match on mii-pr-onko-tumorkonferenz (5 candidate artefacts) |
| 87 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md` | 4 | 0 | 558 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie-intro.md | tokens match on mii-pr-onko-therapieempfehlung-kombinationstherapie (1 candidate artefact) |
| 88 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Medikation-MedicationRequest.page.md` | 4 | 0 | 479 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation-intro.md | tokens match on mii-pr-onko-therapieempfehlung-medikation (1 candidate artefact) |
| 89 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Operation-ServiceRequest.page.md` | 4 | 0 | 443 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-operation-intro.md | tokens match on mii-pr-onko-therapieempfehlung-operation (1 candidate artefact) |
| 90 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md` | 4 | 0 | 507 | 2 section on index page | h3/h4 section on profiles.md <br>_(on disk but not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/toc.yaml)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Index.page.md (no anchor of its own) |
| 91 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Index.page.md` | 4 | 2 | 13 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 92 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md` | 4 | 0 | 792 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-genetische-variante-intro.md | tokens match on mii-pr-onko-genetische-variante (4 candidate artefacts) |
| 93 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/MolGen-Abbildung-Variantentypen.page.md` | 4 | 0 | 929 | 2 section on index page | h3/h4 section on capability-statements.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Index.page.md (no anchor of its own) |
| 94 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md` | 4 | 0 | 528 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-studienteilnahme-intro.md | tokens match on mii-pr-onko-studienteilnahme (9 candidate artefacts) |
| 95 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Index.page.md` | 4 | 4 | 402 | 2 section on index page | h3/h4 section on capability-statements.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own) |
| 96 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md` | 5 | 7 | 448 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 7 children, 6 anchoring distinct artefacts (StructureDefinition) |
| 97 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md` | 5 | 0 | 506 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-menopause-status-intro.md | tokens match on mii-pr-onko-mamma-menopause-status (7 candidate artefacts) |
| 98 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md` | 5 | 0 | 731 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen-intro.md | tokens match on mii-pr-onko-mamma-rezeptorstatus-estrogen (5 candidate artefacts) |
| 99 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md` | 5 | 0 | 732 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron-intro.md | tokens match on mii-pr-onko-mamma-rezeptorstatus-progesteron (5 candidate artefacts) |
| 100 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md` | 5 | 0 | 922 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-her2neu-status-intro.md | tokens match on mii-pr-onko-mamma-her2neu-status (8 candidate artefacts) |
| 101 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md` | 5 | 0 | 600 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung-intro.md | tokens match on mii-pr-onko-mamma-praeoperative-markierung (2 candidate artefacts) |
| 102 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md` | 5 | 0 | 642 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-mamma-operation-intro.md | tokens match on mii-pr-onko-mamma-operation (4 candidate artefacts) |
| 103 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md` | 5 | 0 | 400 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md (no anchor of its own) |
| 104 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md` | 5 | 7 | 427 | 2 section on index page | h3/h4 section on value-sets.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 7 children, 6 anchoring distinct artefacts (ValueSet) |
| 105 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md` | 5 | 0 | 458 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-prostata-psa-loinc-intro.md | tokens match on mii-vs-onko-prostata-psa-loinc (1 candidate artefact) |
| 106 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md` | 5 | 0 | 407 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-prostata-gleason-patterns-intro.md | tokens match on mii-vs-onko-prostata-gleason-patterns (5 candidate artefacts) |
| 107 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md` | 5 | 0 | 443 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-prostate-gleason-grade-group-intro.md | tokens match on mii-pr-onko-prostate-gleason-grade-group (3 candidate artefacts) |
| 108 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md` | 5 | 0 | 304 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen-intro.md | tokens match on mii-pr-onko-prostate-anzahl-stanzen (2 candidate artefacts) |
| 109 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md` | 5 | 0 | 321 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen-intro.md | tokens match on mii-pr-onko-prostate-anzahl-positive-stanzen (1 candidate artefact) |
| 110 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Karzinom-Befall-Stanze-Observation.page.md` | 5 | 0 | 477 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md (no anchor of its own) |
| 111 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md` | 5 | 0 | 565 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-prostata-clavien-dindo-intro.md | tokens match on mii-vs-onko-prostata-clavien-dindo (2 candidate artefacts) |
| 112 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md` | 5 | 0 | 464 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md (no anchor of its own) |
| 113 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md` | 5 | 0 | 510 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene-intro.md | tokens match on mii-pr-onko-krk-abstand-circumferelle-resektionsebene (2 candidate artefacts) |
| 114 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md` | 5 | 0 | 496 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-abstand-aboral-intro.md | tokens match on mii-pr-onko-krk-abstand-aboral (3 candidate artefacts) |
| 115 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md` | 5 | 0 | 512 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie-intro.md | tokens match on mii-pr-onko-krk-mrt-mesorektale-faszie (3 candidate artefacts) |
| 116 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md` | 5 | 0 | 487 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz-intro.md | tokens match on mii-pr-onko-krk-anastomoseninsuffizienz (3 candidate artefacts) |
| 117 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md` | 5 | 0 | 467 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-operation-intro.md | tokens match on mii-pr-onko-krk-operation (2 candidate artefacts) |
| 118 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md` | 5 | 0 | 474 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-specimen-intro.md | compact match on mii-pr-onko-krk-specimen (22 candidate artefacts) |
| 119 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md` | 5 | 0 | 484 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-krk-stoma-markierung-intro.md | tokens match on mii-pr-onko-krk-stoma-markierung (5 candidate artefacts) |
| 120 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md` | 5 | 0 | 536 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md (no anchor of its own) |
| 121 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md` | 5 | 9 | 378 | 2 section on index page | h3/h4 section on profiles.md <br>_(on disk but not listed in MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/toc.yaml; folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 9 children, 7 anchoring distinct artefacts (StructureDefinition) |
| 122 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md` | 5 | 5 | 240 | 2 section on index page | h3/h4 section on profiles.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 5 children, 4 anchoring distinct artefacts (StructureDefinition) |
| 123 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md` | 5 | 0 | 481 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-melanom-breslow-tiefe-intro.md | tokens match on mii-pr-onko-melanom-breslow-tiefe (1 candidate artefact) |
| 124 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Sicherheitsabstand-Observation.page.md` | 5 | 0 | 558 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand-intro.md | tokens match on mii-pr-onko-melanom-sicherheitsabstand (1 candidate artefact) |
| 125 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md` | 5 | 0 | 535 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-melanom-ulzeration-intro.md | tokens match on mii-pr-onko-melanom-ulzeration (3 candidate artefacts) |
| 126 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md` | 5 | 0 | 560 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-melanom-ldh-intro.md | tokens match on mii-pr-onko-melanom-ldh (2 candidate artefacts) |
| 127 | `MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md` | 5 | 0 | 463 | 2 section on index page | h3/h4 section on profiles.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md (no anchor of its own) |
| 128 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md` | 3 | 27 | 157 | 2 section on index page | h3/h4 section on value-sets.md <br>_(folder landing page - NOT matched against the target's index.md or an artefact id; routed by its own children)_ | 27 children, 25 anchoring distinct artefacts (ValueSet) |
| 129 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Lokalisation-Fernmetastasen.page.md` | 3 | 0 | 24 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-fernmetastasen-intro.md | tokens match on mii-pr-onko-fernmetastasen (7 candidate artefacts) |
| 130 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Intention.page.md` | 3 | 0 | 48 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md | compact match on mii-ex-onko-operation-intention (11 candidate artefacts) |
| 131 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Seitenlokalisation.page.md` | 3 | 0 | 39 | 1 intro-note | input/intro-notes/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation-intro.md | compact match on mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation (4 candidate artefacts) |
| 132 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Ende-Grund.page.md` | 3 | 0 | 63 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-systemische-therapie-ende-grund-intro.md | compact match on mii-vs-onko-systemische-therapie-ende-grund (4 candidate artefacts) |
| 133 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Stellung.page.md` | 3 | 0 | 41 | 1 intro-note | input/intro-notes/ConceptMap-mii-cm-onko-therapie-stellung-sct-intro.md | compact match on mii-cm-onko-therapie-stellung-sct (31 candidate artefacts) |
| 134 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapietyp.page.md` | 3 | 0 | 42 | 1 intro-note | input/intro-notes/CodeSystem-mii-cs-onko-therapie-typ-intro.md | compact match on mii-cs-onko-therapie-typ (2 candidate artefacts) |
| 135 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Primaertumor-Diagnosesicherung.page.md` | 3 | 0 | 44 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-primaertumor-diagnosesicherung-intro.md | compact match on mii-vs-onko-primaertumor-diagnosesicherung (8 candidate artefacts) |
| 136 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Grading.page.md` | 3 | 0 | 30 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-grading-intro.md | compact match on mii-pr-onko-grading (4 candidate artefacts) |
| 137 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-klinisch.page.md` | 3 | 0 | 82 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (50 candidate artefacts) |
| 138 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-pathologisch.page.md` | 3 | 0 | 82 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md | tokens match on mii-pr-onko-tnm-a-symbol (50 candidate artefacts) |
| 139 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Allgemeiner-Leistungszustand.page.md` | 3 | 0 | 24 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog-intro.md | compact match on mii-pr-onko-allgemeiner-leistungszustand-ecog (11 candidate artefacts) |
| 140 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Operationskomplikation.page.md` | 3 | 0 | 49 | 2 section on index page | h3/h4 section on value-sets.md | child of family overview MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md (no anchor of its own) |
| 141 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahleneinheit.page.md` | 3 | 0 | 32 | 1 intro-note | input/intro-notes/ConceptMap-mii-cm-onko-strahlentherapie-strahleneinheit-sct-intro.md | compact match on mii-cm-onko-strahlentherapie-strahleneinheit-sct (36 candidate artefacts) |
| 142 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Applikationsart.page.md` | 3 | 0 | 54 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-applikationsart-intro.md | compact match on mii-vs-onko-strahlentherapie-applikationsart (36 candidate artefacts) |
| 143 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Boost.page.md` | 3 | 0 | 46 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-boost-intro.md | compact match on mii-vs-onko-strahlentherapie-boost (36 candidate artefacts) |
| 144 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahlenart.page.md` | 3 | 0 | 49 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-strahlenart-intro.md | compact match on mii-vs-onko-strahlentherapie-strahlenart (36 candidate artefacts) |
| 145 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Zielgebiet.page.md` | 3 | 0 | 66 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-zielgebiet-intro.md | compact match on mii-vs-onko-strahlentherapie-zielgebiet (36 candidate artefacts) |
| 146 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Nebenwirkung.page.md` | 3 | 0 | 33 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md | compact match on mii-pr-onko-nebenwirkung-adverse-event (8 candidate artefacts) |
| 147 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Fernmetastasen.page.md` | 3 | 0 | 44 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-verlauf-fernmetastasen-intro.md | compact match on mii-vs-onko-verlauf-fernmetastasen (17 candidate artefacts) |
| 148 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Gesamtbeurteilung.page.md` | 3 | 0 | 35 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung-intro.md | compact match on mii-vs-onko-verlauf-gesamtbeurteilung (14 candidate artefacts) |
| 149 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Lymphknoten.page.md` | 3 | 0 | 32 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-verlauf-lymphknoten-intro.md | compact match on mii-vs-onko-verlauf-lymphknoten (17 candidate artefacts) |
| 150 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Primaertumor.page.md` | 3 | 0 | 42 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-verlauf-primaertumor-intro.md | compact match on mii-vs-onko-verlauf-primaertumor (18 candidate artefacts) |
| 151 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieabweichung.page.md` | 3 | 0 | 37 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-therapieabweichung-intro.md | compact match on mii-vs-onko-therapieabweichung (3 candidate artefacts) |
| 152 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieplanung.page.md` | 3 | 0 | 39 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-therapieplanung-typ-intro.md | compact match on mii-vs-onko-therapieplanung-typ (3 candidate artefacts) |
| 153 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Tod.page.md` | 3 | 0 | 46 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-tod-intro.md | tokens match on mii-pr-onko-tod (4 candidate artefacts) |
| 154 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Genetische-Variante-Auspraegung.page.md` | 3 | 0 | 65 | 1 intro-note | input/intro-notes/ValueSet-mii-vs-onko-genetische-variante-auspraegung-intro.md | compact match on mii-vs-onko-genetische-variante-auspraegung (4 candidate artefacts) |
| 155 | `MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Studienteilnahme.page.md` | 3 | 0 | 24 | 1 intro-note | input/intro-notes/StructureDefinition-mii-pr-onko-studienteilnahme-intro.md <br>_(on disk but not listed in MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/toc.yaml)_ | compact match on mii-pr-onko-studienteilnahme (4 candidate artefacts) |

Branch totals: 1 intro-note = 97, 2 section on index page = 41, 3 merge into agreed page = 15, 4 own page = 2.

## 5. Report queue 1 items

The menu budget forced a ToC-nesting where a menu entry was otherwise warranted. Allocation below is first-come-first-served in source document order; the human may spend the budget differently.

- MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md - nested under MIIIGModulOnkologie/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.
- MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md - nested under MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md because that host got no menu entry of its own; giving this page one directly would put it at menu depth 3 > 2, so it only becomes visible if the human buys the host a top-level entry first.

Size-gate trips (rule 5) needing a routing re-run or a split:

- `rendering-artifacts.md` - 3933 words > 2500.

## 6. Suggested `5.4c page-routing` run-log lines

One per source page (union pages included), ready for the migration run log. The `5.4c page-routing` step IS the advice run that GENERATES the page map (`--map`) - the map is machine-written, never hand-written; these lines are only its run-log form.

```
5.4c page-routing	MIIIGModulOnkologie/Index.page.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	MIIIGModulOnkologie/BeschreibungModulOnko.page.md	branch=3	index.md	semantic match 'beschreibungmodul' -> index (routing-table)
5.4c page-routing	MIIIGModulOnkologie/KontextimGesamtprojektBezgezuanderenModulen.page.md	branch=3	implementer-guidance.md	semantic match 'kontextimgesamtprojekt' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/KDL-Dokumentklassen.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-kdl-dokumentklassen-intro.md	compact match on mii-vs-onko-kdl-dokumentklassen (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/Abweichungen-zum-oBDS.page.md	branch=3	guidance.md	semantic match 'abweichungen' -> guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/BezugZuNationalenStandards.page.md	branch=3	guidance.md	semantic match 'bezugzu' -> guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/BezugZuInternationalenStandards.page.md	branch=3	guidance.md	semantic match 'bezugzu' -> guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/Release-Notes.page.md	branch=3	changes.md	semantic match 'releasenotes' -> changes (routing-table)
5.4c page-routing	MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md	branch=4	own page (HUB), pages:-NESTED under MIIIGModulOnkologie/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 3 child page(s)
5.4c page-routing	MIIIGModulOnkologie/AnwendungsflleInformationsmodell/BeschreibungvonSzenarienfrdieAnwendungderModule.page.md	branch=3	guidance.md	semantic match 'szenarien' -> guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md	branch=4	own page (merged page), pages:-NESTED under MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Index.page.md (its host has no menu entry)	no artefact anchor; no agreed page; 0 child page(s)
5.4c page-routing	MIIIGModulOnkologie/AnwendungsflleInformationsmodell/UML.page.md	branch=3	uml-diagrams.md	semantic match 'uml' -> uml-diagrams (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md	branch=2	h3/h4 section on capability-statements.md	11 children, 2 anchoring distinct artefacts (CapabilityStatement)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Profile-Inhalt-und-Vererbung.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Profile-Beziehungen-und-Referenzen.page.md	branch=3	implementer-guidance.md	semantic match 'referenzen' -> implementer-guidance (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Verwendung-von-Extensions.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/CapabilityStatement.page.md	branch=3	capability-statements.md	semantic match 'capabilitystatement' -> capability-statements (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/ICD-O-Terminologie.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Biomarker-Tumormarker-LOINC.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/Toronto-Klassifikation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-asa-klassifikation-intro.md	tokens match on mii-pr-onko-asa-klassifikation (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/QA-Validierung.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/FHIR-Profil--Ressourcentyp.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Index.page.md	branch=2	h3/h4 section on profiles.md	4 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Diagnose-Condition.page.md	branch=1	input/intro-notes/ConceptMap-mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor-intro.md	tokens match on mii-cm-mii-to-mvgenomseq-condition-diagnose-primaertumor (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Fruehere-Tumorerkrankung-Condition.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung-intro.md	tokens match on mii-pr-onko-fruehere-tumorerkrankung (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Extension-ICD-O-3-Morphologie.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Erstdiagnose-Evidenz-List.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose-intro.md	tokens match on mii-pr-onko-liste-evidenz-erstdiagnose (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Index.page.md	branch=2	h3/h4 section on profiles.md	6 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Specimen-Specimen.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-specimen-intro.md	tokens match on mii-pr-onko-specimen (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Lymphknotenuntersuchung-Observation.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc-intro.md	tokens match on mii-sp-onko-observation-ext-tnm-n-itc (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Grading-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-grading-intro.md	tokens match on mii-pr-onko-grading (9 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Tumorgroesse-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tumorgroesse-intro.md	tokens match on mii-pr-onko-tumorgroesse (6 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Verlaufshistologie-Observation.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-observation-ext-tnm-n-itc-intro.md	tokens match on mii-sp-onko-observation-ext-tnm-n-itc (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md	branch=2	h3/h4 section on profiles.md	14 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Klassifikation-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-klassifikation-intro.md	tokens match on mii-pr-onko-tnm-klassifikation (8 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-T-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-N-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-M-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Extension-TNM-Prefix-c-p.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-a-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-m-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-l-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-Pn-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-r-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-S-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Kategorie-V-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-l-kategorie-intro.md	tokens match on mii-pr-onko-tnm-l-kategorie (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Symbol-y-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (10 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/TNM-Breast-Cancer-Journey-Example.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/TNM-Klassifikation/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-weitere-klassifikationen-intro.md	tokens match on mii-pr-onko-weitere-klassifikationen (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Operation-Procedure.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md	tokens match on mii-sp-onko-procedure-ext-operation-intention (25 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Intention.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md	tokens match on mii-ex-onko-operation-intention (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Extension-Urgency.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-operation-urgency-intro.md	tokens match on mii-ex-onko-operation-urgency (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Index.page.md	branch=2	h3/h4 section on search-parameters.md	6 children, 5 anchoring distinct artefacts (SearchParameter)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-procedure-strahlentherapie-strahlenart-intro.md	tokens match on mii-sp-onko-procedure-strahlentherapie-strahlenart (38 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md	tokens match on mii-sp-onko-procedure-ext-operation-intention (9 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/NuklearmedizinischeTherapie-Procedure.page.md	branch=1	input/intro-notes/SearchParameter-mii-sp-onko-procedure-ext-operation-intention-intro.md	tokens match on mii-sp-onko-procedure-ext-operation-intention (9 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Intention.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md	tokens match on mii-ex-onko-operation-intention (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Stellung.page.md	branch=1	input/intro-notes/ConceptMap-mii-cm-onko-therapie-stellung-sct-intro.md	tokens match on mii-cm-onko-therapie-stellung-sct (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Extension-Bestrahlung.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost-intro.md	tokens match on mii-ex-onko-strahlentherapie-bestrahlung-boost (6 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-systemische-therapie-intro.md	tokens match on mii-pr-onko-systemische-therapie (21 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-MedicationStatement.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-systemische-therapie-intro.md	tokens match on mii-pr-onko-systemische-therapie (21 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md	branch=3	code-systems.md	semantic match 'terminologien' -> code-systems (routing-table)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md	compact match on mii-pr-onko-nebenwirkung-adverse-event (8 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Residualstatus/Residualstatus-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-residualstatus-intro.md	tokens match on mii-pr-onko-residualstatus (10 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Fernmetastasen-Observation/Fernmetastasen-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-fernmetastasen-intro.md	tokens match on mii-pr-onko-fernmetastasen (12 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Index.page.md	branch=2	h3/h4 section on profiles.md	3 children, 3 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-ECOG-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog-intro.md	tokens match on mii-pr-onko-allgemeiner-leistungszustand-ecog (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/Allgemeiner-Leistungszustand-Karnofsky-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky-intro.md	tokens match on mii-pr-onko-allgemeiner-leistungszustand-karnofsky (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Allgemeiner-Leistungszustand/ASA-Klassifikation-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-asa-klassifikation-intro.md	tokens match on mii-pr-onko-asa-klassifikation (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-verlauf-intro.md	tokens match on mii-pr-onko-verlauf (18 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tod/Tod-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tod-intro.md	tokens match on mii-pr-onko-tod (9 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Index.page.md	branch=2	h3/h4 section on profiles.md	5 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-CarePlan.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tumorkonferenz-intro.md	tokens match on mii-pr-onko-tumorkonferenz (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie-intro.md	tokens match on mii-pr-onko-therapieempfehlung-kombinationstherapie (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Medikation-MedicationRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation-intro.md	tokens match on mii-pr-onko-therapieempfehlung-medikation (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Operation-ServiceRequest.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-operation-intro.md	tokens match on mii-pr-onko-therapieempfehlung-operation (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-genetische-variante-intro.md	tokens match on mii-pr-onko-genetische-variante (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/MolGen-Abbildung-Variantentypen.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Studienteilnahme/Studienteilnahme-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-studienteilnahme-intro.md	tokens match on mii-pr-onko-studienteilnahme (9 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Index.page.md	branch=2	h3/h4 section on capability-statements.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md	branch=2	h3/h4 section on profiles.md	7 children, 6 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Menopause-Status-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-menopause-status-intro.md	tokens match on mii-pr-onko-mamma-menopause-status (7 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Estrogen-Rezeptorstatus-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen-intro.md	tokens match on mii-pr-onko-mamma-rezeptorstatus-estrogen (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Progesteron-Rezeptorstatus-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron-intro.md	tokens match on mii-pr-onko-mamma-rezeptorstatus-progesteron (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Her2neu-Status-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-her2neu-status-intro.md	tokens match on mii-pr-onko-mamma-her2neu-status (8 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Praeoperative-Markierung-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung-intro.md	tokens match on mii-pr-onko-mamma-praeoperative-markierung (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Operation-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-mamma-operation-intro.md	tokens match on mii-pr-onko-mamma-operation (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Mamma-Bundle-Example.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Mamma/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md	branch=2	h3/h4 section on value-sets.md	7 children, 6 anchoring distinct artefacts (ValueSet)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-PSA-Observation.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-prostata-psa-loinc-intro.md	tokens match on mii-vs-onko-prostata-psa-loinc (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Patterns-Observation.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-prostata-gleason-patterns-intro.md	tokens match on mii-vs-onko-prostata-gleason-patterns (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Gleason-Score-Grade-Group-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-prostate-gleason-grade-group-intro.md	tokens match on mii-pr-onko-prostate-gleason-grade-group (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Stanzen-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen-intro.md	tokens match on mii-pr-onko-prostate-anzahl-stanzen (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Anzahl-Positive-Stanzen-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen-intro.md	tokens match on mii-pr-onko-prostate-anzahl-positive-stanzen (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Karzinom-Befall-Stanze-Observation.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/Prostata/Prostata-Clavien-Dindo-Observation.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-prostata-clavien-dindo-intro.md	tokens match on mii-vs-onko-prostata-clavien-dindo (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Tumor-Anokutanlinie-Observation.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene-intro.md	tokens match on mii-pr-onko-krk-abstand-circumferelle-resektionsebene (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Resektionsrand-Aboral-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-abstand-aboral-intro.md	tokens match on mii-pr-onko-krk-abstand-aboral (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-MRT-Mesorektale-Faszie-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie-intro.md	tokens match on mii-pr-onko-krk-mrt-mesorektale-faszie (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Anastomoseninsuffizienz-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz-intro.md	tokens match on mii-pr-onko-krk-anastomoseninsuffizienz (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-operation-intro.md	tokens match on mii-pr-onko-krk-operation (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-specimen-intro.md	compact match on mii-pr-onko-krk-specimen (22 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-krk-stoma-markierung-intro.md	tokens match on mii-pr-onko-krk-stoma-markierung (5 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Bundle-Example.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/Index.page.md	branch=2	h3/h4 section on profiles.md	9 children, 7 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md	branch=2	h3/h4 section on profiles.md	5 children, 4 anchoring distinct artefacts (StructureDefinition)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Breslow-Tiefe-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-melanom-breslow-tiefe-intro.md	tokens match on mii-pr-onko-melanom-breslow-tiefe (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Sicherheitsabstand-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand-intro.md	tokens match on mii-pr-onko-melanom-sicherheitsabstand (1 candidate artefact)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Ulzeration-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-melanom-ulzeration-intro.md	tokens match on mii-pr-onko-melanom-ulzeration (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-LDH-Observation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-melanom-ldh-intro.md	tokens match on mii-pr-onko-melanom-ldh (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Melanom-Bundle-Example.page.md	branch=2	h3/h4 section on profiles.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/MalignesMelanom/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md	branch=2	h3/h4 section on value-sets.md	27 children, 25 anchoring distinct artefacts (ValueSet)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Lokalisation-Fernmetastasen.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-fernmetastasen-intro.md	tokens match on mii-pr-onko-fernmetastasen (7 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Intention.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-operation-intention-intro.md	compact match on mii-ex-onko-operation-intention (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Seitenlokalisation.page.md	branch=1	input/intro-notes/StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation-intro.md	compact match on mii-ex-onko-strahlentherapie-bestrahlung-seitenlokalisation (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Ende-Grund.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-systemische-therapie-ende-grund-intro.md	compact match on mii-vs-onko-systemische-therapie-ende-grund (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapie-Stellung.page.md	branch=1	input/intro-notes/ConceptMap-mii-cm-onko-therapie-stellung-sct-intro.md	compact match on mii-cm-onko-therapie-stellung-sct (31 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapietyp.page.md	branch=1	input/intro-notes/CodeSystem-mii-cs-onko-therapie-typ-intro.md	compact match on mii-cs-onko-therapie-typ (2 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Primaertumor-Diagnosesicherung.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-primaertumor-diagnosesicherung-intro.md	compact match on mii-vs-onko-primaertumor-diagnosesicherung (8 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Grading.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-grading-intro.md	compact match on mii-pr-onko-grading (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-klinisch.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (50 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/TNM-pathologisch.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tnm-a-symbol-intro.md	tokens match on mii-pr-onko-tnm-a-symbol (50 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Allgemeiner-Leistungszustand.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog-intro.md	compact match on mii-pr-onko-allgemeiner-leistungszustand-ecog (11 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Operationskomplikation.page.md	branch=2	h3/h4 section on value-sets.md	child of family overview MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Index.page.md (no anchor of its own)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahleneinheit.page.md	branch=1	input/intro-notes/ConceptMap-mii-cm-onko-strahlentherapie-strahleneinheit-sct-intro.md	compact match on mii-cm-onko-strahlentherapie-strahleneinheit-sct (36 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Applikationsart.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-applikationsart-intro.md	compact match on mii-vs-onko-strahlentherapie-applikationsart (36 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Boost.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-boost-intro.md	compact match on mii-vs-onko-strahlentherapie-boost (36 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Strahlenart.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-strahlenart-intro.md	compact match on mii-vs-onko-strahlentherapie-strahlenart (36 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Strahlentherapie-Zielgebiet.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-strahlentherapie-zielgebiet-intro.md	compact match on mii-vs-onko-strahlentherapie-zielgebiet (36 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Nebenwirkung.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md	compact match on mii-pr-onko-nebenwirkung-adverse-event (8 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Fernmetastasen.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-verlauf-fernmetastasen-intro.md	compact match on mii-vs-onko-verlauf-fernmetastasen (17 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Gesamtbeurteilung.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung-intro.md	compact match on mii-vs-onko-verlauf-gesamtbeurteilung (14 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Lymphknoten.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-verlauf-lymphknoten-intro.md	compact match on mii-vs-onko-verlauf-lymphknoten (17 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Verlauf-Primaertumor.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-verlauf-primaertumor-intro.md	compact match on mii-vs-onko-verlauf-primaertumor (18 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieabweichung.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-therapieabweichung-intro.md	compact match on mii-vs-onko-therapieabweichung (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Therapieplanung.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-therapieplanung-typ-intro.md	compact match on mii-vs-onko-therapieplanung-typ (3 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Tod.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-tod-intro.md	tokens match on mii-pr-onko-tod (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Genetische-Variante-Auspraegung.page.md	branch=1	input/intro-notes/ValueSet-mii-vs-onko-genetische-variante-auspraegung-intro.md	compact match on mii-vs-onko-genetische-variante-auspraegung (4 candidate artefacts)
5.4c page-routing	MIIIGModulOnkologie/TechnischeImplementierung/oBDS-SNOMED-CT-Mapping/Studienteilnahme.page.md	branch=1	input/intro-notes/StructureDefinition-mii-pr-onko-studienteilnahme-intro.md	compact match on mii-pr-onko-studienteilnahme (4 candidate artefacts)
5.4c page-routing	index.md	branch=3	index.md	agreed page named 'index' exists in the target
5.4c page-routing	map rows=159 retired=3 coverage=ok	map=migration-log/page-map.tsv
```

## 7. Page map (v2) and coverage

The page map is the CONTRACT of the narrative migration: this run generates and validates it, step 5 consumes ONLY it, step 8 checks against it. Columns: `source_page`, `target` (repo-relative path or `RETIRED`), `reason`, `branch` (spec 9e 1-4; 5 = RETIRED), `measure`. One row per page of the source page universe - the authoritative guide tree UNION `input/pagecontent` UNION on-disk pages no toc lists.

Rows: **159** total - 156 routed source pages (155 from the primary tree, 1 union pages outside it) and 3 RETIRED guide-tree summary row(s).

### 7.1 Union pages outside the primary tree

Pages of the universe the primary page tree does not list - routed by the same passes, after it (menu budget included).

| Source page | Branch | Target | Measurement |
| --- | --- | --- | --- |
| `index.md` | 3 | `input/pagecontent/index.md` | agreed page named 'index' exists in the target <br>_(union page: in input/pagecontent but not in the primary page tree)_ |

### 7.2 RETIRED guide trees

| Tree | Reason |
| --- | --- |
| `ImplementationGuide-2025.x-DE/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |
| `ImplementationGuide-2025.x-EN/**` | parallel-language tree - harvest seed for the translation skill, not a machine translation (5.1a #2); STALE (2025.x vs 2027.x) - every harvested page needs a per-page `TODO:REVIEW` naming both versions |
| `ImplementationGuide-2026.x-DE/**` | historical version tree - retain unchanged, Gate-D retirement set (5.1a #3) |

### 7.3 Coverage validation

Universe re-derived from disk: **156** page(s). Every one needs a row with a non-empty target; every RETIRED row needs a reason. The exit code reports the result (0 covered, 1 not).

**Covered.** All 156 universe pages have a target row; every RETIRED row carries a reason.

## 8. M9 optional-page / other-bucket proposal (Gate 0 census)

Counts: generated_crosscheck.counts (fsh-generated/resources). Rule (spec 9a): count 0 -> REMOVE the optional page, count > 0 -> KEEP and fill it; artefacts are never deleted to force a removal. Each proposal is a `5.4a` run-log line and a HUMAN decision - this table only measures.

| Optional page | Census key | Count | Proposal |
| --- | --- | ---: | --- |
| `extensions.md` | `extensions` | 18 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `search-parameters.md` | `searchparameters` | 17 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `operations.md` | `operations` | 0 | **REMOVE** per the template's docs/optional-pages.md procedure |
| `value-sets.md` | `valuesets` | 114 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `code-systems.md` | `codesystems` | 46 | **KEEP** (fill it, delete the banner + OPTIONAL-PAGE marker in both languages) |
| `researcher-guidance.md` | - | - | no artefact count decides it - source narrative does (human decision) |
| `metadata.md` | - | - | no artefact count decides it - source narrative does (human decision) |

Artefact types in the census's OTHER bucket - each has NO template page and needs its own named placement (its own `5.4a` line; a type nobody placed is a queue-1 item):

| `artifacts.other` type | Count | Proposed placement |
| --- | ---: | --- |
| ConceptMap | 41 | h3/h4 section on `artifacts.md` |
| Library | 1 | h3/h4 section on `artifacts.md` |

Declared-vs-generated mismatches Gate 0 reports (4) - the GENERATED counts above are the authoritative ones: `examples` 307->297, `other:ConceptMap` 40->41, `other:ObservationDefinition` 2->0, `profiles` 77->75.

