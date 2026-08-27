<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/datasets-and-descriptions.md) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md.
     German original: input/translations/de/pagecontent/datasets-and-descriptions.md —
     keep both language versions in step. -->

The dataset is based on the oncological base dataset (oBDS, see references).

<!-- TODO:REVIEW The following sentence is already incomplete in the source page (missing predicate) and was carried over verbatim. -->
In the implementation, the focus was placed on converting the data points arising from the registry report data
into FHIR resources for the FDPG for secondary data use

Therefore, report-related and person-related data of the oBDS are not included.

### Base Oncology Logical Model

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
The structure of the logical model as well as the path and description of each
data element are shown on the artifact page
[MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

Note that the logical model aims purely at representing the data elements and their description. The data types and cardinalities used are not to be regarded as binding. This is finally determined by the FHIR profiles. For every element within the logical model there is a 1:1 mapping to an element of a concrete FHIR resource.

### Organ-specific Supplementary Modules

The organ-specific modules (breast, prostate, colorectal carcinoma, malignant melanoma) extend the base oncology module with entity-specific data elements in accordance with the ADT/GEKID requirements:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
The structure of the logical model as well as the path and description of each
data element are shown on the artifact page
[MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).

### Genome Sequencing Pilot Project (Modellvorhaben Genomsequenzierung)

The genome sequencing pilot project under section 64e SGB V defines additional data elements for next-generation sequencing (NGS) in oncology patients:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/AnwendungsflleInformationsmodell/Datenstzeinkl.Beschreibungen.page.md gate=B -->
The structure of the logical model as well as the path and description of each
data element are shown on the artifact page
[MII LM MV Genomsequenzierung Onkologie](StructureDefinition-mii-lm-mvgenomseq-onkologie.html).
