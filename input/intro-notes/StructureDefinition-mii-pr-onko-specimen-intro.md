<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-specimen-intro.md) -->
This profile describes a biospecimen in the context of oncology.

The two data points of an individual biospecimen that are relevant for the oBDS are:
* tumour histology date -> `collection.collectedDateTime`
* histology accession number -> `accsessionIdentifier.value`

Within the core data set of the Medical Informatics Initiative a biospecimen **MAY** also be created conformant to the biospecimen profile of the Biobank module. https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Biobank/SpecimenBioprobe.html

In that case the following data points must be given in addition to the two data points above:
- `status` (availability of the specimen)
- `type` kind of specimen (SNOMED CT coded)

---

**Examples**

[mii-exa-onko-specimen-1](Specimen-mii-exa-onko-specimen-1.html)
