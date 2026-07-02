# Bezug zu nationalen Standards - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Bezug zu nationalen Standards

 
There is no translation page available for the current page, so it has been rendered in the default language 

### Bezug zu nationalen Standards

Beim beschriebenen Basisdatensatz Onkologie handelt es sich um einen Datensatz, der auf dem oBDS und damit den deutschen Krebsregister-Datenmodellen folgt.

#### Informationssysteme im Krankenhaus (ISiK)

ISiK beschreibt einen Standard, der für Krankenhaussysteme zum Austausch untereinander genutzt werden soll. ISiK selbst enthält wenige inhaltliche Vorgaben und Bindungen, die für die Erfassung von onkologischen Daten relevant sind. Durch die steigende Bedeutung im Krankenhaussektor wurde bei der Profilierung auf eine Konformität geachtet.

* Die Diagnose- und Prozedur-Profile sind Teil der ISiK-Basismodule: [https://simplifier.net/guide/isik-basis-v4?version=current](https://simplifier.net/guide/isik-basis-v4?version=current)
* Medikation ist Teil des ISiK-Medikationsmoduls: [https://simplifier.net/guide/isik-medikation-v4?version=current](https://simplifier.net/guide/isik-medikation-v4?version=current)

#### Medizinische Informationsobjekte (MIOs)

MIOs sind als strukturierte Datenelemente im Kontext der elektronischen Patientenakte (ePA) von Bedeutung. Der erste große Baustein soll dabei eine Bereitstellung von strukturierten Medikationsdaten sein. Zum Zeitpunkt der Erstellung der Profilierung (Jan.–Apr. 2024) befanden sich die Profile für Medikation / Medikationsplan noch in der Profilierung und konnten daher in der vorliegenden Spezifikation keine Berücksichtigung finden. Zu beachten ist dabei, dass die Medikationsliste und die Tumordokumentation momentan noch getrennte Ökosysteme sind. Eine langfristige Harmonisierung von vergleichbaren Profilen wird ab 2025 durch das KIG der gematik koordiniert und vorangetrieben. Der Implementierungsleitfaden für den „ePA Medication Service" befindet sich hier: [https://simplifier.net/guide/medication-service?version=1.1.0](https://simplifier.net/guide/medication-service?version=1.1.0). Link zum konkreten Profil EPA MedicationStatement: [https://simplifier.net/epa-medication/epamedicationstatement](https://simplifier.net/epa-medication/epamedicationstatement).

### Nationale Vorarbeiten

#### German OncoLogical Data Standard (GOLD)

Das Projekt GOLD wurde vom Vision-Zero e. V. initiiert und zielt auf die Abbildung einer kompletten onkologischen Patient Journey ab. Das Datenmodell und die dazugehörigen Profile wurden von existierenden Datenmodellen aus Versorgung, Forschung und Industrie in Deutschland und Ausland abgeleitet. Es wurden Vorschläge für die Harmonisierung verschiedener Spezifikationen erarbeitet und mit deutschen Experten abgestimmt. Die ersten FHIR-Profile mit Fokus auf Diagnose und Klassifikationen (wie die TNM-Klassifikation) sowie Bildgebung und Verlauf sind in mehrere weitere Projekte eingeflossen, z. B. Basisprofile Onkologie von HL7 Deutschland und das MII-Modul Befunde bildgebender Verfahren. Die aktuelle Version ist hier zu finden: [https://vision-zero-oncology.github.io/GOLD/](https://vision-zero-oncology.github.io/GOLD/).

#### Basisprofile Onkologie von HL7 Deutschland

In den Basisprofilen Deutschland wurden insbesondere 2022 Profilierungsarbeiten für eine Grundlage der einheitlichen Verwendung von FHIR-Ressourcen im onkologischen Sektor geliefert: [https://simplifier.net/BasisprofileOnkologie](https://simplifier.net/BasisprofileOnkologie). Die Arbeiten an den Basisprofilen ruhen seit der Kommentierung 2022. Mittlerweile verweisen die Basisprofile Onkologie der HL7 auf das hier vorliegende KDS-Modul Onkologie der MII.

#### Deutsches Konsortium für Translationale Krebsforschung (DKTK)

Das interne Datenmodell der DKTK nutzt aus den Tumordokumentationssystemen aufbereitete oBDS-Daten im FHIR-Format als Austauschmedium (erreichbar unter [https://simplifier.net/oncology](https://simplifier.net/oncology)). Das ursprüngliche Informationsmodell des KDS-Moduls Onkologie war stark am DKTK-Modell orientiert. Die Profilierung unterscheidet sich jedoch insofern, als dass die DKTK-Profile in sich abgeschlossen sind, während ein MII-Modul möglichst gut mit den MII-Basismodulen (v. a. Diagnose, Prozedur, Medikation) und bereits bestehenden KDS-Modulen arbeiten soll. Daher war eine der Hauptmodellierungsentscheidungen die Verwendung der MII-Diagnose und MII-Medikation sowie die Darstellung von OPs, Strahlentherapien und Systemischen / abwartenden Therapien als MII-Prozeduren.

#### Modellvorhaben Genomsequenzierung

Das Modellvorhaben Genomsequenzierung nach § 64e SGB V sieht die Erhebung eines Datenkranzes bei einer Next-Generation-Sequenzierung (NGS) von onkologischen Patienten vor. Der Datenkranz beinhaltet dabei Informationen zur diagnostischen und therapeutischen Vorgeschichte, der molekulargenetischen Beschreibung des Tumors, den Empfehlungen zu Studienteilnahmen und systemischen Therapien sowie Follow-up-Informationen zu tatsächlich durchgeführten Therapien und Therapieansprechen / Vitalstatus.

Es gibt einen ähnlichen Datenkranz für Seltene Erkrankungen, der zukünftig im Modul Seltene Erkrankungen abgebildet wird. Das zugehörige Informationsmodell ist als Logical Model [MII LM Modellvorhaben Genomsequenzierung Onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.md) hinterlegt.

Ein Mapping der Datenelemente auf den MII KDS ist derzeit in Arbeit und als ConceptMap [MII Concept Map Modellvorhaben Genomsequenzierung Onkologie](ConceptMap-mii-cm-onkologie-to-mvgenomseq.md) bereitgestellt (Felder MII-KDS-Code/-Display, MVGenomSeq-Code/-Display, Äquivalenz und Kommentar).

