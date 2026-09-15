<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung-intro.md (de) -->
### Content
This profile describes previous tumour diseases that were diagnosed or treated at an earlier point in time according to the patient history. It is based on the FHIR Condition resource, because historical anamnestic data are often only available as free text.

### Delimitation and direction of reference

This profile is intended for pre-existing conditions that are known **only from
the patient history** (oBDS 5.9, frequently free text). The current diagnosis
references them via the extension `occurredFollowing` (temporal axis "occurred after").

Two cases deliberately do **not** belong here:

1. **The previous disease is available as a registered oncological diagnosis**
   (e.g. documented in the same data integration centre): in that case the
   `occurredFollowing` of the new diagnosis references the registered
   [Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html) directly — a free-text duplicate in this profile
   must not be created.
2. **The new diagnosis is a transformation of the same tumour lineage**
   (MDS → AML, CNS /0 → /3 — the registry keeps a new entity): in that case the
   extension `mii-ex-onko-transformation-von` (causal axis) is to be used on the
   new diagnosis — details and decision table can be found on the page
   [Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html).

---

### Delimitation from the primary tumour diagnosis
In contrast to the profile "Diagnose Primärtumor" (MII_PR_Onko_Diagnose_Primaertumor), which describes the current oncological disease, this profile serves to record **previous** tumour diseases from the patient history.

**Key differences:**
* **Data source**: previous tumour diseases often originate from free-text entries in the patient history, whereas the primary tumour diagnosis is based on current diagnostic findings
* **Coding requirements**: code.text is mandatory, ICD-10-GM coding is optional (mandatory for the primary tumour)
* **Base profile**: based on FHIR Condition (not on MII Diagnose), in order to allow flexible free-text recording
* **Level of detail**: reduced requirements for diagnostic certainty, topography and further details

---

### Usage notes

#### Mandatory data
* **code.text**: textual description of the previous tumour disease (e.g. "skin cancer on the back, approx. 2010")
* **category**: categorisation as an oncological diagnosis (SNOMED CT: 394593009 "Medical oncology")
* **subject**: reference to the patient

#### Optional data
* **code.coding[icd10-gm]**: ICD-10-GM coding, if it can be determined retrospectively
* **bodySite.coding[icd-o-3]**: ICD-O-3 topography, if known
* **extension[assertedDate]**: date of diagnosis of the previous tumour disease
* **clinicalStatus**: current clinical status (e.g. resolved, remission)
* **verificationStatus**: verification status (e.g. confirmed, unconfirmed)
* **note**: additional information on the previous tumour disease

---

### Mapping to oBDS 5.9

The profile represents the oBDS requirement for "Frühere Tumorerkrankungen" (section 5.9):

| oBDS element | FHIR path | Remark |
|--------------|-----------|--------|
| Previous tumour disease, description | code.text | mandatory field |
| Previous tumour disease, ICD-10-GM code | code.coding[icd10-gm].code | optional |
| Previous tumour disease, ICD-10-GM version | code.coding[icd10-gm].version | optional |
| Previous tumour disease, date of diagnosis | extension[assertedDate].valueDateTime | optional |
| Previous tumour disease, ICD-O-3 topography | bodySite.coding[icd-o-3].code | optional |

---

### Examples

**Example 1: with ICD-10-GM coding**
```
Code.text: "Mamma-Ca, links"
Code.coding[icd10-gm]: C50.9 (ICD-10-GM 2013)
BodySite.coding[icd-o-3]: C50.9 "Breast, NOS"
Extension[assertedDate]: 2013
ClinicalStatus: resolved
```

**Example 2: free text only (typical anamnestic entry)**
```
Code.text: "Hautkrebs am Rücken, ca. 2010"
Extension[assertedDate]: 2010
ClinicalStatus: resolved
Note: "Patient berichtet von operativ entferntem Hautkrebs vor ca. 14 Jahren"
```

Complete examples can be found in the instances:
* [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html) - cervical carcinoma in situ
* [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html) - breast carcinoma
* [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html) - prostate carcinoma
* [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html) - free text only, without ICD coding

---

### Conformance

The profile is compatible with the FHIR Condition resource R4.

---

**Examples**

Example 1: previous tumour disease breast (with ICD-10-GM and ICD-O-3 coding) — [mii-exa-onko-fruehere-tumorerkrankung-mamma](Condition-mii-exa-onko-fruehere-tumorerkrankung-mamma.html)

Example 2: previous tumour disease cervix in situ (with ICD-10-GM coding) — [mii-exa-onko-fruehere-tumorerkrankung-cervix](Condition-mii-exa-onko-fruehere-tumorerkrankung-cervix.html)

Example 3: previous tumour disease prostate (with ICD-10-GM and ICD-O-3 coding) — [mii-exa-onko-fruehere-tumorerkrankung-prostata](Condition-mii-exa-onko-fruehere-tumorerkrankung-prostata.html)

Example 4: previous tumour disease, free text only (typical anamnestic entry without coding) — [mii-exa-onko-fruehere-tumorerkrankung-freetext](Condition-mii-exa-onko-fruehere-tumorerkrankung-freetext.html)
