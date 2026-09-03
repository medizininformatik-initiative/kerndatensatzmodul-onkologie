<!-- markdownlint-disable MD041 -->
<!-- English rendering of input/pagecontent/security-and-privacy.md.
     Structured in the TF-KDS-agreed THREE stages: (1) the overarching data
     protection concept, (2) DIMP in the data portal, (3) the
     module-specific aspects. Stages 1 and 2 are static overarching content —
     keep them; stage 3 is where your module writes. Stage 3's CONTENT is
     optional: a module with no aspects of its own adopts the default text in
     the section. Oncology does not: stage 3 states the module's own aspects
     (germline findings affecting third parties, identifying variant profiles,
     re-identification via rare entities).
     German mirror: input/translations/de/pagecontent/security-and-privacy.md —
     both files must say the same thing. -->


This section addresses security and privacy experts. General requirements are in
the FHIR core specification —
[Security & Privacy Module](https://build.fhir.org/secpriv-module.html) and the
[security checklist](https://build.fhir.org/security.html). This page does not
repeat them; it links the overarching data protection framework and states what is
**specific to this module**.

#### 1. The overarching data protection concept

The
[overarching data protection concept of the Medical Informatics Initiative](https://www.medizininformatik-initiative.de/en/data-protection-concept)
governs how patient data may be processed for research across the network of
Data Integration Centers: it
covers the legal basis (the MII Broad Consent), the roles of the Data
Integration Centers and Use & Access Committees, and the cross-site application
scenarios (feasibility queries, distributed analyses, data and biosample
provision). Everything this module specifies operates inside that framework —
this guide adds no processing purpose of its own.

#### 2. De-identification, minimisation and pseudonymisation (DIMP)

How data leaving a Data Integration Center is de-identified in practice is
specified by
[DIMP (De-Identification — Minimisation — Pseudonymisation)](https://medizininformatik-initiative.github.io/dataportal/data-node/DIMP.html)
in the data portal documentation: direct identifiers are removed,
data elements not needed by the approved project are dropped, and identifying
values are replaced by project-specific pseudonyms (FHIR Pseudonymizer
configuration). The profiles of this module describe data *before* DIMP is
applied; which elements survive a concrete data release is decided per project
by the DIMP configuration, not by this guide.

#### 3. Module-specific aspects

This is the module's own contribution: the security and privacy properties
that follow from the *kind of data this module carries*. **Its content is
optional** — not every module has aspects of its own. If yours does not, the
whole section body becomes the following default text (delete the example and
TODO boxes below and adopt it verbatim):

> Beyond the overarching framework above — the overarching data protection
> concept, the Broad Consent it rests on, and DIMP — this module carries no
> data category that raises security or privacy aspects of its own, and it
> places no module-specific security or privacy requirements on implementers.

This module carries data categories that require consideration beyond the
overarching framework:

- **Germline findings affecting third parties.** Predisposition syndromes
  ([ORPHA](ValueSet-mii-vs-onko-praedispositionssyndrome-orpha.html)) and
  predisposition genes ([HGNC](ValueSet-mii-vs-onko-praedispositionsgene-hgnc.html))
  are statements about germline variants. They concern blood relatives who never
  consented to the data use. Pseudonymisation at profile level does not protect
  those third parties.
- **Genetic variants are identifying in themselves.** A sufficiently specific
  variant profile
  ([Genetic variant](StructureDefinition-mii-pr-onko-genetische-variante.html))
  remains traceable even after pseudonymisation. The risk lies in the datum
  itself, not in the linkage.
- **Re-identification via rare entities.** The combination of a rare tumour
  entity (ICD-O-3 morphology), age and region can converge on an individual in
  small cohorts without any identifier being involved.
- **Death data** (oBDS chapter 20) and study participation (chapter 24) connect
  this module to further contexts.

This yields requirements for implementers:

- Systems **SHOULD** subject germline and predisposition findings to a separate
  access decision rather than releasing them together with the remaining
  oncological dataset.
- Analyses over rare entities **SHOULD** be checked for cell sizes before
  release; the profiles of this module do not do this.
- These risks are **not** solvable at profile level. They must be addressed in
  system design, in operations and through data use policies — this module
  describes the structure of the data, not the conditions of its use.
