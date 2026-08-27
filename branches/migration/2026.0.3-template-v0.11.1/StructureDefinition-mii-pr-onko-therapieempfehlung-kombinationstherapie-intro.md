<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie-intro.md (de) -->

This profile describes structured **therapy recommendations for combination therapies** using RequestGroup. It enables the detailed representation of multi-agent protocols and alternative therapy options for molecular tumor boards.

### Content

The RequestGroup profile serves as a "protocol coordinator" between **CarePlan recommendations** and **specific therapy resources** (SystemischeTherapie, MedicationRequest, etc.).

It enables the representation of complex therapy recommendations for **molecular tumor boards** and other tumor conferences that go beyond simple categorizations and require specific drug combinations or therapy options.

### Delineation from the oBDS standard recommendation

| Aspect | oBDS standard recommendation | Extended recommendation with RequestGroup |
|--------|------------------------------|-------------------------------------------|
| **Use** | Traditional tumor boards | Molecular tumor boards, complex protocols |
| **Therapy recommendation** | `activity.detail.code` (19.1 oBDS) | `activity.reference` → RequestGroup |
| **Multi-agent therapies** | Single categorization | Detailed protocols with specific agents |
| **FHIR invariants** | `activity.detail` used | `activity.detail` disabled (0..0) |

**Reason**: The FHIR R4 invariant `cpl-3` prevents the simultaneous use of `activity.detail.code` and `activity.reference`. Both approaches are therefore kept as separate slices.

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Tumorkonferenz-Detailed-Recommendations-CarePlan.page.md gate=B -->
> Both variants are now represented in the Tumorkonferenz profile itself, as the slices `activity:obds` (with `activity.detail.code`, `activity.reference` set to 0..0) and `activity:extended` (with `activity.reference` 1..1, `activity.detail` set to 0..0); a separate "Detailed Recommendations" CarePlan profile no longer exists. The structure is described in the artefact view: [MII PR Onkologie Tumorkonferenz](StructureDefinition-mii-pr-onko-tumorkonferenz.html).
{: .ig-highlight .ig-highlight-grey}

### Use cases

#### **Multi-agent therapy protocols**
- **Anti-HER2 combination**: Trastuzumab + Pertuzumab
- **CDK4/6 + hormone therapy**: Palbociclib + Letrozole
- **Triplet therapies**: Tucatinib + Trastuzumab + Capecitabine

#### **Alternative therapy options**
- **Line therapy**: First-, second-, third-line options based on resistance
- **Biomarker-based**: Different options depending on mutation status
- **Class-based**: "Any CDK4/6 inhibitor" vs. specific selection

### Technical architecture

#### **RequestGroup as protocol coordinator**
```
CarePlan.activity.reference → RequestGroup
├── code: oBDS therapy type (ZS, CZ, IM, etc.)
├── basedOn: Reference(CarePlan) [traceability]
└── action[].resource: Reference(SystemischeTherapie)
```

#### **Therapy type classification**
The **RequestGroup.code** element contains the **oBDS therapy type classification**:

- **ZS**: Targeted substances
- **CZ**: Chemotherapy + targeted substances
- **IM**: Immune-/antibody therapy
- **CI**: Chemo- + immune-/antibody therapy
- **CIZ**: Chemo- + immune-/antibody therapy + targeted substances

**Important**: This classification was originally in `CarePlan.activity.detail.code` (oBDS 19.1), but is moved to the RequestGroup due to FHIR invariants.

### Implementation options

#### **Option 1: Pharmaceutical classes**
For **class-based recommendations** (e.g. "any CDK4/6 inhibitor"):

```
RequestGroup
├── code: "CZ" (Chemotherapy + targeted substances)
└── action[0].resource: Reference(SystemischeTherapie)
    └── code.text: "CDK4/6 inhibitor (class L01XE) - Palbociclib, Ribociclib or Abemaciclib"
```

