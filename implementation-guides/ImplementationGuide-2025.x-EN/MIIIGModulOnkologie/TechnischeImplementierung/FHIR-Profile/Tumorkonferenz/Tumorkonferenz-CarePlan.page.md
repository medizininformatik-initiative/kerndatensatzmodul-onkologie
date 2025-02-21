---
parent: 
topic: CarePlan
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz
---

## {{page-title}}

This profile describes the tumor board and therapy recommendations.
The data fields have been part of the oBDS since version 2021 and are recorded in two different modules. Since all the involved fields can be well represented via the FHIR CarePlan resource, all the tumor board and therapy recommendation fields have been combined in the tumor board profile.

The tumor board profile therefore includes:
* the reference to the patient via `subject`
* the reference to the primary diagnosis via `addresses`
* the category of the plan according to oBDS via `category`
* the date via `created`
* individual recommendations (`activity`) with the following elements:
    * the oBDS coding of the proposed therapy measure `code`
    * the status of the individual activities under `status` according to the HL7 FHIR status codes
    * in case of discontinuation: the indication of whether the therapy was discontinued at the patient's request under `statusReason`

The CarePlan resource requires a mandatory specification of the `status` element of an `activity`. This information is not included in the oBDS in this form. However, the actual therapies performed are recorded in the cancer registry data and SHOULD refer to the tumor board resource via `Procedure.basedOn(Reference(CarePlan))`.

The status information reflects the actual status of the therapy recommendation. For all status information, the official FHIR CarePlanActivityStatus code set applies.
https://www.hl7.org/fhir/R4/valueset-care-plan-activity-status.html
The following status codes SHOULD be used:
- `completed` for completed therapy,
- `on-hold` for therapy interruption for not yet started therapy
- `stopped` for therapy interruption for already started therapy
- `unknown` for unknown, if no information about the status is available.

For the status information `on-hold` and `stopped`, the `statusReason` field SHOULD be filled with the information from the oBDS field 'Therapy deviation at the patient's request'.

Each tumor board with therapy recommendation SHOULD be stored as a separate resource and refer to the primary diagnosis via `CarePlan.addresses(Reference(Condition))`.

### Future Developments
As part of the MII extension module Molecular Tumor Board, the modeling of therapy recommendations has been revised. In the current profiling, the recommendations are all explicitly coded under CarePlan.activity. For later use, this is impractical as they cannot be logically referenced from the outside. Therefore, it is planned to adopt changes to the CarePlan resource from FHIR version R5, so that the recommendations are no longer explicitly listed but can be referenced as specific `ServiceRequests` or `MedicationRequests` via `CarePlan.plannedActivityReference`. Similarly, actual procedures and medications can be referenced under `CarePlan.performedActivity`.

This will result in a re-profiling in the next version, which does not require a breaking change but structures the information differently and requires the introduction of new FHIR resources and search parameters.
- Creation of extensions for the use of R5 elements in R4
- Creation of profiles for therapy recommendations (ServiceRequest / MedicationRequest)
- Creation of a RequestGroup profile to represent combination therapies

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz' 
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

Mapping dataset to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie'
    for differential.element where id.contains('Tumorkonferenz')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz'  
    for differential.element
    where mapping.identity='oBDS'
    select 
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

**Search Parameters**

The following search parameters are relevant for the oncology module, also in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples: 

    ```GET [base]/CarePlan?_id=1234```
    
    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:
    
    ```GET [base]/CarePlan?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz```
    
    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter ```identifier``` MUST be supported:

    Examples:
    
    ```GET [base]/CarePlan?identifier=Tumorkonferenz_1```
    
    Application notes: Further information on searching by "identifier" can be found in the [FHIR base specification - section "token"].

4. The search parameter ```category``` MUST be supported:
    Examples:

    ```GET [base]/CarePlan?category=http://snomed.info/sct|734163000```

    Application notes: Further information on searching by "category" can be found in the [FHIR base specification - section "token"].

5. The search parameter ```subject``` MUST be supported:
    Examples:
    
    ```GET [base]/CarePlan?subject=Patient/example```

    Application notes: Further information on searching by "subject" can be found in the [FHIR base specification - section "identifier" or section "[type]"].

6. The search parameter ```period``` MUST be supported:
    Examples:
    
    ```GET [base]/CarePlan?date=eq2022-01-01```

    Application notes: Further information on searching by "date" can be found in the [FHIR base specification - section "date"].

7. The search parameter ```contributor``` MUST be supported:
    Examples:
    
    ```GET [base]/CarePlan?contributor=Practitioner/example```

    Application notes: Further information on searching by "contributor" can be found in the [FHIR base specification - section "identifier" or section "[type]"].

8. The search parameter ```addresses``` MUST be supported:
    Examples:
    
    ```GET [base]/CarePlan?addresses=Condition/example```

    Application notes: Further information on searching by "addresses" can be found in the [FHIR base specification - section "identifier" or section "[type]"].

9. The search parameter ```activity-code``` MUST be supported:
    Examples:
    
    ```GET [base]/CarePlan?activity-code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieempfehlung-typ|OP```

    Application notes: Further information on searching by "activity-code" can be found in the [FHIR base specification - section "token"].

**Examples**

{{json:mii-exa-onko-tumorkonferenz-01}}

---
