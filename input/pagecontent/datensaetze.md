## Datensätze inkl. Beschreibungen

Der Datensatz basiert auf dem onkologischen Basisdatensatz (oBDS, siehe Referenzen). 

In der Umsetzung wurde der Fokus auf die Umwandlung der bei der Registermeldungdaten anfallenden Datenpunkte 
in FHIR-Ressourcen für das FDPG für die Sekundärdatennutzung 

Daher sind Meldungs- und personenrelevante Daten des oBDS nicht enthalten. 

### Basis-Onkologie Logical Model

 

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

### Organspezifische Zusatzmodule

Die organspezifischen Module (Mamma, Prostata, Kolorektales Karzinom, Malignes Melanom) erweitern das Basis-Onkologie-Modul um entitätsspezifische Datenelemente gemäß den ADT/GEKID-Anforderungen:

### Modellvorhaben Genomsequenzierung

Das Modellvorhaben Genomsequenzierung nach §64e SGB V definiert zusätzliche Datenelemente für die Next-Generation-Sequenzierung (NGS) bei onkologischen Patienten:

<br><br>
