## {{page-title}}

Die Kodierungen für die TNM-Flags y, r und a werden hier dargestellt. Die SNOMED-CT oder LOINC-Kodierungen der anderen TNM-Symbole und -Kategorien befinden sich direkt an den jeweiligen Profilen. 

Aus lizenzrechtlichen 
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```