<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-befund-intro.md (de) -->

This profile describes a pathology report in the oncology context.

Since the data originate from local tumour documentation systems, a large part of the reports will be available as plain text only.

Pathology reporting **MAY** also be carried out within the MII via the pathology report. In that case, individual observations can be coded in a structured way as patho findings using LOINC or SNOMED. See [MII PR Patho Report (Pathologie-Befund module)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Pathologie_Befund/MII-IG-KDS-Modul-Pathologie-Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Report.html).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.html)
