<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-tnm-n-kategorie-intro.md (de) -->
This profile describes the N category of the TNM classification. The N category codes the absence or presence of regional lymph node metastases and is coded entity-specifically.

> **UICC prefixes y/r/a (modifierExtension):** The prefixes y (during/after multimodal
> therapy), r (recurrence) and a (autopsy) are represented at category level as a
> **modifierExtension** (`mii-ex-onko-tnm-y-praefix`, `…-r-praefix`,
> `…-a-praefix`), because they change the interpretation of the category value —
> ypT2 is not prognostically comparable with pT2. Processing systems must know
> these extensions. The c/p/u prefix remains a normal extension on
> `code`, because this information is redundantly contained in the observable code
> and in the SNOMED CT value. The symbol observations (y/r/a symbol) at the level of
> the TNM classification are retained for the oBDS mapping (8.3–8.5); mixed
> prefix situations (e.g. ypT2 cN0) are represented via the category prefixes.

---

**Examples**

[mii-exa-onko-tnm-n-kategorie-N0](Observation-mii-exa-onko-tnm-n-kategorie-N0.html)

[mii-exa-onko-tnm-n-kategorie-pN0i-sn](Observation-mii-exa-onko-tnm-n-kategorie-pN0i-sn.html)
