---
parent: 
---

## {{page-title}}
Hier sind  alle Änderungen aufgelistet. 


## Änderungen in der Profilierung seit der Kommentierungsversion 2024.0.0-ballot
### FHIR-Profile
- SystemicTherapyMedication(MedicationStatement): Lockerung der Einschränkung von `MedicationStatement.basedOn`, so dass ein MedicationStatement andere MedicationStatements referenzieren kann
- Diagnose (Condition): Auslagerung des morphologischen ICD-O-3-Codes in die Extension `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3` (vgl. bei mCODE), da ICD-O-3 Morphologie-Codes nicht das gleiche klinische Konzept wie ein ICD-10 Code oder ein Orpha-Code beschreiben.   
- Verlaufshistologie (Observation): Hinzufügen der Seite im Implementation Guide und Ergänzen des ICD-O-3-Topographie-Codes unter `Observation.bodySite` 
- Fernmetasen (Observation): Lokalisation der Fernmetastasen von `bodySite` nach `valueCodeableConcept` verschoben, um konform mit den Pathologiebefund-Patho Findings zu sein 
- Specimen (Specimen): Probennummer von `Specimen.identifier` nach `Specimen.accessionIdentifier` verschoben

### SNOMED-CT Mappings
- IDs der ConceptMaps auf MII-Naming convention angepasst (mii-cm-*); Vereinheitlichen der ids, urls und Dateinamen 
- Beheben inhaltlicher Fehler 
- cave: größere inhaltliche Änderungen wurden nicht vorgenommen, da parallel die Abstimmung oBDS-meets-SNOMEDCT läuft 
