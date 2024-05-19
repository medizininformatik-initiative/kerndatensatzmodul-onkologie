---
parent: 
---

## {{page-title}}
Das Modul Onkologie dient der Erfassung von Datenpunkten. 
In seiner ersten Version orientiert sich das Modul am ADT/GEKID Basisdatensatz, der die Basis für die nationalen Krebsregister bildet. Das umfasst diagnostische und histologische Parameter sowie Angaben zu Behandlung, Tumor-Staging zu Beginn und im Verlauf, sowie die Erfassung von Nebenwirkungen und Erkennung von Metastasen. 


### Inhalt und Zweck der Modellierung
Das Erweiterungsmodul Onkologie hat den Ziel, die onkologischen Daten, die in der Primärversorgung und bei der Krebsregistermeldung anfallen, korrekt abzubilden und mit anderen Datenquellen in Beziehung zu bringen.  

Fokus der ersten Implementierungsversion ist die Überführung der im oBDS anfallenden Registerdaten für die Sekundärdatennutzung mit dem FDPG und anderen Projekten im Rahmen von PM4Onko. Daher sind in dieser ersten Version nur die Datenpunkte enthalten, die klinisch-diagnostische oder therapeutischen Charakter haben. Administrative (z.B. Meldung, Melder) oder personenidentifizierende (Person, Tumorzuordnung) Datenpunkte sind nicht innerhalb des Betrachtungsrahmens. 

Der oBDS sieht neben dem Basisdatensatz eine Erhebung von organspezifischen Datenfeldern vor. 
Im ersten Umsetzungsschritt wurde auf die Umsetzung der organspezifischen Module (Mamma, Darm, Prostata, Melanom) verzichtet. 


### Mapping auf offene Datenstandards

Der onkologischen Basisdatensatz enthält ValueSets, die primär durch ADT/GEKID definiert wurden und keinen direkten Bezug zu offenen Datenstandards und -terminologien wie SNOMED-CT oder LOINC haben. 
Die Kodierung der Antwortmöglichkeiten wurden in der gleichen Art und Weise übernommen, wie Sie auch in den Primärsystemen vorliegen. 
Gleichzeitig stellt dieser Implementierungsleitfaden ein vorläufiges Mapping der Felder und Antwortmöglichkeiten auf SNOMED-CT (sowie ggfs. anderer Terminologien) als FHIR ConceptMap bereit. 
Die Landeskrebsregister streben mit dem BfArM für Ende 2024 die Erstellung eines offiziellen nationalen Mappings der oBDSKrebsregisterdaten auf SNOMED-CT an. 
Sobald dieses offiziell veröffentlicht ist, wird das hier enthaltene Mapping entsprechend geupdated. 


