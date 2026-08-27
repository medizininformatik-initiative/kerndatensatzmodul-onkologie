<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-therapieempfehlung-operation-intro.md) -->

##

This profile describes a **surgical therapy recommendation** in the context of the tumor board. It is based on FHIR ServiceRequest and enables the structured recording of surgical therapy recommendations.

### Content

The ServiceRequest profile enables the recording of surgical recommendations from the tumor board with:
- **Categorization**: type of the recommended operation
- **Tumor disease reference**: reference to the primary tumor diagnosis
- **Supporting information**: relevant findings and staging results

### Use cases

#### **Primary tumor surgery**
Recommendation for surgical removal of the primary tumor:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(TNM-Staging)
```

#### **Metastasis surgery**
Recommendation for resection of metastases:
```
ServiceRequest
├── intent: #proposal
├── category: Surgical procedure
├── authoredOn: 2024-01-15
├── reasonReference: Reference(Primärtumor)
└── supportingInfo: Reference(Fernmetastasen-Observation)
```

### Technical implementation

#### **Intent**
The `intent` element is fixed to `#proposal`, since this is a therapy recommendation.

#### **Category**
The `category` enables classification of the recommended operation (e.g. curative vs. palliative intent).

#### **reasonReference**
Reference to the underlying tumor disease:
```
reasonReference: Reference(MII_PR_Onko_Diagnose_Primaertumor)
```

#### **supportingInfo**
Optional references to supporting clinical information:
- **Staging results**: TNM classification
- **Imaging**: relevant diagnostic findings
- **Lab values**: tumor markers or other relevant parameters

### Use with Extended CarePlan

This profile is primarily designed for use with the **Tumorkonferenz: Detaillierte Therapieempfehlungen (CarePlan) <!-- TODO:REVIEW page link TumorkonferenzDetailedRecommendationsCarePlan not resolvable -->**:

- **Standard oBDS**: cancer registries only capture "operation planned" (therapy recommendation type "OP") without details on the type of operation
- **Extended CarePlan**: enables specific operation recommendations with SNOMED CT coding

**Integration**:
```
CarePlan (Detailed Recommendations)
└── activity.reference → ServiceRequest
    ├── code: SNOMED CT (spezifische OP)
    └── reasonReference: Reference(Primärtumor)
```

### oBDS context

This profile supports the recording of therapy recommendations according to oBDS chapter 19:
- **19.1 Therapy recommendation type**: "OP" (operation)

**Note**: standard oBDS recording is done via `CarePlan.activity.detail.code`. This ServiceRequest profile offers extended structuring for molecular tumor boards and specialized use cases.

The detailed planning and performance of the operation is recorded in the separate [Operation: Procedure](StructureDefinition-mii-pr-onko-operation.html).

### Distinction

| Profile | Resource | Usage |
|--------|-----------|------------|
| **Therapieempfehlung Operation** | ServiceRequest | recommendation from the tumor board |
| **Operation** | Procedure | operation actually performed |

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Tumorkonferenz/Therapieempfehlung-Operation-ServiceRequest.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Therapieempfehlung Operation](StructureDefinition-mii-pr-onko-therapieempfehlung-operation.html).

---

**Search parameters**

1. The search parameter ```_id``` MUST be supported:
    ```GET [base]/ServiceRequest?_id=1234```

2. The search parameter "_profile" MUST be supported:
    ```GET [base]/ServiceRequest?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-operation```

3. The search parameter "subject" MUST be supported:
    ```GET [base]/ServiceRequest?subject=Patient/example```

4. The search parameter "intent" SHOULD be supported:
    ```GET [base]/ServiceRequest?intent=proposal```

5. The search parameter "category" SHOULD be supported:
    ```GET [base]/ServiceRequest?category=surgical-procedure```
