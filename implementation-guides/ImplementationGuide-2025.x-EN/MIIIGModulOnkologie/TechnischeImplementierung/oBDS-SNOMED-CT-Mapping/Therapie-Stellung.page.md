## {{page-title}}

The position on a surgical therapy is specified for both radiotherapy and systemic therapy.
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-stellung-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```