## {{page-title}}

Die anatomischen Strukturen lassen sich gut über SNOMED abbilden. Bei manchen Datenfeldern soll eine Spezifizierung der Seite vorgenommen werden.

Für viele Datenpunkte existieren bereits fertig ausdefinierte SNOMED-Konzepte für links und rechts. Der Einfachheit halber sind hier vor allem die nicht-seitenspezifischen Konzepte aufgeführt. 
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-zielgebiet-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```