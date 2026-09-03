# Code Systems - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* **Code Systems**

## Code Systems

### Code systems and terminologies

This page describes the terminologies and code systems used in the Oncology module. The ValueSets built on them are described on the [Value Sets](value-sets.md) page; the full list of CodeSystems defined by the module itself (naming convention `MII_CS_Onko_<Name>`) is generated automatically on the [artifact pages](artifacts.md).

**Important:** CodeSystem resources of external terminologies (e.g. ICD-10-GM, OPS, SNOMED CT) are **not** published in this module; they are obtained from the central KDS terminology service (SU-TermServ): [https://mii-termserv.de/](https://mii-termserv.de/).

#### ICD-10-GM

The International Statistical Classification of Diseases and Related Health Problems, 10th revision, German Modification (ICD-10-GM) is used to describe the primary diagnosis, pre-existing conditions and the cause of death. BfArM publishes the ICD-10-GM annually on behalf of the Federal Ministry of Health; the current version is available on the [BfArM page](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-10-GM/_node.html).

Note: the oBDS specifies cause-of-death reporting via ICD-10-GM, whereas BfArM recommends coding causes of death with ICD-10-WHO. The CDS module Oncology follows the oBDS and codes with ICD-10-GM.

#### ICD-O-3

The localization of the primary tumor is coded via ICD-O-3 topography, the morphology via ICD-O-3 morphology. BfArM publishes the ICD-O-3 on behalf of the Federal Ministry of Health ([BfArM page](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/ICD/ICD-O-3/_node.html)).

For the revision states (first revision 2014 / second revision 2019), their impact on validation, the migration of legacy data and the outlook towards ICD-O-4, see the dedicated page [ICD-O — revisions and validation](icd-o-terminologie.md).

#### OPS

The German procedure classification (Operationen- und Prozedurenschlüssel, OPS) codes operative procedures performed in oncological diagnostics and therapy ([BfArM page](https://www.bfarm.de/DE/Kodiersysteme/Klassifikationen/OPS-ICHI/OPS/_node.html)).

#### ATC

In the oBDS, medication is originally recorded as free text, with ATC coding optionally offered by primary systems. The FHIR profiles assume medication is primarily coded in ATC — mainly drugs of systemic therapy (chemotherapy, hormone therapy, immunotherapy).

For ATC governance (WHO ATC vs. the official German edition), the year-versioned code system states and the transition ConceptMaps, see the dedicated page [ATC — annual versions and transitions](atc-terminologie.md).

#### UNII (Unique Ingredient Identifier)

To support experimental and novel substances without an established ATC code, the FDA's UNII system is integrated. UNII codes uniquely identify active substances at the molecular level and are particularly relevant for experimental substances in clinical trials (e.g. iberdomide, UNII `8V66F27X44`), novel immunomodulators and substances in early development. The systemic-therapy MedicationStatement profile therefore supports dual coding with ATC and UNII (UNII database: [precision.fda.gov/uniisearch](https://precision.fda.gov/uniisearch), system URL `http://fdasis.nlm.nih.gov`).

#### TNM classification (UICC)

The TNM classification of malignant tumors is the globally used system for the clinical description of a tumor disease. The current 8th edition is published in cooperation with the Union for International Cancer Control (UICC).

#### CTCAE

The Common Terminology Criteria for Adverse Events (CTCAE) are used in the adverse-event profile to record adverse events of radiotherapy and systemic therapy ([ctep.cancer.gov](https://ctep.cancer.gov/protocoldevelopment/electronic_applications/ctc.htm)).

#### SNOMED CT

SNOMED CT is used module-wide for semantic annotation and the oBDS-SNOMED CT mappings; license and access information at [BfArM](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/SNOMED-CT/_node.html).

#### LOINC

LOINC (Logical Observation Identifiers Names and Codes) is an international system published by the Regenstrief Institute for uniquely identifying and coding medical observations, especially laboratory tests. Under § 355 (7) SGB V, BfArM is responsible for the further development of LOINC for Germany ([BfArM page](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/LOINC-und-RELMA/_node.html)). The international LOINC release is available at [loinc.org](http://loinc.org); for the curated tumor-marker code list see [Tumor markers — curated LOINC codes](tumormarker-loinc.md).

#### UCUM

The Unified Code for Units of Measure (UCUM) codes units of measure for the unambiguous exchange of quantitative data. UCUM has been maintained by the Regenstrief Institute since 1999; BfArM provides a value list of UCUM codes for health applications in Germany ([BfArM page](https://www.bfarm.de/DE/Kodiersysteme/Terminologien/LOINC-UCUM/UCUM/_node.html)).

#### MedDRA

The Medical Dictionary for Regulatory Activities (MedDRA) covers pharmaceuticals, biologics, vaccines and drug/device combinations and is used in the adverse-event profile ([meddra.org](https://www.meddra.org/how-to-use/support-documentation/german/welcome)).

