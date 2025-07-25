---
parent: 
---

## {{page-title}}
Hier sind  alle Änderungen aufgelistet. 

## Änderungen Version 2026 (geplante Kommentierung September 2025 )
- Neue Profile zur Abdeckung der organspezifischen Module
    - Prostata 
    - Mamma
    - Kolorektales Karzinom
    - Malignes Melanom

- Hinterlegen eines preferred-Binding-ValueSets für Weitere Klassifikationen, basierend auf der oB

- Ermöglichen der optionalen Darstellung von Therapieempfehlungen mittels Referenzen als 
    - MedicationRequests
    - RequestGroups
    - ServiceRequests
-
- hinterlegen der CTCAE-Liste zum Abgleich der Dokumentation von Nebenwirkungen. 

## Änderungen in 2026.0.0-ballot-release

## Änderungen in 2025.1.0 (veröffentlicht 12.06.2025)
- Umprofilierung des Strahlentherapie-Profils (BREAKING CHANGE!)
    - bisher: 
        - basierend auf MII-Prozedur-Profil
        - mit Extensions für Intention, Stellung zur OP und Bestrahlungsdetails
    - neu: 
        - übergeordnete Strahlentherapie-Prozedur 
            - Extensions für Intention und Stellung zur OP
            - Zeitraum der kompletten Strahlentherapie über Procedure
        - individuelle Bestrahlungsprofile für Strahlentherapi eund Nuklearmedizin
            - Strahlenart und Applikationsart über Procedure.usedCode
            - Zielstruktur und Seitenlokalisation über Procedure.bodySite
            - Zeitraum der Einzelbestrahlungen über Procedure.effectivePeriod
- Profile
    - `Verlauf.component[Tumor].code` von `277062004 |Status des Residualtumors|` auf `445200009 |Status of residual neoplasm (observable entity)|` (verfügbar seit September 2024) und pattern angepasst
    - Extensions haben jetzt experimental `experimental=true` und Datumsstempel
    - Slicing-Regeln des Onko-Befunds korrigiert und Label korrekt auf von `conclusion.value` auf `conclusion` gesetzt
    - Onko-Medikation: MedicationStatement.partOf-Slice korrigiert und Kardinalität von 1..* auf 0..1 angepasst
    - Operations-Prozeduren können jetzt wieder mit `Procedure.partOf` auf übergeordnete Profile verweisen, wenn mehrere OPS-Codes für einen Eingriff kodiert wurden(war vorher auf Observation eingeschränkt) [Ticket](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/194)
    - UICC-ValueSet um vier Staging-Stadien ergänzt [Ticket] (https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/193)
    - Nebenwirkung: AdverseEvent.event wieder auf 1..1 gesetzt und Beispieldatei mit nur-Text ohne coding unter AdverseEvent.event.text hinzugefügt

- ConceptMaps
    - Einfügen Versionsnummer entsprechend dem Package
    - Ersetzen der targetURI "http://snomed.info/sct" (CodeSystem-URI) mit spezifischer SNOMED-Distribution "http://snomed.info/sct/900000000000207008/version/20240401" (ValueSet-URI)
- Beispieldaten
    - Condition-PatientKimMusterperson-Diagnosis-1 - Korrektur: verificationStatus = `active` korrigert auf `verificationStatus` = `unconfirmed ` & `clinicalStatus` = `active` 
    - Korrektur des falsch hinterlegten Profils in Observation-TNM-V-Observation-2 (hier war L-Kategorie statt V-Kategorie hinterlegt)
    - Observation-mii-exa-onko-studienteilnahme: Korrektes Hinterlegen von system und display bei 'valueCodeableConcept.coding.code`= "Ja"
    - Observation-mii-exa-onko-weitere-klassifikationen-2: Code weiter spezifiziert von `385388004 |Ann Arbor Klassifkation|` auf `254373007 |Ann Arbor Hodgkin's disease tumor staging system (tumor staging)|`
    - Procedure-PatientKimMusterperson-Procedure-1: Einfügen der Imaging-Kategorie; Korrigieren des OPS-Codes von `3-222 Computertomographie des Thorax mit Kontrastmittel (Version 2024)` auf `3-225 Computertomographie des Abdomens mit Kontrastmittel (Version 2021)` 
    - Procedure-PatientKimMusterperson-Procedure-2: Einfügen einer Kategorie für Diagnostic Assessment, Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-Procedure-3: Einfügen der Imaging-Kategorie; Anpassen des Codes von `1-853.2 CT Thorax` auf `3-202 Native Computertomographie des Thorax`; Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-Procedure-4 und 4a-d: Korrigieren des Kategorien-Labels von "Operationen" auf "Surgical Procedure"; Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-SystemicTherapy-2 und -3: Einfügen der Kategorie `18629005 |Administration of drug or medicament (procedure)|`; Einfügen der Version bei OPS

## Änderungen in 2025.0.4 (veröffentlicht 28.03.2025)
- Nebenwirkung: Kardinalität des Elements AdverseEvent.event von 1..1 auf 0..1 gesenkt, da in den Krebsregisterdaten keine näheren Informationen zu CTCAE 0-2 gegeben werden. 
- Studienteilnahme: Korrektur eines falschen SNOMED-Codes auf der IG-Seite von 70709491003 auf 709491003(Code im Profil war korrekt)
- Strahlentherapie-Bestrahlung: ValueSet-Binding von Strahlenart, Applikationsart und Lokalisation von required auf extensible gesenkt. Hintergrund war, dass auch experimentelle Strahlentherapien kodierbar sein sollen, und dass historische Werte teilweise auf der alten Werteliste Zielgebiet_2014 basieren (siehe https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532594/oBDS_Zielgebiet2014_Typ)

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
