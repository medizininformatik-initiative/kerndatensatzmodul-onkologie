<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-operation-intro.md) -->

This profile describes an operation in oncology.

- The operation profile for oncology is derived from the MII procedure module and additionally specified for oBDS content. https://simplifier.net/guide/mii-ig-modul-prozedur-2024-de/MIIIGModulProzedur/TechnischeImplementierung/FHIRProfile/Prozedur-Procedure.page.md?version=current

### Category and code

- The MII procedure recommends mapping the category using the OPS main categories transferred into SNOMED (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct), where the SNOMED code `38771300` corresponds to OPS category "5 - Operations". However, according to oBDS, in justified cases a different coding (e.g. `103693007` for "1 - Diagnostic measures") may also be entered here. For this reason, the category is not further restricted.
- The exact type of procedure is coded in the `Procedure.code` field. **IMPORTANT**: Every Procedure MUST have a code - either OPS or SNOMED CT.
- Primarily an OPS code SHOULD be used. If no matching OPS code exists, a SNOMED CT code MUST be chosen.
- At most one OPS value SHOULD be coded per Procedure resource. Additional procedures are represented as individual Procedure resources.
- Note: Within the KDS module Oncology, the overarching MII procedure is also used to represent radiotherapy and systemic/watchful-waiting therapy. For the special aspects regarding categories and codes - see [Radiotherapy: Procedure](StructureDefinition-mii-pr-onko-strahlentherapie.html) and [Systemic Therapy: Procedure](StructureDefinition-mii-pr-onko-systemische-therapie.html).

### Multi-part procedures and related operations

In complex oncological procedures, several surgical procedures are often performed in one session. Since only one OPS code should be coded per Procedure resource, two modeling approaches are supported:

#### Approach 1: Parent Procedure with general code

**IMPORTANT**: A Procedure MUST have either an OPS code OR a SNOMED CT code. If no matching OPS code exists for the parent Procedure, a suitable SNOMED CT code MUST be chosen.

1. **Parent Procedure**: A main Procedure with a general SNOMED CT code for the location/type of the procedure
   - `Procedure.code`: SNOMED CT code (e.g. 86481000 "Laparotomy (procedure)")
   - `Procedure.code.coding[ops]`: Remains empty, since no specific OPS code exists
   - This Procedure SHOULD conform to the MII_PR_Onko_Operation profile
   - **Note**: The SNOMED CT code must be chosen from available SNOMED CT concepts

2. **Detailed sub-Procedures**: Individual Procedure resources for each specific OPS code
   - Linked via `Procedure.partOf` to the parent Procedure
   - Each with its specific OPS code

**Example:**
```
Procedure/haupteingriff (SNOMED: 176282005 "Resektion des Rektums")
├── Procedure/teileingriff1 (partOf → haupteingriff)
│   └── OPS: 5-484.35 "Rektumresektion mit Anastomose"
└── Procedure/teileingriff2 (partOf → haupteingriff)
    └── OPS: 5-469.21 "Andere Operationen am Darm"
```

#### Approach 2: Procedures of equal standing

For complex tumor operations where the hierarchy is not clear:

1. **All Procedures of equal standing**: Each Procedure represents one OPS code
2. **Common parent Procedure optional**: Can serve as a grouping
3. **Alternative**: Choose one of the Procedures as the "main Procedure" (the decision may be arbitrary)

**Note on harmonization**: The decision as to which Procedure counts as the "main Procedure" can be difficult in complex tumor operations and can hardly be harmonized post hoc.

#### Common aspects for multi-part procedures:

- **Timing**: All linked procedures should have the same `performedDateTime` if they were performed in one session
- **Intent**: The extension for the operation intent should be consistent across all linked procedures
- **Complications**: Can be documented on the affected individual procedure or on the parent Procedure
- **Residual status**: The local residual status is documented on the resecting procedure
- **References**: All Procedures should reference the same primary diagnosis (`reasonReference`) and, if applicable, a tumor board recommendation (`basedOn`)

#### Visualization using the example of Kim Musterperson

![Multi-Part Surgery Example: Kim Musterperson](MII_Onko_MultiPartSurgery_Example.png)

### Extensions

#### Intent
The MII procedure module already has an extension [Intent of the procedure](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) with a binding to SNOMED CT codes. However, since the intent of the operation is captured in oBDS via an oBDS-specific answer set, the procedure was extended with an additional element "Intent". Existing extensions of the MII procedure module are optional and not directly relevant for the mapping from oBDS.

Further information: [Extension Intent (Operation)](StructureDefinition-mii-ex-onko-operation-intention.html)

#### Urgency (type of procedure)
The "Urgency" extension captures the modality of procedure performance. This data point originally comes from the organ-specific module Colorectal Carcinoma (KRK 6 oBDS 2021), but is **universally applicable to all Procedures** and was therefore integrated into the general Operation profile.

The extension distinguishes between:
- **E**: Elective procedure (planned procedure)
- **N**: Emergency procedure
- **U**: Unknown

This extension is particularly relevant for quality assurance and statistical evaluations, since emergency procedures often show different outcomes and complication rates than planned procedures. Although originally defined for colorectal procedures, the distinction between elective and emergency procedures is clinically relevant for all surgical procedures.

**Usage:**
```
* extension[urgency].valueCodeableConcept = $mii-cs-onko-operation-urgency#E "Elektiveingriff"
```

Further information: [Extension Urgency (type of procedure)](StructureDefinition-mii-ex-onko-operation-urgency.html)

### Residual status and further observations
The oBDS provides for capturing the R status when tumor tissue is resected.
Depending on the procedure performed, the assessment of residual status should be made either **locally** or **globally**. These are captured in oBDS as two different data points. In the present FHIR profiling, the local residual status (where applicable) is coded under Procedure.outcome. The global residual status is captured via a separate Observation (see Residual status: Observation).

In addition to the residual status, there are further data points that can reference an operation and are reported in oBDS together with it. These include the histological examinations (lymph nodes, grading) as well as ICD-O morphology, TNM and/or other classifications where applicable.

---

#### References to other profiles
An operation captured and reported as part of the cancer registry is often based on a therapy recommendation from a tumor board. In this case, a link between the elements should be established via `Procedure.basedOn(Reference(CarePlan))`.
Furthermore, the operation references the primary diagnosis via `Procedure.reasonReference`.

---

### Conformance
This profiling is compatible with the procedure profile of the ISiK basic modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Operation-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Basic Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Operation/Operation-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Operation](StructureDefinition-mii-pr-onko-operation.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=103270```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Usage notes: Further information on searching by "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Usage notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2022-01-01```

    Usage notes: Further information on searching by "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Procedure?patient=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "bodySite" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Usage notes: Further information on searching by "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "dokumentationsdatum" MUST be supported:

    Examples:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Usage notes: Further information on searching by "Procedure.extension:Dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "durchfuehrungsabsicht" MUST be supported:

    Examples:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "outcome" MUST be supported:

    Examples:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus|R1```

    Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

**Examples**

[mii-exa-onko-operation-1](Procedure-mii-exa-onko-operation-1.html)
