## {{page-title}}

Die Kodierungen für die UICC Residualstatus werden hier dargestellt. Die UICC-Konzepte sind seit Anfang 2025 Teil der internationalen SNOMED-Distribution. 

Die untenstehende Tabelle stellt ein mögliches Mapping auf den UICC Residualstatus dar. 

@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-residualstatus-uicc-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```