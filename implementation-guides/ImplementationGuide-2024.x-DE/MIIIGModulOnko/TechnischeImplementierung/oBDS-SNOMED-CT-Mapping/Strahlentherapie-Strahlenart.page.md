## {{page-title}}
Die Strahlenart umfasst sowohl die Art der Strahlung als auch die Art der eingesetzten Radioaktiven Metabolite. Bis auf Tb-161 waren alle Strahlen in SNOMED-CT hinterlegt. 

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahlenart-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```