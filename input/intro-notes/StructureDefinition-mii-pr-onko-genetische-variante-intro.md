<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-genetische-variante-intro.md) -->

##

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
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/Genetische-Variante-Observation.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html).

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-genetische-variante```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Observation?status=final

    Usage notes: Further information on searching by "status" can be found in the FHIR base specification - section "token".```

4. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Observation?category=http://terminology.hl7.org/CodeSystem/observation-category|laboratory```

    Usage notes: Further information on searching by "category" can be found in the FHIR base specification - section "token".

5. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=http://fhir.de/CodeSystem/sct|184305005```

    Usage notes: Further information on searching by "code" can be found in the FHIR base specification - section "token".

6. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/example```

    Usage notes: Further information on searching by "subject" can be found in the FHIR base specification - section "reference".

7. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/example```

    Usage notes: Further information on searching by "focus" can be found in the FHIR base specification - section "reference".

8. The search parameter "encounter" MUST be supported:

    Examples:

    ```GET [base]/Observation?encounter=Encounter/example```

    Usage notes: Further information on searching by "encounter" can be found in the FHIR base specification - section "reference".

9. The search parameter "interpretation" MUST be supported:

    Examples:

    ```GET [base]/Observation?interpretation=http://snomed.info/sct|55446002```

    Usage notes: Further information on searching by "interpretation" can be found in the FHIR base specification - section "token".

10. The search parameter "method" MUST be supported:

    Examples:

    ```GET [base]/Observation?method=http://loinc.org|LA26398-0

    Usage notes: Further information on searching by "method" can be found in the FHIR base specification - section "token".```

11. The search parameter "specimen" MUST be supported:

    Examples:

    ```GET [base]/Observation?specimen=Specimen/example```

    Usage notes: Further information on searching by "specimen" can be found in the FHIR base specification - section "reference".

12. The search parameter "device" MUST be supported:

    Examples:

    ```GET [base]/Observation?device-from=Device/example```

    Usage notes: Further information on searching by "device" can be found in the FHIR base specification - section "reference".

13. The search parameter "derived-from" MUST be supported:

    Examples:

    ```GET [base]/Observation?derived-from=Observation/example```

    Usage notes: Further information on searching by "derived-from" can be found in the FHIR base specification - section "reference".

**Examples**

[mii-exa-onko-genetische-variante-braf](Observation-mii-exa-onko-genetische-variante-braf.html)
