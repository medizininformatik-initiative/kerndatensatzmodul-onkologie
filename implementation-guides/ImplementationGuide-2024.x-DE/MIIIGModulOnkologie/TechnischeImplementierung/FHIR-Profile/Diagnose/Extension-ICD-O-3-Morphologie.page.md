---
parent: 
topic: HistologyMorphologyBehaviourExtension
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3
---

## Extensions von Operation

- Diese Extension ersetzt den vorheringen ICD-O-3-Slice in der MII-Diagnose. 
- In der ursprünglichen Profilierung wurde auf demICD-O-3-Slice des `Condition.code`-Elements aufgebaut. Gleichzeitig enthält das `Condition.code`-Feld auch die ICD-10-Kodierung der onkologischen Diagnose. In der Kommentierungsphase wurde jedoch angemerkt, dass eine ICD-O-3-Morphologie ein inhaltlich anderes klinisches Konzept beschreibt als eine ICD-10-kodierte Diagnose. Ein Darstellung im gleichen CodeableConcept widerspricht daher gängigen FHIR-Modellierungskonventionen. Daher wurde sich für eine Modellierung als Extension vergleichbar mit mCode entschieden. Die Abbildung der ICD-O-3-Topographie über `Condition.bodySite` ist davon nicht beeinträchtigt. Weitere Histologien, die im Rahmen einer Verlaufskontrolle vorgenommen werden, sollen weiterhin über das Verlaufshistologieprofil (Observation.bodySite und Observation.valueCodeableConcept) abgebildet werden;  die vorliegende Extension findet darin keine Verwendung. 


### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3}}</tab>
  <tab title="Beschreibung"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---
