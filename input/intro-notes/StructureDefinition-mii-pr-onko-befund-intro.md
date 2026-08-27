<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-befund-intro.md) -->

This profile describes a pathology report in the oncology context.

Since the data originate from local tumour documentation systems, a large part of the reports will be available as plain text only.

Pathology reporting **MAY** also be carried out within the MII via the pathology report. In that case, individual observations can be coded in a structured way as patho findings using LOINC or SNOMED. See [MII PR Patho Report (Pathologie-Befund module)](https://www.medizininformatik-initiative.de/Kerndatensatz/Modul_Pathologie_Befund/MII-IG-KDS-Modul-Pathologie-Befund-TechnischeImplementierung-FHIRProfile-MII-PR-Patho-Report.html).

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Histologie/Histologiebefund-DiagnosticReport.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Befund](StructureDefinition-mii-pr-onko-befund.html).

---

**Search parameters**

The following search parameters are relevant for the Onkologie module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_id=1234```

    <!-- TODO:REVIEW The source page gave "GET [base]/Condition?_id=1234" here; corrected for a DiagnosticReport profile. -->

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/DiagnosticReport?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

[mii-exa-onko-befund-1](DiagnosticReport-mii-exa-onko-befund-1.html)
