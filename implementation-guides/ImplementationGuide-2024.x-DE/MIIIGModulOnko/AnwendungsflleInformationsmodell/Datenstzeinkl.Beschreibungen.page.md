---
parent: 
---

## Datensätze inkl. Beschreibungen

Der Datensatz basiert auf dem onkologischen Basisdatensatz (oBDS, siehe Referenzen). 


In der Umsetzung wurde der Fokus auf die Umwandlung der bei der Registermeldungdaten anfallenden Datenpunkte 
in FHIR-Ressourcen für das FDPG für die Sekundärdatennutzung 

Daher sind sind Meldungs-und personenrelevante Daten des oBDS nicht enthalten. Ebenso wurden bei die Erstimplementierung die organspezifischen Module nicht berücksichtigt. 

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie}} 

Es ist zu beachten, dass das Logical Model rein auf die Abbildung der Datenelemente und deren Beschreibung abzielt. Verwendete Datentypen und Kardinalitäten sind nicht als verpflichtend anzusehen. Dies wird abschließend durch die FHIR-Profile festgelegt. Für jedes Element innerhalb des Logical Models existiert ein 1:1 Mapping auf ein Element einer konkreten FHIR Ressource.

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element
    select
        Datensatz: path, 
        Erklaerung: definition 
```
 
<br><br>