**Application**: When a molecular tumor board recommends a **medication class** and leaves the final selection to the treating physician.

#### **Option 2: Specific medication selection**
For **specific options** with selection logic:

```
RequestGroup
├── code: "ZS" (Targeted substances)
├── action[0].selectionBehavior: #any
├── action[0].requiredBehavior: #must
├── action[0].action[0]: Reference(Trastuzumab) [priority: routine]
├── action[0].action[1]: Reference(T-DM1) [priority: asap]
└── action[0].action[2]: Reference(Tucatinib) [priority: stat]
```

**Application**: When a molecular tumor board recommends **specific alternatives** with clear preferences based on resistance patterns or clinical situation.

### FHIR invariant conformance

**Problem**: FHIR R4 invariant prevents simultaneous use of `code` and `action.resource`
**Solution**: This profile **accepts both approaches** depending on the use case:

- **Option 1**: Uses `code` for therapy type, `action.resource` for class-level therapy
- **Option 2**: Uses `code` for therapy type, nested `action.action.resource` for specific options with `selectionBehavior`

### oBDS context

#### **Mapping to oBDS 19.1**
```
RequestGroup.code → "19.1" "Tumor board therapy recommendation type"
```

**Data fields**:
- **CH**: Chemotherapy
- **HO**: Hormone therapy
- **IM**: Immune-/antibody therapy
- **ZS**: Targeted substances
- **SZ**: Stem cell transplantation
- **Combinations**: CI, CZ, CIZ, IZ
- **Other**: OP, ST, WW, AS, SO

#### **Extended structuring**
While the oBDS only captures the **therapy type**, RequestGroup additionally enables:
- **Specific medications** per recommendation
- **Alternative options** with priorities
- **Combination logic** for multi-agent protocols

### Terminology binding

**RequestGroup.code**:
- **ValueSet**: `mii-vs-onko-therapieempfehlung-typ`
- **Binding**: Preferred
- **Source**: oBDS therapy types from `mii-cs-onko-therapie-typ`

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie Therapieempfehlung Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Kombinationstherapie-RequestGroup.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Kombinationstherapie](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

1. The search parameter ```_id``` MUST be supported:
    ```GET [base]/RequestGroup?_id=1234```

2. The search parameter "_profile" MUST be supported:
    ```GET [base]/RequestGroup?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie```

3. The search parameter "subject" MUST be supported:
    ```GET [base]/RequestGroup?subject=Patient/example```

4. The search parameter "code" SHOULD be supported:
    ```GET [base]/RequestGroup?code=ZS```

5. The search parameter "based-on" SHOULD be supported:
    ```GET [base]/RequestGroup?based-on=CarePlan/tumorkonferenz-example```

**Examples**

<!-- TODO:REVIEW Example instances matched by content: "class recommendation" -> CDK4/6 class protocol, "specific choices" -> HER2 alternatives. Please confirm clinically. -->

- Class-based recommendation (CDK4/6 inhibitor): [mii-exa-onko-molecular-cdk46-protocol](RequestGroup-mii-exa-onko-molecular-cdk46-protocol.html), referenced from [mii-exa-onko-tumorkonferenz-mixed-approach](CarePlan-mii-exa-onko-tumorkonferenz-mixed-approach.html)
- Specific drug selection (HER2 alternatives): [mii-exa-onko-molecular-her2-alternatives](RequestGroup-mii-exa-onko-molecular-her2-alternatives.html), referenced from [mii-exa-onko-tumorkonferenz-pure-molecular](CarePlan-mii-exa-onko-tumorkonferenz-pure-molecular.html)
- Protocol-based recommendation (FOLFOX): [mii-exa-onko-folfox-requestgroup](RequestGroup-mii-exa-onko-folfox-requestgroup.html) and [mii-exa-onko-folfox-requestgroup-modification](RequestGroup-mii-exa-onko-folfox-requestgroup-modification.html)
