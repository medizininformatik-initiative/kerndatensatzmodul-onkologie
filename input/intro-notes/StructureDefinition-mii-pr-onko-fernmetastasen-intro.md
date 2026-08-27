<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-fernmetastasen-intro.md) -->
This profile describes distant metastases as they are recorded within the oBDS in oncology for reporting to the cancer registries. The following data fields are to be given individually for each metastasis:
* date of detection
* localisation based on the oBDS-specific coding

In the FHIR profiling, each distant metastasis **SHALL** be created as an individual resource.
The oBDS does not provide for recording non-invasive diagnostic procedures. Nor does the oBDS require the degree of diagnostic confirmation (clinical, radiological, histological) to be recorded. Where needed, a distant metastasis **MAY** reference the corresponding diagnostic procedures.

This profile is conformant to the [Patho Finding profile of the MII pathology report](https://simplifier.net/guide/mii-ig-pathologie/Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Finding?version=current) and can therefore be embedded as an Observation in a pathological findings report.

---

**Examples**

[mii-exa-onko-fernmetastasen-1](Observation-mii-exa-onko-fernmetastasen-1.html)
