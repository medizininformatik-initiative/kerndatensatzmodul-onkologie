<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-tnm-klassifikation-intro.md) -->
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
