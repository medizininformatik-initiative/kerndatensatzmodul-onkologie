# ICD-O: Revisions and Validation - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.1

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

### ICD-O-4: New Structure and Changes Compared with ICD-O-3.2

IARC presented **ICD-O-4** in early 2026 (Znaor et al., **Cancer Epidemiology**, online 22 January 2026) and released the final topography and morphology tables in July 2026 via **WHO Classification of Tumours Online**. ICD-O-4 is based on the 5th edition of the WHO Blue Books (including the molecularly defined entities) and is harmonised with ICD-11. The book is in preparation at WHO; a **German edition by the BfArM** as well as a migration roadmap for the cancer registries and the oBDS are still pending. The description below is based on an analysis of the English IARC tables (`ICD-O-4.xlsx`, `Morphology_annexes.xlsx`, `Topography_annexes.xlsx`, as of 16 July 2026); the figures are derived from them and are not official IARC statements.

#### Morphology: Five-Character Codes

The morphology code is extended from `XXXX/B` to **`XXXXY/B`**:

* The first four characters correspond to the previous ICD-O-3 code; the behaviour digit `/B` is unchanged (`/0`, `/1`, `/2`, `/3`, `/6`, `/9`).
* The **fifth character `Y`** distinguishes entities that ICD-O-3 grouped under one code as **related terms**. `Y = 0` is the generic successor of the ICD-O-3 code (`8140/3` → `81400/3`); `1`–`9` are sub-entities. Once the digits are exhausted, **letters** follow (`A`–`K`, without `I`), e.g. `8140A/3`…`8140G/3`, `9680A/3`…`9680K/3`. The code is therefore alphanumeric and no longer purely numeric.
* Scope: about **2,390 codes** (ICD-O-3.2: 1,143) on 842 four-character stems; roughly half of the codes have a fifth character ≠ 0. The most strongly expanded stems are `8770` (Spitz tumours, 34 codes), `8140` (adenocarcinomas, 24), `8720` (melanomas, 24), `9680` (DLBCL, 21), `9120` (haemangiomas/angiosarcomas, 19) and `9385` (diffuse gliomas, 16).
* The table structure is unchanged from ICD-O-3.2: term levels **Preferred**, **Synonym**, **Related**, group headings (levels 1–3), a **Code reference** column with topography restriction (e.g. `(C73.9)`), and the `[obs]` marker for obsolete terms (455 terms).

Changes on the morphology axis according to the IARC annexes:

| | | |
| :--- | :--- | :--- |
| New four-character combinations (stem + behaviour new) | 109 codes | `80040/1`spindle cell tumour of uncertain malignant potential,`80850/2`squamous cell carcinoma in situ, HPV-associated |
| New sub-codes (fifth character ≠ 0 under an existing stem) | 1,175 codes | `80202/3`anaplastic thyroid carcinoma,`88421/3`pulmonary myxoid sarcoma with EWSR1::CREB1 |
| Deleted ICD-O-3.2 codes | 29 codes | 28 of them "terms moved" to another stem,`8150/0`without successor (no benign pancreatic NET any more) |
| Stem changes (terms under a new four-character stem) | 19 → 17 codes | `8042/3`,`8043/3`,`8044/3`→`80410/3`(small cell variants merged),`8081/2`Bowen disease →`80700/2`,`9440/3`diffuse midline glioma →`93850/3`,`9727/3`→`98350/3`,`9014`/`9015`adenofibromas →`8441`/`8442`/`8472` |
| Behaviour changes | 48 terms, 24 codes | `0 → 3`(16): pituitary adenomas`8271/0`,`8272/0`,`8280/0`,`8281/0`,`8300/0`become PitNET`/3`;`1 → 3`(10): apudoma`8248/1`, chondrosarcoma grade 1`9222/1`, melanotic schwannoma`9560/1`→`95401/3`;`3 → 1`(7): keratoacanthoma`8071/3`→`80710/1`, eosinophilic granuloma`9751/3`→`97510/1`;`0 → 1`(10): pancreatic microadenoma`8150/0`→`81500/1`;`3 → 0`: cylindroma`8200/3`→`82000/0`;`1 → 2`:`8480/1`→`84800/2` |
| New terms | 1,848 terms at 1,301 codes | — |
| Changed terms | 935 terms | 540× US → WHO spelling (**tumor**→**tumour**,**leukemia**→**leukaemia**), 130× WHO style, 120× addition of "NOS", 23× genomic nomenclature (fusions now`BCR::ABL1`instead of`BCR-ABL1`) |
| Deleted terms | 23 terms | ambiguous or no longer recognised terms, e.g.**Bronchial adenoma, NOS**,**Diffuse astrocytoma, IDH-wildtype** |

