---
parent: 
topic: DiagnoseEvidenceList
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose
---

## {{page-title}}

The List resource is a flat collection of resources and provides functions for managing the collection. In this case, the resource serves as a collection of observations and diagnostic reports known at the time of the initial oncological diagnosis. This includes, for example, a TNM classification as well as other diagnostically relevant classifications, distant metastases, histologies, etc.

The evidence list itself is not part of the oBDS but is intended to permanently record the status at the time of the initial diagnosis.

* The list **SHOULD** be created based on the contents known before or at the time of the initial diagnosis.
* The entries **CAN** be directly taken from the diagnosis report.

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose' 
select 
    Name: name, Status: status, Version: version, Canonical: url, Basis: baseDefinition

```

### Content

<tabs>
  <tab title="Representation">{{tree, buttons}}</tab>
  <tab title="Description"> 
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-liste-evidenz-erstdiagnose' 
        for 
            differential.element 
            where 
                mustSupport = true 
            select Field Name: id, Short Description: short, Notes: comment
        ```
  </tab>
  <tab title="XML">{{xml}}</tab>
  <tab title="JSON">{{json}}</tab>
  <tab title="Link">{{link}}</tab>
</tabs>

---

**Search Parameters**

The following search parameters are relevant for the oncology module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/Condition?_id=1234```
    
    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:
    
    ```GET [base]/Condition?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

{{json:mii-exa-onko-liste-evidenz-erstdiagnose-1}}

---
