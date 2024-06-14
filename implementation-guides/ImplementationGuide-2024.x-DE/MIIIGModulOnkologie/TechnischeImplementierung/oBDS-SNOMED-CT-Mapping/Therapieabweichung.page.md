## {{page-title}}

Therapieabweichung gibt an, ob es zu einer Therapieabweichung auf Wunsch des Patienten kam. 


@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieabweichung-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```