**Transition ICD-O-3.2 → ICD-O-4.** For 1,105 of the 1,143 codes of the Second Revision the successor is the code with an appended `0` and the same behaviour. 38 codes cannot be transitioned this way: 27 were deleted or moved to another stem (see table), 11 were **renumbered within their stem** because position `0` went to a different entity (`8121/1` → `81211/1`, `8163/2` → `81631/2`, `8261/2` → `82611/2`, `8263/2` → `82632/2`, `8453/2` → `84531/2`, `8453/3` → `84531/3`, `8631/0` → `86311/0`, `8631/3` → `86311/3`, `9538/3` → `95383/3`, `9591/1` → `95911/1`, `8210/2` → `82111/2`). In addition there are the behaviour changes, where the appended code exists but carries a different behaviour. Naively appending a `0` is therefore not sufficient as an ETL rule; the transition needs a ConceptMap following the pattern of [`mii-cm-onko-icdo3-transitions-2019`](ConceptMap-mii-cm-onko-icdo3-transitions-2019.md).

#### Topography: Stem Codes Unchanged, Optional Fourth Digit

The three-character topography codes with one decimal (`C00.0`–`C80.9`, 337 codes) are retained. New are:

* **Optional four-digit codes** `CXX.YZ` (381 codes) for selected sites; `Z = 0` is the default, 44 codes have `Z ≠ 0`: caecum/ileocaecal valve (`C18.01`, `C18.02`), soft tissues and peripheral nerves by trunk/limb/viscera (`C47.31`–`C47.53`, `C49.31`–`C49.52`), urethra (`C68.02` Littré gland, `C68.03` prostatic urethra), eye (`C69.4x`, `C69.5x`), brain stem (`C71.70`), thyroid/thyroglossal duct (`C73.90`), `C76.01` **Head and neck neoplasm, primary site unknown**.
* **New codes** by splitting: `C06.3` minor salivary gland (from `C06.9`), `C16.7` oesophagogastric junction (from `C16.0`), `C21.3` perianal skin (from `C44.5`), `C24.1` sphincter of Oddi, `C24.2` distal, `C24.3` perihilar (Klatskin) and `C24.4` cystic duct (all from `C24.0`), `C68.1` Skene gland; `C71.0` takes over the suprasellar region, corpus callosum and tapetum from `C71.8`/`C71.9`.
* **Term changes**: WHO spelling (**caecum**, **oesophagus**, **coeliac**), `C80.9` is now **Primary site unspecified**, alongside `C80.0`/`C80.00` **Primary site unknown, so stated**; `C72.4` gains **Vestibulocochlear nerve**.
* New presentation levels **Related list**/**Bullet** for enumerations ("Skin of: cheek, chin, …").

#### Consequences for the oBDS and This Module

* **oBDS**: the XSD (v3.0.5) enforces the pattern `\d\d\d\d/\d` for `Morphologie_ICD_O/Code` and only knows `31`, `32`, `33` as `Version`; five-character, alphanumeric codes therefore cannot be reported. The topography pattern (`C\d\d\.\d(\d)?`) already admits the optional fourth digit.
* **FHIR**: the ICD-O-3 artefacts of this module (extension `mii-ex-onko-histology-morphology-behavior-icdo3`, ValueSets `mii-vs-onko-icdo3-*`, canonical `http://terminology.hl7.org/CodeSystem/icd-o-3`) are bound to the third edition by name and by `system`. ICD-O-4 will need its own CodeSystem (canonical not yet defined), its own revision-specific ValueSets and a transition ConceptMap `3.2 → 4` following the pattern established above; a union ValueSet across editions is not meaningful because of the different code syntax. Validation and ETL rules that check for four digits plus behaviour must be extended to the alphanumeric pattern `[0-9]{4}[0-9A-K]/[0-9]`.
* **Timeline**: open. Because of the changed code pattern, adopting ICD-O-4 in the oBDS is not possible as a patch of the 3.0.x line and is expected to come with an **oBDS version 4.0**; no date is known. Until the German edition and the oBDS adaptation, ICD-O-3 (Second Revision) remains binding; this module does not anticipate any ICD-O-4 artefacts.

