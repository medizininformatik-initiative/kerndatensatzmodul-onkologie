## {{page-title}}

Die Angabe der Diagnosesicherung ist durch die letzten Änderungen leicht redundant. Die Angaben zur klinischen Diagnostik können genauer spezifiziert werden. 

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-primaertumor-diagnosesicherung-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```