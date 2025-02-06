## {{page-title}}

Die verschiedenen Applikationsarten sind teilweise in Kombination aufgeführt und in dieser Form schwer in SNOMED abbildbar. Ebenso zeigt sich, dass manche spezialisierte Methodiken (wie PSMA-Therapie) nicht in SNOMED-CT abgebildet sind.  

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```