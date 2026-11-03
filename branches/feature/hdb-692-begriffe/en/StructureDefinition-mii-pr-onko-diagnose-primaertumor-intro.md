<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-diagnose-primaertumor-intro.md (de) -->
### Content
This profile describes a diagnosis in oncology. It is based on the MII KDS module Diagnose.

The oBDS requires the diagnosis to be coded via ICD-10, as well as the coding of the topography of the primary tumour and of the histological morphology via ICD-O-3. In FHIR this combination can already be represented completely by the MII Diagnose profile:
* ICD-10-GM via `Condition.code[icd10-gm]` (inherited from MII Diagnose)
* ICD-O-3 morphology via `Condition.extension[morphology-behavior-icdo3]` (comparable to the mCODE extension)
* ICD-O-3 topography via `Condition.bodySite`.

Further histological examinations with deviating morphologies during the course of therapy SHOULD be recorded via the Histologie profile.

### Terms

The following terms are used consistently throughout the IG (ballot HDB-692):

| Term | Meaning |
|---|---|
| **Primärtumor** (primary tumour) | The original tumour of an oncological disease from which metastases may arise. In the oBDS every primary tumour is documented as its own tumour disease with its own tumour ID; a second tumour is a primary tumour of its own. |
| **Diagnose Primärtumor** | The profile `MII_PR_Onko_Diagnose_Primaertumor` or its Condition resource. It represents the oncological disease as a whole and is also used for haematological neoplasms without a solid tumour. All observations, procedures and tumour boards reference it. |
| **Erstdiagnose** (initial diagnosis) | The point in time at which the disease was first established with sufficient certainty, clinically or histologically (oBDS 5.6, see section on the date of diagnosis). Not a profile of its own but a point in time in the course of the Diagnose Primärtumor. Observations from the diagnosis report are referenced via `evidence.detail`. |
| **Frühere Tumorerkrankung** (previous tumour disease) | Tumour disease known from the patient history and not registered in the same system (oBDS 5.9), separate profile. |
| **Verlaufshistologie** (follow-up histology) | Histological examination after the initial diagnosis from pathology or follow-up reports, modelled as an Observation attached to the course. The histology of the initial diagnosis is recorded directly in the Diagnose Primärtumor. |

The term *Primärdiagnose* ("primary diagnosis") is no longer used: it derives from the mCODE term *primary diagnosis* (the diagnosis currently in focus) and was ambiguous.

### Relations to previous tumour diseases: two axes

An oncological diagnosis can be related to a previous tumour disease in two
different ways — the profile deliberately separates these cases into
**two orthogonal extensions**:

| | `occurredFollowing` (temporal) | `condition-dueTo` (causal: causation) | `transformationVon` (lineage continuity) |
|---|---|---|---|
| Meaning | "occurred **after**" — independent second disease | "was **caused by**" | "is a **transformation of**" — the same tumour lineage |
| Extension | HL7 standard | HL7 standard | module-specific `mii-ex-onko-transformation-von` |
| Target | registered oncology diagnosis **or** [Previous tumour disease](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.html) | Condition, Procedure, MedicationStatement/-Administration | **only** a registered oncology diagnosis |
| Typical cases | second carcinoma years after a treated first tumour | **therapy-associated secondary malignancy** (e.g. t-AML `9920/3` after chemotherapy → reference to the therapy) | MDS → secondary AML · CNS /0 → /3 (the registry keeps a **new** entity) |

**oBDS classification:** `occurredFollowing` represents oBDS 5.9; `dueTo` and
`transformationVon` are **not part of the registry report** — they are FHIR added
value beyond the oBDS for structured linkage (hence without an oBDS mapping).
Examples: `mii-exa-onko-diagnose-taml-nach-chemo` (t-AML `9920/3` dueTo a
cyclophosphamide MedicationStatement) and
`mii-exa-onko-diagnose-angiosarkom-nach-radiatio` (haemangiosarcoma `9120/3` dueTo
a radiotherapy Procedure).

**Why not simply use `condition-dueTo` for transformations?** `dueTo` models
causation — if transformations were represented through it, lineage
transformation (MDS → AML) and external causation (t-AML after chemotherapy)
would no longer be distinguishable. The three axes are deliberately kept apart;
R5/R6 do not offer a core element for this either (the standard extensions live
in the cross-version HL7 extensions pack).

**Why the separation?** A plain `occurredFollowing` would wrongly suggest an
*independent* second disease in the case of a transformation; `transformationVon`
makes the tumour lineage traceable in a structured way.

**Clinical correctness vs. cancer registry requirements:** `transformationVon`
links two diagnosis resources and is therefore only to be used where the
**registry rule set actually keeps a new tumour entity** (MDS → AML,
CNS /0 → /3). The **CUP resolution** following the best-of rule (Manual ch. 6.2)
is deliberately **not** a use case: there **the same entity is changed** —
histology, localisation and ICD-10 are rewritten to the primary tumour that was
found, while the tumour ID and the original diagnosis date are retained.
In registry-conformant terms this is an update of the **same** Condition resource
(FHIR versioning, possibly with Provenance); a second resource with
`transformationVon` would only arise if a system deviates and keeps its own
history of the former CUP version.

**Note on modelling:** `transformationVon` is deliberately a *normal*
extension (not a modifierExtension): its absence does not make any statement of
the resource wrong — the diagnosis remains true and can be processed safely, only
the provenance context is missing. Where the WHO has made the transformation
origin an entity of its own, the morphology code itself carries it anyway
(e.g. `9895/3` AML-MRC); this is, however, not guaranteed (a secondary
glioblastoma may simply be coded as `9440/3`) — which is precisely why the
extension provides the structured provenance link.

Both extensions can be combined (a transformation always also occurred
temporally "afterwards"); example: `mii-exa-onko-diagnose-aml-transformation`
(MDS → secondary AML).

---

### Links to other resources
The oncological diagnosis is the central core element of the base data set. All case-related observations are linked to it directly or indirectly:
- all observations reference the primary tumour diagnosis via `Observation.focus`
- the tumour board resource references the primary tumour diagnosis via `CarePlan.addresses`
- all procedures (surgery, radiotherapy, systemic therapy) reference the primary tumour diagnosis via `reasonReference`

---

### Temporal assignment over the course of disease
In the oBDS, the assignment of observations as relevant for establishing the initial diagnosis is given by the fact that they are part of the diagnosis report. Later reports can then be made, for example, as follow-up, pathology or death reports.

Observations made after the initial diagnosis has been established reference, in the present profiling, a "Verlauf" (course) Observation resource with a date of its own.
The observations that are known at the time the initial diagnosis is established are of particular interest for prognostic research questions. In order to identify these data points more easily, all observations from the oBDS diagnosis report **SHOULD** be referenced via `evidence.detail` in a FHIR list using the profile "[Evidenz Erstdiagnose](StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose.html)".

---

### Conformance
The present profiling is compatible with the diagnosis profile of the ISiK base modules stage 4. https://simplifier.net/isik-basis-v4/isikdiagnose

---

**Examples**

[mii-exa-onko-diagnose](Condition-mii-exa-onko-diagnose.html)
