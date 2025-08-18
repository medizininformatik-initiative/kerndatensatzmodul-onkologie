---
parent: 
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet. 

## Änderungen Kommentierungs-Version 2026 (veröffentlicht 21.08.2025)

### Weitere Klassifikationen und Molekulare Tumorboards
- **Hierarchische Klassifikationssysteme**: Implementierung weiterer Klassifikationssysteme (BINET, Ann Arbor, ISS, WHO-Grad, etc.) als hierarchisches CodeSystem
  - **Grund**: Unterstützung hämatologischer und anderer spezifischer Klassifikationssysteme gemäß oBDS-Anforderungen
  - **Technische Umsetzung**: CodeSystem mit `descendant-of` ValueSet-Filtern für die jeweiligen Antwortmöglichkeiten, um hohe Anzahl eigener Profile zu vermeiden
  - **mCODE-Kompatibilität**: Integration des mCODE STU4 code+method+value Patterns für Staging-Observationen 

### Tumorkonferenz-Erweiterung
  - **Erweiterte {{pagelink:CarePlan}}** zur Unterstützung sowohl bisheriger oBDS-Darstellung der Tumorkonferenzen als auch komplexere Darstellung von Therapieempfehlungen wie im Modul Molekulares Tumorboard
  - **Grund**: FHIR R4 Invariant cpl-3 verhindert gleichzeitige Nutzung von `activity.detail.code` und `activity.reference`
  - **Lösung**: Activity-Slicing mit `obds` (Standard oBDS 19.1 Kategorisierung) und `extended` ({{pagelink:TherapieempfehlungKombinationstherapieRequestGroup}}-basierte Protokolle) Slices
  - **Rückwärtskompatibilität**: Bestehende oBDS-Implementierungen werden unverändert unterstützt

### Systemische Therapie Erweiterungen

#### Protokoll-Implementierung
- **usedCode-Implementierung**: Strukturierte Dokumentation von Therapieprotokollen in {{pagelink:SystemischeTherapieProcedure}}
  - **Grund**: Ablösung der unstrukturierten `note.text` Protokollangaben durch standardisierte Kodierung
  - **Umfang**: Vollständiges CodeSystem mit 96 Protokollen aus oBDS Umsetzungsleitfaden (FOLFOX, R-CHOP, AC, etc.)
  - **Technische Umsetzung**: `Procedure.usedCode` mit extensible Binding an Protokolle-ValueSet
  - **Substanzkombinationen**: Jedes Protokoll dokumentiert enthaltene Wirkstoffe (z.B. "AC" → "Cyclophosphamid, Doxorubicin")
  - **oBDS-Mapping**: Protokollfeld 16.6 im oBDS-Mapping nun auch zur Systemischen Therapie hinzugefügt (vorher nur in MedicationStatements)

#### UNII-Kodierung für experimentelle Substanzen
- **Dual-Coding-Support**: {{pagelink:SystemischeTherapieMedicationStatement}} erweitert um UNII-Slice zusätzlich zum bestehenden ATC-Slice
  - **Grund**: Unterstützung experimenteller/neuerer Substanzen ohne etablierte ATC-Codes
  - **Technische Umsetzung**: 
    - Neuer `unii` Slice auf MedicationStatement.medication mit extensible Binding an UNII-ValueSet
  - **ValueSet**: UNII-ValueSet mit 100+ UNII-Codes
  - **Beispiel**: Iberdomide (UNII: 8V66F27X44) als experimenteller Immunmodulator

#### ATC-Code Transitionen und Post-hoc Mapping
- **Dokumentation temporaler ATC-Änderungen**: Neue Dokumentation für Terminologie-Besonderheiten
  - **Quizartinib-Beispiel**: L01XE52 (bis 2020) → L01EX11 (ab 2021)
  - **Weitere Transitionen**: Abemaciclib, Acalabrutinib, Adalimumab dokumentiert

- **Post-hoc Mapping (kontrovers, daher optional)**: Empfehlung zur DIZ-basierte Freitext-zu-ATC-Annotation
  - **Erlaubt wenn**: Klare Provenance-Dokumentation vorhanden
  - **Verwendung aktueller Codes**: Bei Post-Annotation aktuelle ATC-Codes verwenden (nicht zwingend die historischen)
  - **Originaltext erhalten**: Im `medicationCodeableConcept.text` Element

