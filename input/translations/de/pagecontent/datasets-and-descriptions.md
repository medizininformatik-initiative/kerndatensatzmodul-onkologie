<!-- markdownlint-disable MD041 -->
<!-- Quelle: MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md.
     Englische Fassung: input/pagecontent/datasets-and-descriptions.md — beide
     Sprachfassungen synchron halten. -->

Der Datensatz basiert auf dem onkologischen Basisdatensatz (oBDS, siehe Referenzen).

<!-- TODO:REVIEW Der folgende Satz ist bereits in der Quellseite unvollständig (fehlendes Prädikat) und wurde wortgetreu übernommen. -->
In der Umsetzung wurde der Fokus auf die Umwandlung der bei der Registermeldungdaten anfallenden Datenpunkte
in FHIR-Ressourcen für das FDPG für die Sekundärdatennutzung

Daher sind Meldungs- und personenrelevante Daten des oBDS nicht enthalten.

### Basis-Onkologie Logical Model

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
Die Struktur des Logical Models sowie Pfad und Beschreibung der einzelnen
Datenelemente sind auf der Artefaktseite
[MII LM Onkologie](StructureDefinition-mii-lm-onko.html) dargestellt.

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

### Organspezifische Zusatzmodule

Die organspezifischen Module (Mamma, Prostata, Kolorektales Karzinom, Malignes Melanom) erweitern das Basis-Onkologie-Modul um entitätsspezifische Datenelemente gemäß den ADT/GEKID-Anforderungen:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
Die Struktur des Logical Models sowie Pfad und Beschreibung der einzelnen
Datenelemente sind auf der Artefaktseite
[MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html)
dargestellt.

### Modellvorhaben Genomsequenzierung

Das Modellvorhaben Genomsequenzierung nach §64e SGB V definiert zusätzliche Datenelemente für die Next-Generation-Sequenzierung (NGS) bei onkologischen Patienten:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
Die Struktur des Logical Models sowie Pfad und Beschreibung der einzelnen
Datenelemente sind auf der Artefaktseite
[MII LM MV Genomsequenzierung Onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.html)
dargestellt.
