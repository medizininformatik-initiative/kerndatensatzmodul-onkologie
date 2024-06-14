## {{page-title}}

Fernmetastasen im Verlauf. Zu beachten ist, dass bei Auftreten von neuen Fernmetastasen die Lokalisation mittels Lokalisation Fernmetastasen zu kodieren ist. 



@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-fernmetastasen-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```