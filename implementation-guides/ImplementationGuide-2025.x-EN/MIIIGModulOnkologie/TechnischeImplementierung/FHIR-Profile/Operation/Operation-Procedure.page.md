---
parent: 
topic: OperationProcedure
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation
---

## Operation

This profile describes an operation in oncology.

- The oncology operation profile is derived from the MII procedure module and further specified for oBDS content. https://simplifier.net/guide/mii-ig-modul-prozedur-2024-de/MIIIGModulProzedur/TechnischeImplementierung/FHIRProfile/Prozedur-Procedure.page.md?version=current

### Category and Code

- The MII procedure recommends mapping the category using the OPS main categories transferred in SNOMED (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct), where the SNOMED code `38771300` corresponds to the OPS category "5 - Operations". According to oBDS, however, another coding (e.g., `103693007` for "1 - Diagnostic measures") can be entered in justified cases. The category is therefore not further restricted.
- The exact type of procedure is coded in the `Procedure.code` field as OPS. According to oBDS, it should be coded as precisely as possible.
- Exactly one OPS value SHOULD be coded. Additional procedures are represented as individual Procedure resources. An OPS coding CAN be supplemented by a SNOMED-CT coding.
- Note: Within the oncology extension module, the overarching MII procedure is also used for mapping radiotherapy and systemic/awaiting therapy. For specifics on categories and codes, see [Radiotherapy: Procedure](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md?version=current) and [Systemic Therapy: Procedure](https://simplifier.net/guide/mii-ig-modul-onkologie-2024-de/MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md?version=current).

### Extensions

The MII procedure module already has an extension [Implementation Intention](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) with binding to SNOMED-CT codes. Since the intention of the operation in the oBDS is captured by an oBDS-specific response spectrum, the procedure was extended by an additional element "Intention". Existing extensions of the MII procedure module are optional and not directly relevant for the mapping of oBDS.

### Residual Status and Other Observations
The oBDS provides for the recording of the R-status when resecting tumor tissue.
Depending on the procedure performed, the assessment of the residual status should be done **locally** or **globally**. These are recorded as two different data points in the oBDS. In the present FHIR profiling, the local residual status (if applicable) is coded under Procedure.outcome. The global residual status is recorded via a separate observation (see Residual Status: Observation).

In addition to the residual status, there are other data points that can refer to an operation and are reported together with it in the oBDS. These include histological examinations (lymph nodes, grading) as well as ICD-O morphology, TNM, and/or other classifications if applicable.

---

#### References to Other Profiles
An operation recorded and reported as part of the cancer registry is often based on a therapy recommendation from a tumor board. In this case, a link between the elements should be established via `Procedure.basedOn(Reference(CarePlan))`.
Furthermore, the operation refers to the primary diagnosis via `Procedure.reasonReference`.

---

### Conformity
The present profiling is compatible with the procedure profile of the ISiK basic modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation' 
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
    for differential.element where id.contains('Operation')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation'  
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

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=103270```

    Application notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Application notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Application notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Application notes: Further information on searching by "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Application notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2022-01-01```

    Application notes: Further information on searching by "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/test```

    Application notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Procedure?patient=Patient/test```

    Application notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "bodySite" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Application notes: Further information on searching by "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "dokumentationsdatum" MUST be supported:

    Examples:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Application notes: Further information on searching by "Procedure.extension:Dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "durchfuehrungsabsicht" MUST be supported:

    Examples:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Application notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "outcome" MUST be supported:

    Examples:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1```

    Application notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Application notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

{{json:mii-exa-onko-operation-1}}

---