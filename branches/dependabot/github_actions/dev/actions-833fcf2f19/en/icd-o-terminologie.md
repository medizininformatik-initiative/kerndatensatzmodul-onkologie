# ICD-O: Revisions and Validation - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Code Systems**](code-systems.md)
* **ICD-O: Revisions and Validation**

## ICD-O: Revisions and Validation

### Overview and Governance

The **International Classification of Diseases for Oncology** (ICD-O) is published by IARC on behalf of the WHO and describes neoplasms along two axes: **topography** (site, `C…` codes) and **morphology** (histology and behaviour, `XXXX/B` codes with a behaviour digit). The German-language edition is published by the **BfArM** on behalf of the Federal Ministry of Health.

In the Oncology module, topography is used at `Condition.bodySite` (primary tumour diagnosis) and morphology via the histology profiles and the extension `mii-ex-onko-histology-morphology-behavior-icdo3`.

### Revisions: First (2014) and Second Revision (2019)

For ICD-O-3 there are two German revisions that occur side by side in legacy data:

| | | | |
| :--- | :--- | :--- | :--- |
| First revision | 2014 | ICD-O-3.1 | widespread in cancer registry legacy data |
| Second revision | 2019 | ICD-O-3.2 | current edition (publication completed 12/2020) |

The second revision differs substantially (morphology axis: **124 new** and **56 removed** codes alongside approximately 1,080 unchanged ones; 55 verified against the server, plus 8153/1 per the official BfArM update list of 2021-01-29):

* **New codes** mainly concern molecularly defined entities (e.g. `8023/3` NUT carcinoma, `8085/3`/`8086/3` HPV-positive/-negative squamous cell carcinoma).
* **Re-assessed behaviour**: entities that the WHO uniformly classifies as malignant lost their `/0` and `/1` variants — among them GIST (`8936/1` → `8936/3`), phaeochromocytoma (`8700/0` → `8700/3`), thymomas type A–B3 (`/1` → `/3`) and the paragangliomas (`868x`/`869x`).
* **Merged entities**: e.g. Ewing sarcoma `9260/3` → `9364/3`, haemangiopericytoma `9150/x` → solitary fibrous tumour (`8815/x`), small lymphocytic lymphoma `9670/3` → CLL/SLL `9823/3`.
* **Discontinued syndrome concepts** without a successor (meningiomatosis `9530/1`, neurofibromatosis `9540/1`): here the individual tumours are to be coded.

### Transition of Legacy Data

The ConceptMap **`mii-cm-onko-icdo3-transitions-2019`** documents all 55 morphology-axis transitions with their degree of equivalence (analogous to the ATC transition ConceptMaps of systemic therapy):

* `equivalent` — behaviour re-classifications and 1:1 merges,
* `wider` — absorbed into a broader concept (e.g. refractory neutropenia/ thrombocytopenia → MDS with single lineage dysplasia `9980/3`),
* `narrower` — uncertain `/1` concepts with several behaviour-specific successors (behaviour must be assigned case by case based on the findings),
* `unmatched` — discontinued concepts with a coding hint in the comment.

It is intended as a tool for ETL pipelines and the migration of cancer registry legacy data; the transition does not replace a case-by-case clinical review.

### Validation: Revisions Are Separate CodeSystem Resources

On the MII terminology server, ICD-O-3 — like ICD-10-GM, OPS and ATC — is held as **separate CodeSystem resources per revision** under one canonical URL (`http://terminology.hl7.org/CodeSystem/icd-o-3`, versions `2014` and `2019`). Two rules follow from this:

1. **ValueSet filters must be version-pinned.**With several revisions loaded, unpinned`descendent-of`filters fail because of version ambiguity —`$validate-code`with`systemVersion=2014`then incorrectly returned**not-in-valueset**even though the code exists in both revisions. All ICD-O ValueSets of this module therefore pin their includes.
1. **Instances SHOULD state `coding.version`**(`"2014"`or`"2019"`) so that validation and analysis know the revision.

The binding of the profiles points to the **union ValueSets** of both revisions: legacy data of the first revision (including the codes removed in 3.2) and current data therefore validate equally. For revision-specific checks (data quality, ETL) the per-year ValueSets are available.

### Technical Artifacts

| | | |
| :--- | :--- | :--- |
| [`mii-vs-onko-icdo3-morphologie`](ValueSet-mii-vs-onko-icdo3-morphologie.md) | Morphology, union 2014 + 2019 | Profile binding (tolerant for legacy and new data) |
| [`mii-vs-onko-icdo3-topographie`](ValueSet-mii-vs-onko-icdo3-topographie.md) | Topography, union 2014 + 2019 | Profile binding |
| [`mii-vs-onko-icdo3-morphologie-2014`](ValueSet-mii-vs-onko-icdo3-morphologie-2014.md)/[`-2019`](ValueSet-mii-vs-onko-icdo3-morphologie-2019.md) | Morphology, revision-specific | DQ checks, ETL, analysis per data stock |
| [`mii-vs-onko-icdo3-topographie-2014`](ValueSet-mii-vs-onko-icdo3-topographie-2014.md)/[`-2019`](ValueSet-mii-vs-onko-icdo3-topographie-2019.md) | Topography, revision-specific | DQ checks, ETL |
| [`mii-cm-onko-icdo3-transitions-2019`](ConceptMap-mii-cm-onko-icdo3-transitions-2019.md) | 56 morphology transitions 3.1 → 3.2 | Migration of legacy data |

### Outlook: ICD-O-4

IARC published the final tables of **ICD-O-4** in early 2026 (WHO Classification of Tumours Online): a new morphology structure with **five-digit** morphology codes based on the 5th edition of the WHO Blue Books, harmonised with ICD-11. The book is in preparation; a German edition by the BfArM as well as a migration roadmap of the cancer registries are still pending. As soon as a German ICD-O-4 is published it will be integrated following the pattern established here: a revision-specific ValueSet plus a transition ConceptMap — whereby the move to five-digit codes will be a structurally larger step than the previous revisions.

