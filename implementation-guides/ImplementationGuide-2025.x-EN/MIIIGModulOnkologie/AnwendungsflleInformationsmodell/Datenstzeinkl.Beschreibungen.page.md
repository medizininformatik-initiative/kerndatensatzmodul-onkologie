---
parent: 
---

## Datasets Including Descriptions

The dataset is based on the oncological basic dataset (oBDS, see references).

In the implementation, the focus was on converting the data points collected during registry reporting into FHIR resources for the FDPG for secondary data use.

Therefore, reporting and person-relevant data of the oBDS are not included. Likewise, the organ-specific modules were not considered in the initial implementation.

{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie}}

It should be noted that the Logical Model purely aims to map the data elements and their descriptions. The data types and cardinalities used are not to be considered mandatory. This is ultimately determined by the FHIR profiles. For each element within the Logical Model, there is a 1:1 mapping to an element of a specific FHIR resource.


@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element
    select
        Datensatz: path, 
        Erklaerung: definition 
```
 
<br><br>

