<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-liste-evidenz-erstdiagnose-intro.md (de) -->
> **Retired since v2027.0.0 (ballot HDB-678).** The observations and reports of the initial diagnosis are referenced directly in `Condition.evidence.detail` of [Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.html); an additional List resource is no longer foreseen. This profile remains readable for legacy data and permitted as a reference target.

The List resource is a flat collection of resources and provides functions for managing the collection. In this case the resource serves as a collection of the observations and findings reports that are known at the time of the initial oncological diagnosis. These include, for example, a TNM classification as well as further diagnostically relevant classifications, distant metastases, histologies etc.

The evidence list itself is not part of the oBDS; it is intended to permanently record the state at the time of the initial diagnosis.

* The list **SHOULD** be created on the basis of the content that was known before or at the time the initial diagnosis was established.
* For this purpose the entries **MAY** be taken directly from the diagnosis report.

---

**Examples**

[mii-exa-onko-liste-evidenz-erstdiagnose-1](List-mii-exa-onko-liste-evidenz-erstdiagnose-1.html)
