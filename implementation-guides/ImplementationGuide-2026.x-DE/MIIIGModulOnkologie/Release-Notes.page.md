---
parent: 
topic: ReleaseNotes
---

## {{page-title}}
Hier sind alle Änderungen aufgelistet. 

## Änderungen v2026.0.3 (veröffentlicht 27.03.2026)

### Technische Verbesserungen

- `fix` Package-Erstellung auf macOS korrigiert: `COPYFILE_DISABLE=1` beim tar-Aufruf verhindert AppleDouble (`._`)-Datei-Kontamination (v2026.0.2 enthielt 490 solcher Dateien)
- `fix` Abhängigkeiten aktualisiert: biobank `2026.0.1`, medikation `2026.0.1`, studie `2026.0.2`
- `chore` Firely Terminal auf 3.5.0 aktualisiert

---

## Änderungen v2026.0.2 (veröffentlicht 10.03.2026)

### Terminologie

- `feat` ATC-DE 2026 ValueSet aktualisiert: 23 neue Codes hinzugefügt, neue Substanzklasse L01EP (c-MET-Inhibitoren)
- `fix` 27 ATC Display-Namen korrigiert (WIdO-validiert)
- `feat` ATC-Code Transitions-ConceptMap für 2026 aktualisiert

### Technische Verbesserungen

- `fix` advisor.json Suppressionen für externe TX-Server Fehler erweitert

---

## Änderungen v2026.0.1 (veröffentlicht 05.02.2026)

### Abhängigkeiten

- `fix` Modul-Studie Abhängigkeit auf 2026.0.2 aktualisiert
- `fix` ResearchStudy Beispiel wiederhergestellt

### Technische Verbesserungen

- `fix` ig.ini an umbenannte IG-Ressource angepasst (v2025→v2026)
- `fix` MII IG Namenskonventionen für 2026 Release angewendet
- `fix` Bezeichnung 'Erweiterungsmodul' durch 'KDS-Modul' gemäß MII-Richtlinien ersetzt

---

## Änderungen v2026.0.0 (veröffentlicht 03.01.2026)

### ⚠️ Breaking Changes

Diese Änderungen erfordern möglicherweise Anpassungen in bestehenden Implementierungen:

