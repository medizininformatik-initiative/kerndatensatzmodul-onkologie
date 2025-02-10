---
parent: 
topic: StrahlentherapieProcedure
subject: https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie
---

## Radiotherapy

This profile describes radiotherapy in oncology. The oncology radiotherapy profile is based on the MII procedure module. It therefore adopts the mandatory specification of OPS as coding for the type of procedure. Since the details of the procedure are stored in the individual irradiation elements, the OPS for radiotherapy should be coded here.

The MII procedure module already has an extension [Implementation Intention](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) with binding to SNOMED-CT codes. Since the intention of radiotherapy in the oBDS is captured by an oBDS-specific response spectrum, the procedure was extended by an additional element "Intention". Likewise, the relationship to any surgeries (e.g., adjuvant/neoadjuvant) is captured via the extension element "Position".

The specific details of radiotherapy are divided and reported in individual irradiations. Each irradiation is recorded as an extension.

Complications of radiotherapy are not coded as `Procedure.complication` or `Procedure.complicationReference`, but like systemic therapy, they are recorded in a separate AdverseEvent resource with reference to the radiotherapy resource. It should be noted that a reference to the radiotherapy resource is non-specific to the entire radiotherapy and not to individual irradiations.

The reason for termination (whether successful or unsuccessful) is coded via `Procedure.outcome`.

### Structure
The decision to implement the irradiation data as an extension has several reasons.
1. The data structure of the oBDS provides for the specification of an overall radiotherapy period with start and end dates, as well as an overall intention and position-to-surgery data point. All other structured treatment information for irradiation (type of radiation, localization, dose, boost, etc.) should be coded individually in an element "Irradiation".
2. The MII procedure requires that each procedure has exactly one code, either OPS or SNOMED-CT.

3. The US FHIR data model mCODE maps the relevant data points in extensions. It should be noted, however, that mCODE does not distinguish between overarching radiotherapy and subordinate irradiation. mCODE, however, provides detailed information on the size of the target volume.

Alternatively, an implementation was discussed that would leave the overarching radiotherapy as a profile conforming to the MII procedure and profile the subordinate irradiations from the regular `Procedure`. This profiling was discarded due to the larger number of required resources and the anticipated difficulty of correctly assigning the OPS/SNOMED code.

### Category and Codes

#### Category
- The MII procedure recommends mapping the **category** using the OPS main categories transferred in SNOMED (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct)
- The present category SNOMED `277132007 | Therapeutic procedure`, which corresponds to the OPS category 8 ("Non-operative therapeutic measures"), includes both radiation and nuclear medicine therapy as well as certain systemic therapies (e.g., chemo and immunotherapy), while other systemic drug therapies (e.g., hormone therapy, targeted therapy) can also be coded under category 6 "Drugs". It is therefore non-specific and not suitable for filtering specifically for nuclear medicine therapies within a research question.

#### Code
- The **code** required by the MII procedure is an OPS code or a SNOMED code.
- OPS includes codes for radiotherapy (`8-52`) and nuclear medicine treatment (`8-53`) with detailed sub-codes. In the oBDS itself, radiotherapy and nuclear medicine are not coded according to OPS but follow a cancer registry-specific coding of localization, application type, and radiation type, as well as other data points.
- In the MII procedure, exactly one coding (OPS or SNOMED CT) SHOULD be used for exactly one therapy. Additional procedures are represented as individual Procedure resources.

#### Implementation Recommendation
Based on the above points, the following coding recommendation for oBDS radiotherapy is derived:
- Category as SNOMED code
    - Category for radiotherapy `1287742003 | Radiotherapy (procedure)`
    - Category for nuclear medicine `399315003 | Radionuclide therapy (procedure)`
- Coding via OPS
    - Radiotherapy as OPS `8-52 Radiotherapy` (or more specific if available)
    - Nuclear medicine therapy as OPS `8-53 Nuclear medicine therapy` (or more specific if available)

---

### Conformity
The present profiling is compatible with the procedure profile of the ISiK basic modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

@```
from 
    StructureDefinition 
where 
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie' 
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
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie'
        select
	        Description: description
        with
            no header
        ```
        @```
        from 
            StructureDefinition 
        where 
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie' 
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
    for differential.element where id.contains('Strahlentherapie')
    select 
        Dataset: short,
        Explanation: definition, 
        FHIR: mapping[0].map 
```

---

Mapping [Unified Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

@```
from StructureDefinition 
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie'  
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

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund|R1```

    Application notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Application notes: Further information on searching by "Procedure.extension:Intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-stellung" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K```

    Application notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-applikationsart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-applikationsart|KLDR```

    Application notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-strahlenart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-strahlenarart|PN```

    Application notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-zielgebiet" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-zielgebiet|4.9```

    Application notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Applikationsart" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-zielgebiet-Lateralitaet" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet-Lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L```

    Application notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Zielgebiet_Lateralitaet" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-boost" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB```

    Application notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Boost" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "extension-bestrahlung-einzeldosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-einzeldosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-einzeldosis```

    Application notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Einzeldosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

1. The search parameter "extension-bestrahlung-gesamtdosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-gesamtdosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-gesamtdosis```

    Application notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Gesamtdosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

**Examples**

{{json:mii-exa-onko-strahlentherapie}}

---