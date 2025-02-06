## {{page-title}}

Die Kodierungen für die TNM-Flags y, r und a werden hier dargestellt. Die SNOMED-CT oder LOINC-Kodierungen der anderen TNM-Symbole und -Kategorien befinden sich direkt an den jeweiligen Profilen. 

Aus lizenzrechtlichen Gründen (AJCC hat Berechtigung zur Verwendung zurückgezogen) ist das SNOMED-Mapping nicht vollständig. Im Mai 2024 wurde eine Kooperation zwischen UICC und SNOMED-CT angekündigt. Es ist zu erwarten, dass demnächst die UICC-TNM-Klassifikation in SNOMED-CT verfügbar ist.  
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