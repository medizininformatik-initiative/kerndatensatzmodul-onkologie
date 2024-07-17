---
parent: 
---

## {{page-title}}
Hier sind wie folgt alle Änderungen aufgelistet. 

### Änderungen in der Profilierung seit der Kommentierungsversion 2024.0.0-ballot
- SystemicTherapyMedication(MedicationStatement): Lockerung der Einschränkung von `MedicationStatement.basedOn`, so dass ein MedicationStatement andere MedicationStatements referenzieren kann
- Diagnose (Condition): Auslagerung des morphologischen ICD-O-3-Codes in die Extension `TODO` (vgl. bei mCODE), da nicht das gleiche klinische Konzept wie ein ICD-10 Code  
- Fernmetasen (Observation): Lokalisation der Fernmetastasen von `bodySite` nach `valueCodeableConcept` verschoben, um konform mit den Pathologiebefund-Patho Findings zu sein 
- to be continued :-) 

