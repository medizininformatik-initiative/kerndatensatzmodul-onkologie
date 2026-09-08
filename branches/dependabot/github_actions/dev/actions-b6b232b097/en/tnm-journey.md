# TNM Step by Step - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **TNM Step by Step**

## TNM Step by Step

This page explains the module's TNM model **along one continuous course of treatment**: a breast carcinoma from initial diagnosis through neoadjuvant chemotherapy and surgery to recurrence. Every station links to its example instances — same patient, same disease, five classifications.

The model in one sentence: **a panel ([TNM classification](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)) bundles one T, N and M category observation each via `hasMember`; prefixes that change interpretation (y, r, a) sit as `modifierExtension` on the category; the method-of-determination prefix (c, p, u) sits as a regular extension on `Observation.code`.**

-------

#### Station 1 — Initial diagnosis: cT3 cN1 cM0

Clinical classification from imaging and examination. All three categories carry the c prefix via the extension `mii-ex-onko-tnm-cp-praefix` — it documents **how** the finding was determined, without changing what the value means.

[Panel](Observation-mii-exa-onko-tnm-clinical-cT3cN1cM0.md) · [cT3](Observation-mii-exa-onko-tnm-t-kategorie-cT3.md) · [cN1](Observation-mii-exa-onko-tnm-n-kategorie-cN1.md) · [cM0](Observation-mii-exa-onko-tnm-m-kategorie-cM0.md)

#### Station 2 — After core biopsy: cT4 cN1 cM0

The biopsy reveals chest wall infiltration: the T upgrade to cT4. It remains a **clinical** category — pathological classification (p) requires resection, not biopsy. The panel keeps referencing the unchanged cN1/cM0: categories are reused, not duplicated.

[Panel](Observation-mii-exa-onko-tnm-biopsy-cT4cN1cM0.md) · [cT4](Observation-mii-exa-onko-tnm-t-kategorie-cT4.md)

#### Station 3 — After neoadjuvant chemotherapy: ycT2 ycN0 cM0

Here the **y prefix as `modifierExtension`** ([`mii-ex-onko-tnm-y-praefix`](StructureDefinition-mii-ex-onko-tnm-y-praefix.md)) enters: classification during/after multimodal therapy. `ycT2` does **not** describe the same situation as `cT2` — the tumour was shrunk therapeutically. That is precisely why it is a modifierExtension: systems that do not evaluate it must not silently interpret the value.

[Panel](Observation-mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0.md) · [ycT2](Observation-mii-exa-onko-tnm-t-kategorie-ycT2.md) · [ycN0](Observation-mii-exa-onko-tnm-n-kategorie-ycN0.md)

#### Station 4 — After surgery: ypT0 ypN0 cM0 (pathological complete response)

Resection enables the pathological classification: p prefix in the cp extension, y prefix still as modifierExtension — `ypT0` means: no residual tumour demonstrable in the resection specimen, **after** neoadjuvant therapy. The accompanying classifications join in: lymphatic invasion [L0](Observation-mii-exa-onko-tnm-journey-l-kategorie-L0.md), venous invasion [V0](Observation-mii-exa-onko-tnm-journey-v-kategorie-V0.md), perineural invasion [Pn0](Observation-mii-exa-onko-tnm-journey-pn-kategorie-Pn0.md) and the [residual status R0](Observation-mii-exa-onko-tnm-journey-residualstatus-R0.md).

[Panel](Observation-mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0.md) · [ypT0](Observation-mii-exa-onko-tnm-t-kategorie-ypT0.md) · [ypN0](Observation-mii-exa-onko-tnm-n-kategorie-ypN0.md)

#### Station 5 — Recurrence: rcT2 cN1 cM1

Two years later, a local recurrence with distant metastasis. The **r prefix as `modifierExtension`** ([`mii-ex-onko-tnm-r-praefix`](StructureDefinition-mii-ex-onko-tnm-r-praefix.md)) marks the recurrence classification; the categories themselves are clinical (c) again.

[Panel](Observation-mii-exa-onko-tnm-recurrence-rcT2cN1cM1.md) · [rcT2](Observation-mii-exa-onko-tnm-t-kategorie-rcT2.md) · [rcN1](Observation-mii-exa-onko-tnm-n-kategorie-rcN1.md) · [rcM1](Observation-mii-exa-onko-tnm-m-kategorie-rcM1.md)

#### The course as the bracket

Three follow-up instances ([after chemotherapy](Observation-mii-exa-onko-verlauf-journey-post-chemo.md), [after surgery](Observation-mii-exa-onko-verlauf-journey-post-surgery.md), [recurrence](Observation-mii-exa-onko-verlauf-journey-recurrence.md)) link the stations into the disease history via `hasMember` — oBDS chapter 17 in FHIR.

-------

#### What this page teaches about the modelling

* **Categories are observations in their own right** and are reused between panels, not copied (station 2).
* **c/p/u is method, y/r/a is meaning**: the former a regular extension on `code`, the latter a `modifierExtension` on the category — the rationale is on the [Migration from v2026](migration-v2026.md) page, entry 1.
* **Prefixes combine**: `ypT0` carries p in the cp extension and y as modifierExtension at the same time (station 4).
* The deprecated symbol profiles (y/r/a/m as separate observations) deliberately no longer appear in this example; stored data using them stays readable — see [Migration from v2026](migration-v2026.md), entry 7.

