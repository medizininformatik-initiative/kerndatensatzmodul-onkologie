<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tnm-klassifikation-intro.md (de) -->
This profile is the grouping profile for a TNM classification in oncology.

The profile carries the reference date and serves as the anchor point for all further individual TNM observations at that point in time. The element `hasMember` contains references to all associated individual TNM observations.

In addition, the element `value` codes the UICC staging that is derived from the subordinate TNM observations.

### Manifestations of the TNM classification

A TNM classification occurs in different manifestations over the course of treatment. These are **not** distinguished by the oBDS reporting occasion, but exclusively by two axes of the FHIR representation:

1. the **code axis** of the grouping profile — `Observation.code` is bound to the value set [mii-vs-onko-tnm-klassifikation-typ](ValueSet-mii-vs-onko-tnm-klassifikation-typ.html) and carries SNOMED CT `399537006` "Clinical TNM stage grouping", `399588009` "Pathologic TNM stage grouping" or `399703000` "Integrated TNM category";
2. the **prefix modifiers of the individual categories** — the c/p/u prefix as an extension on `Observation.code` of the category observation, and the UICC prefixes y, r and a as modifierExtension on the respective T, N or M observation.

The reporting occasion is merely the typical trigger from which the manifestation results — it is not a distinguishing feature and is not represented in the resource.

**(1) Clinical staging** (typical trigger: diagnosis report). `code` = `399537006` "Clinical TNM stage grouping", the categories carry the c prefix. The UICC stage is present as a rule, because all three axes T, N and M are assessed clinically.

**(2) Pathological staging** (typical trigger: pathology or surgery report). `code` = `399588009` "Pathologic TNM stage grouping", the categories carry the p prefix, and in the case of neoadjuvant pretreatment additionally the y modifier (`ypT`, `ypN`). A UICC stage is typically **not** given here: `value` is deliberately modelled as 0..1 in the report panel, because a pathological staging alone cannot yield a stage — the M category usually originates from the clinical assessment.

**(3) Course of disease** (typical trigger: follow-up report). The manifestation is variable. Usually this is a renewed clinical re-staging (`code` = clinical), supplemented by the y modifier during or after ongoing therapy. In the case of a recurrence the r modifier is added — this depends on the **tumour status**, not on the reporting occasion, and can therefore also occur outside a follow-up report. If a further operation takes place during the course of disease, the classification may also be pathological.

**(4) Synthesised or integrated classification.** A separate profile [mii-pr-onko-tnm-klassifikation-synthetisiert](StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.html) exists for this, with a fixed `code` = `399703000` "Integrated TNM category". It merges the categories from several source classifications into a coherent state at the time of decision — including mixed cases, e.g. `ypT` and `ypN` from pathology together with `cM` from the clinical assessment. Here the UICC stage is **mandatory** (`value` 1..1), and `derivedFrom` mandatorily references the underlying source classifications.

| Manifestation | `Observation.code` | Category prefixes | UICC stage (`value`) | Profile |
|---|---|---|---|---|
| Clinical staging | `399537006` clinical | c | usually present | `mii-pr-onko-tnm-klassifikation` |
| Pathological staging | `399588009` pathologic | p, yp | as a rule not present (0..1) | `mii-pr-onko-tnm-klassifikation` |
| Course of disease | clinical, possibly pathologic | c/p, y during/after therapy, r on recurrence | variable | `mii-pr-onko-tnm-klassifikation` |
| Synthesised / integrated | `399703000` integrated | mixed (e.g. ypT + cN) | mandatory (1..1) | `mii-pr-onko-tnm-klassifikation-synthetisiert` |

The prefixes y, r and a are modelled as a **modifierExtension**, because they change the interpretation of the category value: `ypT2` is not equivalent to `pT2`. Processing systems must know these extensions and must not interpret a category without evaluating the prefix.

---

**Examples**

[mii-exa-onko-tnm-klassifikation-TisN0M0](Observation-mii-exa-onko-tnm-klassifikation-TisN0M0.html)

[mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1](Observation-mii-exa-onko-tnm-klassifikation-uT2a2pN0023i-sncM1.html)

### How prefixes, symbols and category values are coded

For statements that look structurally similar the module deliberately uses three
different mechanisms — what matters is whether the statement is *binary*,
*value-bearing*, or *the category itself*:

| Statement | Semantics | Representation |
|---|---|---|
| **c/p prefix** | how was the category established? | extension on the category's `code` |
| **y, r, a prefix** | binary prefix — applies or not (multimodal pre-treatment, recurrence, autopsy) | **`modifierExtension`** on the respective category (they change how the value is interpreted) |
| **(m) symbol** | **value-bearing**: number of simultaneous primary tumours, oBDS 8.10 — `(m)`, `(2)`, `(3)`, `(4)` | dedicated profile [`MII_PR_Onko_TNM_m_Symbol`](StructureDefinition-mii-pr-onko-tnm-m-symbol.html) with `valueCodeableConcept` from the UICC code system |
| **category value** (T2, N0, M1c …) | the category itself | dual coding in `valueCodeableConcept`: `uicc` (1..1) plus optional `snomed-ct` (0..1) |

**Why the (m) symbol looks different from y/r/a.** It is not a presence flag but
carries a value: `(3)` means three simultaneous primary tumours. A
`modifierExtension` without a value would lose that information. In addition, no
SNOMED CT equivalent exists for the counting variants `(2)`/`(3)`/`(4)`, which is
why — unlike for the categories — no dual coding is offered here.

{:.bg-info}
**Note on the former symbol profiles.** Up to and including v2026 there were
dedicated Observation profiles for y, r and a with a fixed SNOMED code. They are
**deprecated** as of v2027 (`status = retired`); the prefixes are carried on the
categories themselves. Legacy data remains readable; new implementations should
use the modifier extensions.
