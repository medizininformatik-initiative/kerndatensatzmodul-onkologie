<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page logical-models.md (de) -->

### Logical Models

The logical data models of the Oncology module describe the domain dataset
independently of its concrete FHIR representation:

- **[oBDS base dataset](StructureDefinition-mii-lm-onko.html)** — the logical
  model of the German oncology base dataset with the FHIR mappings of the
  implemented data fields.
- **[Organ-specific modules](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html)**
  — the entity-specific data elements of the breast, prostate, colorectal
  carcinoma and malignant melanoma modules.
- **[MVGenomSeq dataset](StructureDefinition-mii-lm-mvgenomseq-onkologie.html)**
  — the oncology dataset of the German model project on genome sequencing
  (§ 64e SGB V); the mapping to the MII CDS is provided as a
  [ConceptMap](ConceptMap-mii-cm-onkologie-to-mvgenomseq.html).