### Operation-Profil Erweiterungen

#### Mehrteilige Eingriffe Unterstützung
- **OPS-Code Kardinalität**: Änderung von `code.coding[ops] 1..1` zu `code.coding[ops] 0..1`
  - **Grund**: GitHub Issue #194 - Unterstützung für mehrteilige Operationen mit mehreren OPS-Codes
  - **Lösung**: Zwei Modellierungsansätze dokumentiert:
    - Übergeordnete Procedure mit SNOMED CT Code + Teil-Procedures mit OPS-Codes
    - Gleichberechtigte Procedures bei unklarer Hierarchie
  - **Code-Anforderung**: Klarstellung dass jede Procedure einen Code haben MUSS (OPS oder SNOMED CT)
  - **Beispiel aktualisiert**: Kim Musterperson 4-teilige Operation demonstriert Ansatz mit SNOMED CT für Hauptprocedure
  - **Dokumentation**: Ausführliche Anleitung für `partOf`-Verknüpfung und gemeinsame Aspekte
  - **Harmonisierung**: Hinweis auf Schwierigkeit der post-hoc Harmonisierung bei komplexen Tumoroperationen

#### Urgency Extension (Art des Eingriffs)
- **Neue Extension**: {{pagelink:ExtensionUrgencyOperation}} zur Erfassung der Eingriffsmodalität
  - **Herkunft**: Ursprünglich aus KRK 6 oBDS 2021, aber universell auf alle Procedures anwendbar
  - **Wertebereich**: Elektiveingriff (E), Notfalleingriff (N), Unbekannt (U)
  - **Grund**: Qualitätssicherung und Risikostratifizierung - Notfalleingriffe haben andere Komplikationsraten
  - **Integration**: Extension in allgemeines {{pagelink:OperationProcedure}} Profil integriert für breite Anwendbarkeit

### Verlauf-Profil Anpassungen
- **Component-Kardinalität**: Änderung von `component 1..*` zu `component 0..*` im {{pagelink:AllgemeinerObservation}}
  - **Grund**: GitHub Issue #202 - Unterstützung für "K - keine Änderung" Fälle und hämatologische Krebsarten ohne TNM-Anwendbarkeit
  - **Betroffene Felder**: Tumor_Verlauf, Lymphknoten_Verlauf, Fernmetastasen_Verlauf bleiben 0..1

### Strahlentherapie Zielgebiet - oBDS 2014/2021 Kompatibilität
- **oBDS 2014 CodeSystem Integration**: Unterstützung für oBDS 2014 Zielgebiet-Definitionen zur Abwärtskompatibilität in {{pagelink:StrahlentherapieProcedure}}
  - **Grund**: oBDS 2021 führte architektonische Änderung ein - Trennung von Organ- und Lymphknotenkodierung
  - **oBDS 2014 Ansatz**: Kombinierte Kodierung mit `+`/`-` Suffixen (z.B. `"3.1.+"` = "Mamma mit Lymphknoten")
  - **oBDS 2021 Änderung**: Separate Kodierung - Organe (Sektionen 1-8) und dedizierte Lymphknotenregionen (Sektion 9)
  - **Technische Umsetzung**: Separates CodeSystem für Strahlentherapie-Zielgebiet-2014 - semantische Konflikte über Angabe der Version vermeidbar (2014 vs 2021)
  - **ValueSet Integration**: Erweiterte ValueSet für Strahlentherapie-Zielgebiet unterstützt beide CodeSystems
  - **Migration Pattern**: 2014 Einzelkodes → 2021 Mehrfachkodierung (z.B. `"3.1.+"` → `#3.1` + `#9.3`)

