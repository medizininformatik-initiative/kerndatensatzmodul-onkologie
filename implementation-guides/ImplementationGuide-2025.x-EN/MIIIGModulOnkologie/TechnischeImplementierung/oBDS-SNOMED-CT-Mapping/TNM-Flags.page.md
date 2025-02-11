## {{page-title}}

The codings for the TNM flags y, r, and a are presented here. The SNOMED-CT or LOINC codings of the other TNM symbols and categories are located directly in the respective profiles.

Due to licensing reasons (AJCC has withdrawn the right to use), the SNOMED mapping is not complete. In May 2024, a cooperation between UICC and SNOMED-CT was announced. It is expected that the UICC TNM classification will soon be available in SNOMED-CT.
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct' 
    for group.element
        select 
            oBDS_Coding: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Equivalence_Level: target.equivalence, 
            Comment: target.comment  
```