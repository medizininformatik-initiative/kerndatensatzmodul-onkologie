<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-genetische-variante-intro.md (de) -->

### Context

Information on genetic variants has been captured as part of the oBDS since the 2021 version. A variant is captured via two data fields:
* 'Genetic variant name' as free text
* 'Genetic variant characteristic' as oBDS-specific codes for the interpretation.

With the Molecular Genetic Findings Report (MolGenBB), the MII already offers a structure for exchanging genetic findings. The MolGenBB is based on the GenomicReport (version STU2) of the international HL7 Clinical Genomics Working Group and uses international terminologies and nomenclatures such as:
* **HGNC** for the unambiguous description of gene names
* **HGVS** for the description of variants in the coding and non-coding DNA region as well as for proteins
* **ISCN** for the description of cytogenomic position and structural variants
* **Sequence Ontology** for the semantic annotation of the variants

It can be assumed that genetic laboratories and bioinformatics pipelines work on the basis of these classifications or are able to map to them.

However, the coarse-grained capture of variant data in the oBDS makes a direct mapping to the terminologies and nomenclatures mentioned above impossible.

### Conformance Statements
Where possible, a more precise variant description SHOULD be provided via the MII Variant.

These variants SHOULD be incorporated by embedding them into the MII Molecular Genetic Findings Report `DiagnosticReport` and the MII Molecular Genetic Request `ServiceRequest`.

In the event that these modules cannot be implemented at the DIZ sites at all, not yet, or only partially, a direct mapping of the oBDS fields to the following fields SHALL be performed:
* `Observation.note` for variant name
* `Observation.interpretation` for the characteristic of the variant.

### Overview MII Variant
The variant profile of the Molecular Findings Report can be found here:
https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante

When using the MII Variant, the following data fields are mandatory for conformance:
* `subject`: reference to a patient
* `code`: fixed LOINC code (69548-6) to identify it as an examination of a genetic variant
* `status`: HL7 status
* `category`: fixed HL7 code for classification as a laboratory value

In addition, the following information can optionally be provided:
* `specimen`: reference to the biosample
* `method`: methodology of the examination
* `valueCodeableConcept`: variant assessment (present, not present, not called, indeterminate)
* `component`: all further details on the methodological procedure and evaluation, as well as variant information

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.html)
