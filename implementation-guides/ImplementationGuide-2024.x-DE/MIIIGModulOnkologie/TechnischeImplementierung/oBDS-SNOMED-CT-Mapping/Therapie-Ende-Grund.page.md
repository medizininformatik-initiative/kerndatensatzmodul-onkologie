## {{page-title}}

Das Feld Therapie Ende Grund wird sowohl von Strahlentherapie als auch von Systemischer Therapie angegeben.

Problematisch beim Mappen war hier vor allem das Zusammenspiel aus Outcome und
Grund/Modifikator, so dass fast immer zwei Konzepte in einer Antwortmöglichkeit gemeinsam auftreten. 

 @```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-ende-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```