- **`BREAKING`** Canonical URL des Strahlentherapie Applikationsart ValueSets von `mii-vs-onko-sstrahlentherapie-applikationsart` auf `mii-vs-onko-strahlentherapie-applikationsart` korrigiert (Tippfehler-Korrektur). Bestehende Referenzen müssen aktualisiert werden. [[HDB-708](https://hl7germany.atlassian.net/browse/HDB-708), [#219](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/219)]
- **`BREAKING`** CodeSystem-URLs für therapie-ende-grund und therapie-stellungzurop korrigiert. Bestehende Referenzen müssen aktualisiert werden.

### Neue Profile und Funktionalität

- `feat` **Frühere Tumorerkrankungen Profil**: Neues {{pagelink:FruehereTumorerkrankungCondition}} Profil zur Erfassung anamnestischer Tumorerkrankungen mit Mapping zu oBDS 5.9
  - **Basis**: FHIR Condition (nicht MII Diagnose) für flexible Freitexterfassung
  - **Kodierung**: code.text verpflichtend (1..1), code.coding[icd10-gm] optional (0..1)
  - **Optionale Elemente**: ICD-O-3 Topographie, Morphologie-Extension, assertedDate, clinicalStatus
  - **Integration**: condition-occurredFollowing Extension im Primärtumor-Profil für Verlinkung zu früheren Tumorerkrankungen
  - **Beispiele**: Vier Instanzen demonstrieren verschiedene Szenarien inklusive reiner Freitext-Dokumentation
- `feat` PRO-B Studienteilnahme-Beispiel mit ResearchStudy-Referenz zur Demonstration der Integration mit dem Forschungsvorhaben-Modul
- `feat` QA Validierungsseite zur Dokumentation der Qualitätssicherungsprozesse hinzugefügt

### Refaktorierungen

- `refactor` **ASA-Klassifikation**: Vom KRK-Modul in das Allgemeiner Leistungszustand Profil verschoben für breitere Anwendbarkeit über verschiedene Tumorentitäten hinweg

### Validierung und Qualitätsverbesserungen

- `fix` Package-Abhängigkeiten auf 2026.0.0-ballot Versionen aktualisiert (studie, biobank, molgen) um fehlende Snapshots zu beheben
- `fix` advisor.json Suppressionen für IG Parameter-Code Validierung erweitert
- `fix` MedDRA-Slice zum AdverseEvent-Profil hinzugefügt und explizite MedDRA-Codes zum ValueSet für Validierung ergänzt
- `fix` SNOMED-Code durch MedDRA-Code für Neuropathie-AdverseEvent ersetzt (präzisere Kodierung von Nebenwirkungen)
- `fix` HER2 ISH LOINC-Code auf korrekten FISH-Test geändert für präzisere Laborwerterfassung
- `fix` Neun fehlende Profile zum CapabilityStatement hinzugefügt für vollständige Server-Capability-Dokumentation
- `fix` capabilitystatement-expectation Extension aus Profile RuleSet entfernt (verursachte Validierungsfehler)

### Display-Namen und Terminologie-Korrekturen

- `fix` OPS- und SNOMED-CT Display-Namen in diversen Beispielen korrigiert (Sigmoidresektion, Right-Hemikolektomie, KRK-Operation, etc.)
- `fix` CodeSystem-URLs für therapie-ende-grund und therapie-stellungzurop korrigiert
- `fix` ATC Display-Namen für Folinsäure und Trastuzumab korrigiert
- `fix` TNM-Code und Verlauf Display-Namen korrigiert
- `fix` Residualstatus Display-Namen korrigiert
- `fix` FUFOL durch LV5FU2 ersetzt mit korrektem OPS Display-Namen

### oBDS-Mapping Verbesserungen

- `fix` oBDS-Mapping zur Operation Urgency Extension und Dokumentation hinzugefügt
- `fix` Korrektes oBDS-Mapping zum Tumorgröße-Profil hinzugefügt und Dokumentationsseite erstellt
- `fix` oBDS-Mapping zum Prostata PSA-Profil hinzugefügt

### Beispieldaten-Korrekturen

- `fix` Fehlende OPS-Versionen zu diversen Procedure-Instanzen hinzugefügt (palbociclib-therapie, pertuzumab-therapie, Strahlentherapie-Beispiele, etc.)
- `fix` [ops] Slice-Notation zu allen OPS code.coding in example-patient-1 hinzugefügt
- `fix` Fehlende SNOMED-CT Codes und Kategorien zu Procedure-Beispielen hinzugefügt
- `fix` Instanztyp von Procedure zu MedicationRequest für Tumorkonferenz-Beispiele korrigiert
- `fix` Ungültige SNOMED-Codes aus KRK-Operation entfernt
- `fix` Bundle-Typ von collection zu transaction für ECOG und Karnofsky Beispiele geändert
- `fix` Verpflichtende fullUrl zu Bundle-Einträgen in Beispielen hinzugefügt
- `fix` Verpflichtende diagnostic certainty und encounter zu Melanom-Diagnose hinzugefügt
- `fix` ICD-O-3 Display-Namen in Frühere Tumorerkrankung Beispielen korrigiert
- `fix` PRO-B ResearchStudy focus auf korrekten SNOMED-Code aktualisiert
- `fix` TKI-Beispiel Therapieempfehlung korrigiert
- `fix` Systemische Therapie Beispiel-Kategorie korrigiert

### ATC-Code Transitionen

- `feat` ATC-Code Transitionsbeispiele hinzugefügt und Display-Namen korrigiert zur Demonstration temporaler ATC-Änderungen (z.B. Imatinib, Quizartinib)
- `feat` Umfassende ATC-Code Transitions-Dokumentation und ConceptMaps hinzugefügt
- `feat` Protokoll- und Medikations-Tracking für Kombinationstherapie-Empfehlungen ergänzt

### Therapieempfehlung Medikation Erweiterung

- `improve` **reasonReference erweitert**: `MII_PR_Onko_Therapieempfehlung_Medikation` (MedicationRequest) erlaubt nun neben der Pflicht-Referenz auf `MII_PR_Onko_Diagnose_Primaertumor` auch Referenzen auf `Condition` und `Observation` zur Unterstützung zusätzlicher klinischer Begründungen für Therapieempfehlungen

### Technische Verbesserungen

- `chore` Version auf 2026.0.0-rc.1 aktualisiert
- `chore` .validation-history zu gitignore hinzugefügt
- `chore` Generierte CapabilityStatement und ECOG-Dateien aktualisiert
- `feat` UML-Diagramme aktualisiert und PlantUML Auto-Rendering Workflow hinzugefügt
- `fix` FHIRPath Typ-Vergleich in ECOG und Karnofsky Constraints korrigiert
- `fix` ECOG und Karnofsky Constraint Validierungsausdrücke verbessert
- `chore` Simplifier Build-Skript hinzugefügt und molgen Dependency aktualisiert

### Weitere Verbesserungen

- `improve` Dinatriumfolinat/Natriumfolinat zu Systemische Therapie Substanzen ValueSets hinzugefügt: UNII-Code für Leucovorin Sodium (4MXU9LJS4Q) und ATC-Code V03AF06 (Natriumfolinat). Dokumentation auf Terminologie-Seite aktualisiert. [[HDB-628](https://hl7germany.atlassian.net/browse/HDB-628)]
- `documentation` Fehlerhafte interne Dokumentationslinks (pagelinks) korrigiert, die nach Export von Simplifier zur MII-Homepage nicht funktionierten: Topic-Namen in Kommentierungs-Seite, Operation-Profile und Extension-Dokumentation aktualisiert. [[HDB-646](https://hl7germany.atlassian.net/browse/HDB-646)]
- `improve` Kardinalität von `Observation.code` im Residualstatus-Profil explizit auf `1..1` gesetzt für bessere Verständlichkeit. [[HDB-707](https://hl7germany.atlassian.net/browse/HDB-707), [#220](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/220)]
- `documentation` Beschreibung des Melanom Sicherheitsabstand Profils vervollständigt und Handhabung von nicht beurteilbaren Fällen dokumentiert. [[HDB-705](https://hl7germany.atlassian.net/browse/HDB-705), [#222](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/222)]
- `documentation` GOLD-Projektbeschreibung auf Seite "Bezug zu nationalen Standards" aktualisiert. [[HDB-711](https://hl7germany.atlassian.net/browse/HDB-711), [#216](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/216)]
- `improve` Optionale Specimen-Referenz (0..1) zum Genetische Variante Profil hinzugefügt. [[HDB-712](https://hl7germany.atlassian.net/browse/HDB-712), [#215](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/215)]
- `improve` Klarstellung der Datums-Semantik in Verlaufshistologie und Specimen Profilen: `Observation.effectiveDateTime` bezeichnet "Datum der histologischen Untersuchung", während `Specimen.collection.collectedDateTime` das "Datum der Probenentnahme" (oBDS 6.1 "Tumor Histologiedatum") darstellt. Labels, oBDS-Mappings und UML-Diagramme entsprechend aktualisiert. Verpflichtende 1..1 Specimen-Referenz im UML-Diagramm visualisiert. [[HDB-714](https://hl7germany.atlassian.net/browse/HDB-714), [#233](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/233)]
- `documentation` Hinweis auf Vererbung vom MII KDS Modul Diagnose zur Beschreibung des Diagnose Primärtumor Profils hinzugefügt. [[HDB-701](https://hl7germany.atlassian.net/browse/HDB-701), [#227](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/227)]
- `documentation` Beschreibungen der TNM c/p/u-Präfix Extension und ValueSet verbessert mit Erklärungen der Klassifikationsmethoden. [[HDB-699](https://hl7germany.atlassian.net/browse/HDB-699), [#229](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/229)]
- `fix` SNOMED CT Versions-URI-Syntax in ConceptMap mii-cm-onko-krk-stoma-obds-sct korrigiert: Versionierte URI von `target` nach `targetVersion` verschoben. [[HDB-702](https://hl7germany.atlassian.net/browse/HDB-702), [#226](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/226)]
- `documentation` Beschreibung und Definition im Prostata Operation Profil korrigiert um Binding-Stärke korrekt als `required` (statt `preferred`) zu reflektieren. [[HDB-706](https://hl7germany.atlassian.net/browse/HDB-706), [#224](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/224)]
- `documentation` UCUM Hinweistext in Lymphknoten-Zählprofilen verbessert für bessere Klarheit über verpflichtenden UCUM Code 1. [[HDB-700](https://hl7germany.atlassian.net/browse/HDB-700), [#228](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/228)]
- `improve` LOINC Slices zu Karnofsky und ECOG Leistungszustand Profilen hinzugefügt für bessere internationale Interoperabilität. [[HDB-689](https://hl7germany.atlassian.net/browse/HDB-689), [#236](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/236)]
- `improve` Strahlentherapie Applikationsart von `Procedure.usedCode` zu Standard-Extension `procedure-method` verschoben für semantisch korrektere Modellierung. [[HDB-682](https://hl7germany.atlassian.net/browse/HDB-682), [#238](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/238)]
- `documentation` MII Modul Forschungsvorhaben zum UML-Diagramm "Profile - Beziehungen und Referenzen" hinzugefügt zur Darstellung der optionalen Integration mit Forschungsprojekten. [[HDB-715](https://hl7germany.atlassian.net/browse/HDB-715), [#232](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/232)]
- `improve` Mamma Operation Profil um strukturierte `usedCode` Slices für intraoperatives Präparatröntgen/Sonografie (M6) und präoperative Drahtmarkierung (M5) mit entsprechenden ValueSets erweitert. [[HDB-653](https://hl7germany.atlassian.net/browse/HDB-653), [#243](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/243)]
- `improve` Prostata PSA LOINC ValueSet mit korrekten LOINC Display-Namen erstellt: Total-PSA (generisch und per Immunoassay), freies PSA (generisch und per Immunoassay) und ultrasensitives PSA (Nachweisgrenze ≤ 0.01 ng/mL). [[HDB-688](https://hl7germany.atlassian.net/browse/HDB-688), [#235](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/235)]
- `improve` Her2neu Status Profil für Mamma-Modul mit dualer Kodierungsstrategie implementiert: oBDS-Spezifikation (P/N/U) und S3-Leitlinie/ASCO-CAP Guidelines (positiv/low/ultralow/negativ/equivocal) mit IHC Score und ISH Result Komponenten für moderne HER2-low Therapieansätze.

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

### {{pagelink:OperationProcedure}} Erweiterungen

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
- **Malignes Melanom**: Vollständige Implementierung des {{pagelink:MalignesMelanomModule}}
  - **Breslow-Tiefe**: {{pagelink:MelanomBreslowTiefe}} (SNOMED CT 106243009)
  - **Ulzeration**: {{pagelink:MelanomUlzeration}} (oBDS MM4) 
  - **Sicherheitsabstand**: {{pagelink:MelanomSicherheitsabstand}} (oBDS MM1)
  - **LDH**: {{pagelink:MelanomLDH}} Laktatdehydrogenase als prognostischer Marker
  - **Melanom-Exzision**: {{pagelink:MelanomExzision}} mit SNOMED CT Codes für Hautexzisionen
  - **Bundle-Beispiel**: {{pagelink:MelanomBundle}} demonstriert vollständigen Melanom-Workflow

- **Bundle-Beispiele**: Für alle organspezifischen Module ({{pagelink:MammaBundle}}, {{pagelink:ProstataBundle}}, {{pagelink:KRKBundle}}, {{pagelink:MelanomBundle}}) stehen vollständige Transaktions-Bundles zur Verfügung, die alle zugehörigen Profile in einem server-konsumierbaren Format demonstrieren

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
