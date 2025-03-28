## {{page-title}}

Die Kodierungen für die UICC TNM Symbole werden hier dargestellt. Die UICC-Konzepte sind seit Anfang 2025 Teil der internationalen SNOMED-Distribution. 

Leider ist die Granularität und Aggregation der Konzepte so gewählt worden, dass die Konzepte von klinischem und pathologischem TNM als getrennte Konzepte gehandhabt werden. 

Die untenstehende Tabelle stellt ein mögliches Mapping auf die klinischen TNMs (cTNMs ) dar. 



@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct-clinical' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```