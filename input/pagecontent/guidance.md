<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of source page guidance.md (de) -->

### Deviations from the oBDS

This implementation guide describes a FHIR implementation of the oBDS. A pure
1:1 mapping of the complete dataset is neither substantively nor technically
sensible. The most important deviations:

#### Content

The CDS module Oncology contains those oBDS groups that primarily cover
clinical-diagnostic and therapeutic data points. Several groups were therefore
**not** implemented in FHIR:

- The person-related groups
  - Group 3: patient master data
  - Group 4: reporter master data
  - Group 7: sender
  - Group 22: surgeon
  - Group 25: additional contacts
- The administrative and report-related groups
  - Group 1: report
  - Group 2: center
  - Group 21: remarks

The organ-specific modules were not part of the first profiling but have been
part of the Oncology module since version 2026: prostate, breast, melanoma and
colon.

#### Cardinalities

The oBDS was optimized mainly for data reporting to the cancer registries. In
the first versions the cardinalities were largely adopted from the oBDS, but
are in places set "softer" to gain access to a broader data basis in a first
step.

#### Terminologies and code systems

To ensure evaluability via the German Portal for Medical Research Data (FDPG),
medication in systemic therapy requires ATC coding. Free text remains possible
as an additional statement.

#### Validation

The oBDS XML schema provides a number of validations checking data quality and
completeness. These are not technically implemented here. It can be assumed
that oBDS data are validated in the primary tumor-documentation systems at
least to the point that an export to XML is possible. Further validations
(e.g. mutually exclusive data fields) could be added if the module is to serve
as a data-collection basis for primary systems beyond its current purpose.

#### Content of the modules and profiles

In the oBDS the data fields are bound to the reporting structure; groups with
different cardinalities are often stored separately. Important changes,
excerpt:

- the diagnosis contains parts of the histology group (ICD-O topography,
  ICD-O morphology),
- the tumor-conference and therapy-recommendation groups were merged into the
  FHIR profile tumor conference / therapy recommendation (CarePlan),
- the general performance status can be coded as ECOG as well as Karnofsky
  (an original merge of the data points was discarded after the comment
  phase).

### Relationship to national standards

#### German OncoLogical Data Standard (GOLD)

