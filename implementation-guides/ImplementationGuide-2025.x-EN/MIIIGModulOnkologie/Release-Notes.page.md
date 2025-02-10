---
parent: 
---

## {{page-title}}
Here are all the changes listed.

## Changes in 2025.0.3
- Added ValueSets for ICD-O-3 morphology and topography, as well as required-binding in the "Diagnosis" and "Follow-up Histology" profiles
- Added missing SNOMED categories in operation examples
- Minor corrections of spelling errors in the IG
- Updated external links

## Changes in profiling since the comment version 2024.0.0-ballot

### FHIR Profiles
- SystemicTherapyMedication (MedicationStatement): Relaxed the restriction on `MedicationStatement.basedOn` so that a MedicationStatement can reference other MedicationStatements
- Diagnosis (Condition): Outsourced the morphological ICD-O-3 code to the extension `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3` (similar to mCODE), as ICD-O-3 morphology codes do not describe the same clinical concept as an ICD-10 code or an Orpha code.
- Follow-up Histology (Observation): Added the page in the Implementation Guide and supplemented the ICD-O-3 topography code under `Observation.bodySite`
- Changed the pathology report code `DiagnosticReport.code` to LOINC `22034-3 Pathology Report Cancer Narrative`
- Distant Metastases (Observation): Moved the localization of distant metastases from `bodySite` to `valueCodeableConcept` to be compliant with the pathology report Patho Findings
- Specimen (Specimen): Moved the specimen number from `Specimen.identifier` to `Specimen.accessionIdentifier`
- General Condition (Observation): Split into individual observations for ECOG and Karnofsky, including adjustment of CodeSystems and ValueSets
- Radiotherapy (Procedure): Renamed the "Position to Surgery" extension from "Stellung" to "StellungZurOp"
- Systemic Therapy (Procedure): Renamed the "Position to Surgery" extension from "Stellung" to "StellungZurOp"
- Death (Observation): Relaxed the cardinalities of cause of death (`valueCodeableConcept`), date of death (`effective`), and relationship to tumor disease (`interpretation`) from 1..1 to 0..1, as information in the hospital is not always known and is often queried by cancer registries through death notifications in registry offices
- Side Effects (AdverseEvent): Changed the CTCAE grade from `AdverseEvent.severity` to `AdverseEvent.seriousness`

### Documentation and Implementation Guide
- Developed and documented coding recommendations for `category` and `code` of radiotherapy and systemic / watchful waiting therapy
- Updated UML diagrams
- Adjusted example files

### SNOMED-CT Mappings
- Adjusted IDs of ConceptMaps to MII naming convention (mii-cm-*); standardized ids, urls, and file names
- Fixed content errors
- cave: major content changes were not made, as the oBDS-meets-SNOMEDCT coordination is running in parallel
