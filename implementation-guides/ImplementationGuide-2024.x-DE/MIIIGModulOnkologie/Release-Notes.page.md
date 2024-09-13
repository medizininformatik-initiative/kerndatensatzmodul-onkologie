---
parent: 
---

## {{page-title}}
Hier sind wie folgt alle Änderungen aufgelistet. 

### Änderungen in der Profilierung seit der Kommentierungsversion 2024.0.0-ballot
- Diagnose (Condition): Auslagerung des morphologischen ICD-O-3-Codes in die Extension `TODO` (vgl. bei mCODE), da nicht das gleiche klinische Konzept wie ein ICD-10 Code  

- Fernmetasen (Observation): Lokalisation der Fernmetastasen von `bodySite` nach `valueCodeableConcept` verschoben, um konform mit den Pathologiebefund-Patho Findings zu sein 

- Strahlentherapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"

- Systemische Therapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"

- Systemische Therapie Medikation (MedicationStatement): Lockerung der Einschränkung von `MedicationStatement.basedOn`, so dass ein MedicationStatement andere MedicationStatements referenzieren kann

- Tod (Observation): Lockerung der Kardinalitäten von Todesursache(`valueCodeableConcept`), Todesdatum(`effective`) und Zusammenhang mit Tumorerkrankung(`interpretation`) von 1..1 auf 0..1, da Informationen im Krankenhaus nicht immer bekannt und von den Krebsregistern häufig über Todesmeldungen in Standesämtern abgefragt 
 
- to be continued :-) 

### SNOMED Mappings
- IDs der ConceptMaps auf MII-Naming convention angepasst (mii-cm-*); Vereinheitlichen der ids, urls und Dateinamen 
- 

