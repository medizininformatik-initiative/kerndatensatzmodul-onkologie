## {{page-title}}

The anatomical structures can be well represented via SNOMED. For some data fields, a specification of the side should be made.

For many data points, predefined SNOMED concepts for left and right already exist. For simplicity, primarily the non-side-specific concepts are listed here.
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-zielgebiet-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```