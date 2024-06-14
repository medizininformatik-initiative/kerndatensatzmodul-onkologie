## {{page-title}}

Die Ausprägung der genetischen Variante. Die Bewertung der Ausprägung wird gemeinsam mit einer Freitextbeschreibung der Variante an die Krebsregister 

Für eine detaillierte Bewertung auf Basis internationaler Klassifikationen kann die MII Variante aus dem Molekulargenetischen Befundbericht genutzt werden. (siehe "Genetische Variante: Observation)
@```
from ConceptMap 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct' 
    for group.element
        select 
            oBDS_Kodierung: code, 
            oBDS_Label: display, 
            SNOMED_CT_ID: target.code, 
            SNOMED_CT_Name: target.display, 
            Aequivalenzlevel: target.equivalence, 
            Kommentar: target.comment  
```