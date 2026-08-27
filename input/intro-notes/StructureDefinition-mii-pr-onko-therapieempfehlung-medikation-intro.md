<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-medikation-intro.md) -->

This profile describes a **medication therapy recommendation** within the context of the tumor board. It is based on FHIR MedicationRequest and is typically used as part of a combination therapy (RequestGroup) or as a standalone recommendation.

### Content

The MedicationRequest profile enables the structured recording of medication recommendations with:
- **Medication coding**: PZN (medicinal product) and/or ATC-DE (active ingredients)
- **Tumor disease reference**: mandatory reference to the primary tumor diagnosis
- **Additional reasons**: optional references to further Conditions or Observations

### Use cases

#### **Standalone medication recommendation**
For single-substance recommendations without a combination protocol:
```
MedicationRequest
├── intent: #proposal
├── medicationCodeableConcept: ATC L01XE27 (Ibrutinib)
├── authoredOn: 2024-01-15
└── reasonReference: Reference(Primärtumor)
```

#### **Part of a combination therapy**
As a component of a RequestGroup-based combination therapy:
```
RequestGroup (FOLFOX-Protokoll)
├── action[0].resource: MedicationRequest (5-FU)
├── action[1].resource: MedicationRequest (Oxaliplatin)
└── action[2].resource: MedicationRequest (Leucovorin)
```

### Technical implementation

#### **Intent semantics**
- **`#proposal`**: standalone therapy recommendation from the tumor board
- **`#option`**: part of a RequestGroup (combination therapy)

#### **Medication coding**
The `medicationCodeableConcept` element supports:
- **ATC-DE**: for substance-based recommendations
- **PZN**: for specific medicinal product recommendations
- **Free text**: for experimental or non-codable substances

#### **reasonReference extension**
In addition to the mandatory reference to the primary tumor, the profile also allows:
- **Condition**: further relevant diseases as a reason
- **Observation**: supporting findings (e.g. biomarkers, staging)

```
reasonReference (Slicing: open, profile-based)
├── Primaertumor (1..1 MS): Reference(MII_PR_Onko_Diagnose_Primaertumor)
└── [weitere]: Reference(Condition or Observation)
```

### Usage with extended CarePlan

This profile is primarily designed for use with the **[Tumor board: detailed therapy recommendations (CarePlan)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)** and the **[Combination Therapy Recommendation (RequestGroup)](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)**:

- **Standard oBDS**: cancer registries only record the therapy type (e.g. "CH" for chemotherapy) without details on specific medications
- **Extended CarePlan**: enables specific medication recommendations with ATC/PZN coding

**Integration with RequestGroup (combination therapy)**:
```
CarePlan (Detailed Recommendations)
└── activity.reference → RequestGroup
    ├── code: "CZ" (Chemo + zielgerichtete Substanzen)
    └── action.action.resource → MedicationRequest
        ├── medication: ATC L01XE (Trastuzumab)
        └── reasonReference: Reference(Primärtumor)
```

### oBDS context

This profile supports the recording of therapy recommendations according to oBDS chapter 19:
- **19.1 Therapy recommendation type**: via RequestGroup.code (for combination therapies)
- **Medication details**: structured recording via MedicationRequest

**Note**: Standard oBDS recording is done via `CarePlan.activity.detail.code` (therapy type only). This MedicationRequest profile provides extended structuring for molecular tumor boards, combination therapy protocols and specialized use cases.

### Terminology binding

**medicationCodeableConcept.coding**:
- At least one coding required (1..*)
- ATC-DE or PZN recommended
- Free text possible via `.text`

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Medikation-MedicationRequest.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Medikation](StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html).

---

**Search parameters**

1. The search parameter ```_id``` MUST be supported:
    ```GET [base]/MedicationRequest?_id=1234```

2. The search parameter "_profile" MUST be supported:
    ```GET [base]/MedicationRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation```

3. The search parameter "subject" MUST be supported:
    ```GET [base]/MedicationRequest?subject=Patient/example```

4. The search parameter "intent" SHOULD be supported:
    ```GET [base]/MedicationRequest?intent=proposal```

5. The search parameter "medication" SHOULD be supported:
    ```GET [base]/MedicationRequest?medication=http://fhir.de/CodeSystem/bfarm/atc|L01XE27```