The GOLD project was initiated by Vision-Zero e. V. and aims at representing a
complete oncological patient journey. The data model and profiles were derived
from existing data models from care, research and industry. The first FHIR
profiles focusing on diagnosis and classifications have flowed into several
other projects, e.g. HL7 Germany's oncology base profiles and the MII imaging
module. Current version:
[vision-zero-oncology.github.io/GOLD](https://vision-zero-oncology.github.io/GOLD/)

#### HL7 Germany oncology base profiles

The [oncology base profiles](https://simplifier.net/BasisprofileOnkologie)
delivered profiling groundwork (mainly in 2022) for a unified use of FHIR
resources in the oncology sector. Work has been dormant since the 2022 comment
phase; the base profiles now refer to this MII CDS module Oncology.

#### German Consortium for Translational Cancer Research (DKTK)

The DKTK's internal data model uses oBDS data prepared from tumor
documentation systems in FHIR format as an exchange medium
([simplifier.net/oncology](https://simplifier.net/oncology)). The original
information model of the CDS module Oncology was strongly oriented towards the
DKTK model. The profiling differs in that the DKTK profiles are
self-contained, whereas an MII module should work as well as possible with the
MII base modules (especially diagnosis, procedure, medication) and existing
CDS modules. One of the main modeling decisions was therefore the use of the
MII diagnosis and MII medication, and the representation of surgeries,
radiotherapy and systemic/watchful-waiting therapies as MII procedures.

#### Model project on genome sequencing (§ 64e SGB V)

The model project on genome sequencing provides for the collection of a data
set for next-generation sequencing (NGS) of oncology patients: diagnostic and
therapeutic history, molecular-genetic description of the tumor,
recommendations on study participation and systemic therapies, and follow-up
information. A similar data set for rare diseases will be represented in the
Rare Diseases module in the future.

The logical model of the data set is available as
[Logical Model mii-lm-mvgenomseq-onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.html);
the mapping of its data elements to the MII CDS is provided as
[ConceptMap mii-cm-onkologie-to-mvgenomseq](ConceptMap-mii-cm-onkologie-to-mvgenomseq.html)
(work in progress).

### Relationship to international standards

#### OSIRIS, France

The French common data model "Interoperability and data sharing of clinical
and biological data in oncology" (OSIRIS) comprises two independent core
datasets: a clinical and a genomic part; a third part on imaging and
radiotherapy is in progress. The OSIRIS dataset models the temporal
representation mainly around so-called "tumor events" (initial diagnoses or
follow-up observations). Further information:
[PMC8140800](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC8140800/); English
version of the dataset on
[GitHub](https://github.com/InstitutNationalduCancer/OSIRIS/blob/v1.1.05/documentation/ModeleCliniqueOSIRIS-english_version.pdf).

### Application scenario of a guideline-conformant treatment

The oBDS is the basis for cancer registry reporting to the federal state
registries. This profiling aims to make the data arising in cancer
registration usable for other research fields. The FHIR representation of the
example below makes clear that information on imaging, detailed treatment and
irradiation schemes and genetic variants exists in detailed form outside the
cancer registry data.

*Disclaimer: The treatment course corresponds to a possible
guideline-conformant therapy; data and course are constructed for test
purposes, similarities with actual disease courses are coincidental.*

#### Textual representation of the exemplary course of therapy

- Kim Musterperson, born 1956-03-14
- 2021-06-10 CT abdomen with contrast: suspected peritoneal carcinomatosis,
  ascites throughout the abdomen, mass right ovary. Mesenteric retroperitoneal
  lymph-node metastases, suspected liver metastasis
- 2021-06-15 ascites puncture: malignant tumor cells; cytologically possible
  ovarian carcinoma.
- 2021-06-22 CT thorax: no evidence of metastases.
- Tumor board 2021-06-25: clear CT correlate and cytological initial diagnosis
  of ovarian carcinoma. Neoadjuvant chemotherapy with 3 cycles
  carboplatin/paclitaxel, interval debulking later (cycles
  2021-07-05 – 2021-09-05).
- 2021-09-15 CT thorax/abdomen: increasing peritoneal carcinomatosis,
  metastasis-suspicious retroperitoneal lymph nodes, suspected constant liver
  metastasis
- 2021-09-16 tumor board: marked tumor progression. Surgery for histological
  confirmation already planned, aim for optimal debulking.
- 2021-09-30 surgery: interval debulking via longitudinal laparotomy, tumor
  resection via hysterectomy, bilateral adnexectomy and atypical liver segment
  resection (seg. II and V). Postoperative: R0.
- Pathology report (resection specimen of 2021-09-30): neoplasm of the ovary
  (after neoadjuvant therapy, ICD-10 C56); ovary NOS (ICD-O C56.9); WHO type:
  serous adenocarcinoma (ICD-O M-8441/3). Local spread: left ovarian tumor,
  max. 2.2 cm, tumor-infiltrated capsule with tumor cells on the ovarian
  surface, viable tumor cells approx. 80 %. UICC classification (8th
  edition): ypT3c pM1b (HEP) L1 V0 Pn0, FIGO IVB. Immunohistochemistry
  (excerpt): scattered strong nuclear progesterone-receptor expression, p16
  positivity, MIB-1 max. 38 %.
- Tumor board 2021-10-25: macroscopic complete resection achieved by surgery,
  but progression under neoadjuvant therapy → switch to
  carboplatin/gemcitabine; genetic counseling recommended.
- Systemic therapy: 3 cycles carboplatin AUC 4 d1, gemcitabine 1000 mg/m²
  d1+d8, repeat d22 (2021-11-08 – 2022-01-09).
- 2022-01-15 CT abdomen: regression of the known peritoneal carcinomatosis;
  liver without clear evidence of metastasis.
- 2022-01-20 tumor board: maintenance therapy with niraparib (BRCA wild
  type); restaging in 3 months.
- 2022-01-25 start of niraparib 300 mg d1–28, repeat d28.

#### Graphical representation of the exemplary course of therapy

![Exemplary course of therapy, Kim Musterperson](MII_Onko_Example_Patient.svg)
