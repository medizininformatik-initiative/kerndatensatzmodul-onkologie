# Datensätze und Beschreibungen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Datensätze und Beschreibungen

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Datensätze und Beschreibungen

Der Datensatz basiert auf dem onkologischen Basisdatensatz (oBDS, siehe [Referenzen](references.md)).

In der Umsetzung wurde der Fokus auf die Umwandlung der bei der Registermeldung anfallenden Datenpunkte in FHIR-Ressourcen für das FDPG zur Sekundärdatennutzung gelegt. Daher sind Meldungs- und personenbezogene Daten des oBDS nicht enthalten.

Das formale Informationsmodell wird als FHIR Logical Model bereitgestellt. Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen; dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1-Mapping auf ein Element einer konkreten FHIR-Ressource.

### Basis-Onkologie Logical Model

Vollständige Definition: [MII LM Onkologie](StructureDefinition-mii-lm-onko.md).

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

### Organspezifische Zusatzmodule

Die organspezifischen Module (Mamma, Prostata, Kolorektales Karzinom, Malignes Melanom) erweitern das Basis-Onkologie-Modul um entitätsspezifische Datenelemente gemäß den ADT/GEKID-Anforderungen. Vollständige Definition: [MII LM Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.md).

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

### Modellvorhaben Genomsequenzierung

Das Modellvorhaben Genomsequenzierung nach § 64e SGB V definiert zusätzliche Datenelemente für die Next-Generation-Sequenzierung (NGS) bei onkologischen Patienten. Vollständige Definition: [MII LM Modellvorhaben Genomsequenzierung Onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.md).

Guidance on how to interpret the contents of this table can be found[here](https://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#data-dictionaries)

Ein Mapping der Datenelemente des Modellvorhabens auf den MII KDS ist als ConceptMap [MII Concept Map Modellvorhaben Genomsequenzierung Onkologie](ConceptMap-mii-cm-onkologie-to-mvgenomseq.md) bereitgestellt (in Arbeit).

### Model-to-Profile-Mapping

Gemäß HL7-Europe-Best-Practice wird die Rückverfolgbarkeit vom Informationsmodell zu den FHIR-Profilen hergestellt. Das Basis-Logical-Model `mii-lm-onko` enthält je Element ein formales FHIR-Mapping (Mapping-Name „FHIR"), das auf den Artefaktseiten der Logical Models (Tab „Mappings") einsehbar ist. Die zugehörigen Profile sind unter [Artefakte](artifacts.md) nach oBDS-Gruppen strukturiert aufgeführt (u. a. Diagnose, Histologie, TNM-Klassifikation, Residualstatus, Fernmetastasen, Allgemeiner Leistungszustand, Operation, Strahlentherapie, Systemische Therapie, Nebenwirkung, Verlauf, Tumorkonferenz, Tod, Genetische Variante, Studienteilnahme sowie die organspezifischen Module).

TODO:REVIEW — Optionale redaktionelle Gesamt-Mappingtabelle (Logical-Model-Element → FHIR-Profil/-Element) ergänzen, falls über die formalen FHIR-Mappings der Logical Models hinaus gewünscht.

