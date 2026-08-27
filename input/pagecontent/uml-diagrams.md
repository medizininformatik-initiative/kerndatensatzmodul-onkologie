<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page uml-diagrams.md (de) -->

The following UML diagram shows the implemented content and cardinalities of
the oBDS as realized by the CDS module Oncology.

![oBDS overall model of the Oncology module](onco_merged.svg)

### Organ-specific modules — UML diagrams

In addition to the overarching UML diagram, each organ-specific module has
its own detailed architecture diagrams — see the sections on the
[profiles page](profiles.html):

- [Breast module](profiles.html) — breast-cancer-specific profiles and their relationships
- [Prostate module](profiles.html) — prostate-cancer-specific profiles and their relationships
- [CRC module](profiles.html) — colorectal-carcinoma-specific profiles and their relationships
- [Melanoma module](profiles.html) — malignant-melanoma-specific profiles and their relationships

The structure of all organ-specific modules is additionally formally defined
in the [logical model](StructureDefinition-mii-lm-onko.html), which provides
the FHIR mappings for all entity-specific data elements.
