<!-- TODO:REVIEW Die Quellseite trug die Ueberschrift "Extensions von Operation"; sie passt inhaltlich nicht zu dieser Extension (mutmasslicher Copy-Paste-Fehler) und wurde daher nicht uebernommen. -->

- Diese Extension ersetzt den vorherigen ICD-O-3-Slice in der MII-Diagnose.
- In der ursprünglichen Profilierung wurde auf dem ICD-O-3-Slice des `Condition.code`-Elements aufgebaut. Gleichzeitig enthält das `Condition.code`-Feld auch die ICD-10-Kodierung der onkologischen Diagnose. In der Kommentierungsphase wurde jedoch angemerkt, dass eine ICD-O-3-Morphologie ein inhaltlich anderes klinisches Konzept beschreibt als eine ICD-10-kodierte Diagnose. Eine Darstellung im gleichen CodeableConcept widerspricht daher gängigen FHIR-Modellierungskonventionen. Daher wurde sich für eine Modellierung als Extension vergleichbar mit mCode entschieden. Die Abbildung der ICD-O-3-Topographie über `Condition.bodySite` ist davon nicht beeinträchtigt. Weitere Histologien, die im Rahmen einer Verlaufskontrolle vorgenommen werden, sollen weiterhin über das Verlaufshistologieprofil (Observation.bodySite und Observation.valueCodeableConcept) abgebildet werden; die vorliegende Extension findet darin keine Verwendung.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Diagnose/Extension-ICD-O-3-Morphologie.page.md gate=B -->
> Das Verlaufshistologieprofil ist in der Artefaktdarstellung beschrieben: [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.html).
{: .ig-highlight .ig-highlight-grey}
