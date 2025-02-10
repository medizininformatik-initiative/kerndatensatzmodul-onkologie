## {{page-title}}
 
The oncology extension module extensively utilizes the base modules of the MII.
* The oncological primary diagnosis is based on the MII module **[Diagnosis][5]**
* The therapy documentation of surgeries, radiotherapy, and general information on systemic therapies is based on the MII module **[Procedure][6]**
* The specific coding of active substances as part of systemic therapy is based on the MII module **[Medication][7]**

Since the data collection for the oBDS is based on cancer registry reports, mapping through the above-mentioned modules is only partially possible.

For further linking of oncological registry data, the following extension modules are particularly relevant:
* [Pathology Report][1]
* [Biobank][2]
* [Molecular Genetic Report][3]
* [Imaging][4] (still under development)

[1]: https://simplifier.net/medizininformatikinitiative-modulpathologie "MII KDS Module Pathology Report"
[2]: https://simplifier.net/medizininformatikinitiative-modulbiobank "MII KDS Module Biobank"
[3]: https://simplifier.net/medizininformatikinitiative-modulomics "MII KDS Module Molecular Genetic Report"
[4]: https://simplifier.net/Medizininformatik-Initiative-Modul-Bildgebung "MII KDS Module Imaging"
[5]: https://simplifier.net/mii-basismodul-diagnose-2024 "MII KDS Module Diagnosis"
[6]: https://simplifier.net/mii-basismodul-prozedur-2024 "MII KDS Module Procedure"
[7]: https://simplifier.net/mii-basismodul-medikation-2024 "MII KDS Module Medication"
[8]: https://simplifier.net/mii-erweiterungsmodul-molekulares-tumorboard "MII KDS Module Molecular Tumor Board"

In the long term, close integration with the above-mentioned modules is planned. However, in the first version, this is completely optional. There are two primary reasons for this:
1. The individual MII modules were developed at different times and therefore use different versions of the same packages (especially Basisprofile DE). Harmonization is aimed for the next KDS release in 2026.
2. The generation of FHIR resources from other modules sometimes requires the existence of data that is not part of the oBDS in this form (e.g., the Biobank module requires the specification of availability when creating a sample). Since FHIR resources cannot yet (as of April 2024) be comprehensively played out from primary systems, and not every DIZ site can necessarily generate all or part of the extension modules in ETL processes, the use of other MII modules is intended but optional.

The oncology extension module also forms the basis for the [Molecular Tumor Board extension module][8], in which more in-depth oncologically relevant issues such as guideline treatment, next-generation sequencing, and personalized therapies can be detailed.