### Neue Profile zur Abdeckung der organspezifischen Module
- **Mamma**: Vollständige Implementierung des {{pagelink:MammaModule}}
  - **Estrogen-Rezeptorstatus**: {{pagelink:MammaEstrogenRezeptorstatus}} mit dualer Kodierung (oBDS/S3-Leitlinien) und Komponenten für Anteil positiver Zellen und Färbeintensität
  - **Progesteron-Rezeptorstatus**: {{pagelink:MammaProgesteronRezeptorstatus}} mit identischer Struktur zum Estrogen-Status
  - **Menopause-Status**: {{pagelink:MammaMenopauseStatus}} mit oBDS 2021-konformer Subsumierung (perimenopausal → prämenopausal)
  - **Präoperative Markierung**: {{pagelink:MammaPraeoperativeMarkierung}} für verschiedene Markierungsmodalitäten (Draht, Seeds, magnetisch)
  - **Mamma-Operation**: {{pagelink:MammaOperation}} mit SNOMED CT und OPS ValueSets
  - **Hinweise**: Her2Neu im Molecular Tumorboard-Profil; Tumorgröße im Histologie-Modul; Studienteilnahme in oBDS 2021 abgedeckt
- **Prostata**: Vollständige Implementierung des {{pagelink:ProstataModule}}
  - **PSA**: {{pagelink:ProstataPSA}} mit LOINC 2857-1 Kodierung
  - **Anzahl Stanzen**: {{pagelink:ProstataAnzahlStanzen}} (LOINC 33743-6)
  - **Anzahl positive Stanzen**: {{pagelink:ProstataAnzahlPositiveStanzen}} (LOINC 33746-9)
  - **Karzinom-Befall Stanze**: {{pagelink:ProstataKarzinomBefallStanze}} (LOINC 33748-5)
  - **Gleason Score/Grade Group**: {{pagelink:ProstataGleasonScoreGradeGroup}} (LOINC 44648-7)
  - **Gleason Patterns**: Primäre und sekundäre Gleason-Grad-Komponenten
  - **Clavien-Dindo**: {{pagelink:ProstataClavienDindo}} mit dualer Kodierung (SNOMED CT + oBDS)
- **Kolorektales Karzinom**: Vollständige Implementierung des {{pagelink:KRKModule}}
  - **Abstand Anokutanlinie**: {{pagelink:KRKAbstandTumorAnokutanlinie}} (oBDS KR1, LOINC 33748-5)
  - **Circumferelle Resektionsebene**: {{pagelink:KRKAbstandCircumferelleResektionsebene}} (oBDS KR3)
  - **Aboraler Resektionsrand**: {{pagelink:KRKAbstandResektionsrandAboral}} (oBDS KR2)
  - **MRT Mesorektale Faszie**: {{pagelink:KRKMRTMesorektale}} mit Abstandsmessung (oBDS KR2)
  - **ASA-Klassifikation**: {{pagelink:KRKASAKlassifikation}} (oBDS KR9, LOINC 97816-3)
  - **Anastomoseninsuffizienz**: {{pagelink:KRKAnastomoseninsuffizienz}} (oBDS KR8, SNOMED CT 235919008)
  - **KRK-Operation**: {{pagelink:KRKOperation}} mit TME-Qualitätsbewertung (oBDS KR4)
  - **KRK-Specimen**: {{pagelink:KRKSpecimen}} mit pathologischer TME-Qualität
  - **Stoma-Markierung**: {{pagelink:KRKStomaMarkierung}} (oBDS KR7)
  - **Bundle-Beispiel**: {{pagelink:KRKBundle}} demonstriert vollständigen KRK-Workflow
- **Malignes Melanom**: Vollständige Implementierung des {{pagelink:MelanomModule}}
  - **Breslow-Tiefe**: {{pagelink:MelanomBreslowTiefe}} (SNOMED CT 106243009)
  - **Ulzeration**: {{pagelink:MelanomUlzeration}} (oBDS MM4) 
  - **Sicherheitsabstand**: {{pagelink:MelanomSicherheitsabstand}} (oBDS MM1)
  - **LDH**: {{pagelink:MelanomLDH}} Laktatdehydrogenase als prognostischer Marker
  - **Melanom-Exzision**: {{pagelink:MelanomExzision}} mit SNOMED CT Codes für Hautexzisionen
  - **Bundle-Beispiel**: {{pagelink:MelanomBundle}} demonstriert vollständigen Melanom-Workflow

- **Bundle-Beispiele**: Für alle organspezifischen Module (Mamma, Prostata, KRK) stehen vollständige Transaktions-Bundles zur Verfügung, die alle zugehörigen Profile in einem server-konsumierbaren Format demonstrieren

--- 

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
