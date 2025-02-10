## {{page-title}}

The expression of the genetic variant. The assessment of the expression is transmitted to the cancer registries along with a free-text description of the variant.

For a detailed assessment based on international classifications, the MII variant from the Molecular Genetic Report can be used. (see "Genetic Variant: Observation)

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```