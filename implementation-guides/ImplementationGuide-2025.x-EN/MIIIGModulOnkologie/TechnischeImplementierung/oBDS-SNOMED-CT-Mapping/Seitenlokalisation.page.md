## {{page-title}}

The lateral localization is used both in the coding of the primary tumor and in radiotherapy.

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-seitenlokalisation-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```