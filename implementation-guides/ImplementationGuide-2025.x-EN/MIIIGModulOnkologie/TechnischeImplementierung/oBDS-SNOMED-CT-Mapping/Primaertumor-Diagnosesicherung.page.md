## {{page-title}}

The specification of diagnostic certainty is slightly redundant due to recent changes. The information on clinical diagnostics can be specified more precisely.

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-primaertumor-diagnosesicherung-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```