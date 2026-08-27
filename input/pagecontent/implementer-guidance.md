<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/implementer-guidance.md) -->

### Context in the overall project — relationships to other modules

The CDS module Oncology makes extensive use of the MII base modules:

- The oncological primary diagnosis is based on the MII module
  [Diagnosis](https://simplifier.net/mii-basismodul-diagnose-2024).
- The therapy documentation of surgeries, radiotherapy and general information
  on systemic therapies is based on the MII module
  [Procedure](https://simplifier.net/mii-basismodul-prozedur-2024).
- The specific coding of active substances as part of systemic therapy is
  based on the MII module
  [Medication](https://simplifier.net/mii-basismodul-medikation-2024).

Since data collection for the oBDS is based on cancer registry reports, a
representation via the above modules is only partially possible.

For further linkage of oncological registry data, the following CDS modules
are particularly relevant:

- [Pathology report](https://simplifier.net/medizininformatikinitiative-modulpathologie)
- [Biobank](https://simplifier.net/medizininformatikinitiative-modulbiobank)
- [Molecular genetics report](https://simplifier.net/medizininformatikinitiative-modulomics)
- [Imaging](https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung)
  (not yet implemented, integration planned for version 2027)
- [Document](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument)
  — for the document level, see the assignment of oncology-relevant KDL
  document classes in the
  [intro of the KDL value set](ValueSet-mii-vs-onko-kdl-dokumentklassen.html)

In the long term, close integration with these modules is planned. In the
first versions it is entirely optional, mainly for one reason: generating
FHIR resources of other modules partially requires data that is not part of
the oBDS in this form (example: the Biosample module strictly requires the
availability statement at creation). Since FHIR resources cannot yet be
exported from primary systems across the board and not every DIC site can
produce all CDS modules in ETL routes, the use of other MII modules is
intended but optional.

The CDS module Oncology is furthermore the basis for the
[CDS module Molecular Tumor Board](https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard),
which covers deeper oncological topics such as guideline-based treatment,
next-generation sequencing and personalized therapies. Required adjustments
were specified for the MTB module and adopted in version v2026.

### Profile relationships and references

The following overview shows the references between the resources:

![Overview of profile relationships](MII_Onko_UML_Relations_v1.svg)

#### Envisaged future integration of the Biobank, MolGen report and pathology report modules

![Future module integration](MII_Onko_UML_Relations_v2.svg)

### oBDS-SNOMED CT mapping: methodology

The ConceptMap artifacts of this module contain the results of a mapping of
the oBDS answer lists to SNOMED CT, performed with the international
SNOMED CT release of March 2024, supplemented by the UICC TNM and residual
tumor concepts of March 2025.

1. The focus was on the answer lists defined in the oBDS. For mapping other
   national and international classifications and terminologies (ICD-10,
   ICD-O, OPS, ATC, …), BfArM is the responsible contact.
2. In addition to the answer lists, the data fields themselves are often also
   coded in SNOMED CT and/or LOINC (found as the `code` element on most
   resources).
3. Equivalence assessment: each code carries one of four values describing
   the relationship between source and target concept:
   - `equivalent`: substantively (almost) identical, to be treated as equal
   - `wider`: the target concept is more general than the source concept
   - `narrower`: the target concept is more specific than the source concept
   - `unmatched`: no adequately comparable target concept found

The individual mappings are documented as intro texts on the respective
ConceptMap pages (see the [artifact overview](artifacts.html)).

### References

The CDS module Oncology is based on the German oncology base dataset (oBDS)
in the version published in the Federal Gazette in 2021. The content is
publicly available:

- oBDS website with all relevant data fields, descriptions and answer
  options: [basisdatensatz.de/basisdatensatz](https://basisdatensatz.de/basisdatensatz)
- The oBDS XML schema (hierarchy, field IDs, data validation):
  [current version](https://basisdatensatz.de/xml/oBDS_v3.0.3.xsd),
  [older versions](https://basisdatensatz.de/xml/)
- Implementation guide of the §65c cancer registry platform on
  [Confluence](https://plattform65c.atlassian.net/wiki/spaces/UMK/overview),
  in particular the
  [data model](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532576/Datenmodell)
  and the
  [report contents](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532143/Meldungsinhalte)
- Older preparatory work on representing the oBDS as an information model on
  [ART-DECOR](https://art-decor.org/art-decor/decor-datasets--mide-?id=2.16.840.1.113883.3.1937.777.24.1.1&effectiveDate=2018-06-05T12%3A44%3A12&conceptId=2.16.840.1.113883.3.1937.777.24.2.62&conceptEffectiveDate=2018-06-06T06%3A13%3A32)
  (does not fully reflect the current state)

### Quality assurance and validation

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/QA-Validierung.page.md gate=B -->
With the move to the HL7 IG Publisher, the authoritative QA report is
generated automatically on every build (see `qa.html` in the published
guide). The validation configuration with justified suppressions lives in
[`advisor.json`](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/blob/dev/advisor.json);
continuous validation runs via
[GitHub Actions](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/actions).

The following state, last maintained manually for version 2026.0.0
(2025-12-16), is kept as historical documentation of the Simplifier era:

- **Actionable errors**: 9 · **Filtered messages**: ~700+ (via advisor.json)
- Filtered were in particular `Terminology_TX_NoValid_16` (~310, external
  TX-server limitation), `eld-20` (~294, validator limitation),
  `UNABLE_TO_INFER_CODESYSTEM` (~100), `MSG_DRAFT` (~14) and `dom-6`.
- Remaining error categories concerned, among others, breast receptor-status
  codes, the MedDRA binding of the AdverseEvent (proprietary terminology,
  external) and the TX-server availability of individual ICD-O morphology
  codes.

If you want to contribute to improving validation: check the current CI runs,
download the validation artifacts and create an issue or pull request in the
[GitHub repository](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie).
