## {{page-title}}


Die Intention wird bei allen Prozeduren angegeben. Da das Antwortspektrum für die verschiedenenen Prozeduren nahezu identisch ist, werden Sie hier gemeinsam dargestellt und gemappt. 
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-intention-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```