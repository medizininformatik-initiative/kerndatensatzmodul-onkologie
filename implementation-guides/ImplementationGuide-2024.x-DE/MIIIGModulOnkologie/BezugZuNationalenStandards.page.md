## {{page-title}}



Beim beschriebenen Basisdatensatz Onkologie handelt es sich um einen Datensatz, der auf dem oBDS und damit den deutschen Krebsregister-Datenmodellen folgt. 


---
#### Informationssysteme im Krankenhaus(ISiK)
ISiK beschreibt einen Standard, der für Krankenhaussysteme zum Austausch untereinander genutzt werden soll. 
ISiK selbst enthält wenige Inhaltliche Vorgaben und Binding, die für die Erfassung von onkologischen Daten relevant sind. Durch die steigende Bedeutung im Krankenhaussektor wurde bei der Profilierung auf eine Konformität geachtet. 
- Die Diagnose- und Prozedur-Profile sind Teil der ISiK-Basismodule https://simplifier.net/guide/isik-basis-v4?version=current
- Medikation ist Teil des ISiK-Medikationsmoduls https://simplifier.net/guide/isik-medikation-v4?version=current 


#### Medizinische Informationsobjekte (MIOs) 
MIOs sind als strukturierte Datenelemente im Kontext der elektronischen Patientenakte (ePA) von Bedeutung. Der erste große Baustein soll dabei eine Bereistellung von strukturierten Medikationsdaten Zum Zeitpunkt der Erstellung der Profilierung (Jan-Apr 2024) befanden sich die Profile für Medikation / Medikationsplan noch in der Profilierung und konnten daher in der vorliegenden Spezifikation keine Berücksichtigung finden. Zu beachten ist dabei aber, dass die Medikationsliste und die Tumordokumentation momentan noch getrennte Ökosysteme sind. Eine langfriste Harmonisierung von vergleichbaren Profilen wird ab 2025 durch das KIG der gematik koordiniert und vorangetrieben.
Der Implementierungsleitfaden für den "ePA Medication Service" befindet sich hier: https://simplifier.net/guide/medication-service?version=1.1.0
Link  konkrete Profil EPA MedicationStatement https://simplifier.net/epa-medication/epamedicationstatement 

---


### Nationale Vorarbeiten 

#### German OncoLogical Data Standard (GOLD) 
Das Projekt GOLD befasst sich als Teil der Vison Zero Oncology oncology . Das Datenmodell und die dazugehörigen Profile wurden von existierenden Datenmodellen abgeleitet und mit deutschen Experten abgestimmt. Gleichzeitig wurden Anstrengungen in Richtung einer semantischen Harmonisierung von verschiedenen Datenmodellen aus Forschung und Industrie unternommen. 
Die ersten Profile haben den Fokus auf Diagnose und Klassifikationen, wie die TNM-Klassifikation. Die aktuelle Version ist hier zu finden: https://vision-zero-oncology.github.io/GOLD/



#### Basisprofile Onkologie von HL7 Deutschland)
In den Basisprofilen Deutschland wurden insb. 2022 Profilierungsarbeiten für eine Grundlage der einheitlichen Verwendung von FHIR-Ressourcen im onkologischen Sektor geliefert. https://simplifier.net/BasisprofileOnkologie
Die Arbeiten an den Basisprofilen ruhen seit der Kommentierung 2022. Mittlerweile verweisen die Basisprofile Onkologie der HL7 auf das hier vorliegende Erweiterungsmodul Onkologie der MII.  

#### Deutsches Konsortium für Translationale Krebsforschung
Das interne Datenmodell der DKTK nutzt aus den Tumordokumentationssystemen aufbereitete oBDS-Daten im FHIR-Format als Austauschmedium. (erreichbar unter https://simplifier.net/oncology)  Das ursprüngliche Informationsmodell des Erweiterungsmodu ls Onkologie war stark am DKTK-Modell orientiert. Die Profilierung unterscheidet sich jedoch insofern, als dass die DKTK-Profile in sich abgeschlossen sind, während ein MII-Modul möglichst gut mit den MII-Basismodulen (v.a. Diagnose, Prozedur, Medikation) und bereits bestehenden Erweiterungsmodulen arbeiten soll. Daher war einer der Hauptmodellierungsentscheidungen die Verwendung der MII-Diagnose und MII-Medikation, sowie die Darstellung von OPs, Strahlentherapien und Systemischen / abwartenden Therapien als MII-Prozeduren.  