---
parent: 
---

## {{page-title}}
Hier sind  alle Änderungen aufgelistet. 

## Änderungen in 2025.0.3
- Hinzufügen von ValueSets für ICD-O-3 Morphologie und Topologie, sowie required-binding bei den Profilen "Diagnose" und "Verlaufshistologie"
- Einfügen von fehlender SNOMED-Categories bei Operations-Beispielen
- kleine Korrekturen von Rechtschreibfehlern im IG
- Aktualisierung von externen Links 


## Änderungen in der Profilierung seit der Kommentierungsversion 2024.0.0-ballot

### FHIR-Profile
- SystemicTherapyMedication(MedicationStatement): Lockerung der Einschränkung von `MedicationStatement.basedOn`, so dass ein MedicationStatement andere MedicationStatements referenzieren kann
- Diagnose (Condition): Auslagerung des morphologischen ICD-O-3-Codes in die Extension `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3` (vgl. bei mCODE), da ICD-O-3 Morphologie-Codes nicht das gleiche klinische Konzept wie ein ICD-10 Code oder ein Orpha-Code beschreiben.   
- Verlaufshistologie (Observation): Hinzufügen der Seite im Implementation Guide und Ergänzen des ICD-O-3-Topographie-Codes unter `Observation.bodySite` 
- Änderung des Pathologie-Befund-Codes `DiagnosticReport.code` auf LOINC `22034-3 Pathology Report Cancer Narrative`
- Fernmetasen (Observation): Lokalisation der Fernmetastasen von `bodySite` nach `valueCodeableConcept` verschoben, um konform mit den Pathologiebefund-Patho Findings zu sein 
- Specimen (Specimen): Probennummer von `Specimen.identifier` nach `Specimen.accessionIdentifier` verschoben
- Allgemeiner Leistungszustand (Observation): Aufsplitten in einzelne Observations für  ECOG und Karnofsky , inkl. Anpassung der CodeSystems und ValueSets 
- Strahlentherapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"
- Systemische Therapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"
- Tod (Observation): Lockerung der Kardinalitäten von Todesursache(`valueCodeableConcept`), Todesdatum(`effective`) und Zusammenhang mit Tumorerkrankung(`interpretation`) von 1..1 auf 0..1, da Informationen im Krankenhaus nicht immer bekannt und von den Krebsregistern häufig über Todesmeldungen in Standesämtern abgefragt 
- Nebenwirkungen (AdverseEvent): Ändern des CTCAE-Grads von `AdverseEvent.severity` zu `AdverseEvent.seriousness`

### Dokumentation und Implementation Guide
- Erarbeitung und Dokumentation von Kodierempfehlungen für `category` und `code` der Strahlentherapie und Systemischen / Abwartenden Therapie
- Aktualisierung der UML-Diagramme
- Anpassen der Beispieldateien


### SNOMED-CT Mappings
- IDs der ConceptMaps auf MII-Naming convention angepasst (mii-cm-*); Vereinheitlichen der ids, urls und Dateinamen 
- Beheben inhaltlicher Fehler 
- cave: größere inhaltliche Änderungen wurden nicht vorgenommen, da parallel die Abstimmung oBDS-meets-SNOMEDCT läuft 
