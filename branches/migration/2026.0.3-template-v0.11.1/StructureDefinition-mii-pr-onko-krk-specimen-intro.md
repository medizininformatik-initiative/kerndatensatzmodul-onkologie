<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-specimen-intro.md (de) -->

### Content
This profile describes tissue samples (Specimens) in colorectal cancer that are taken as part of surgical interventions. It covers both the characterization of the tissue and specific pathological aspects such as TME quality (Total Mesorectal Excision) in rectal cancer.

The profile is based on a FHIR Specimen resource and establishes the connection between the surgical removal and the pathological processing.

---

### Links to other resources
The KRK Specimen is an important link in the diagnostic chain:
- refers via `Specimen.subject` to the patient (Patient resource)
- is related to the collection procedure via `Specimen.collection.procedure`
- can be linked to pathological Observations (e.g. histology, grading)
- serves as the basis for determining resection margins and TNM classification

---

### oBDS context
The KRK Specimen forms the basis for various oBDS assessments:
- Pathological assessment of the resection specimen
- TME quality in rectal cancer (KR4)
- Histopathological characteristics of the tumor
- Resection margin assessment

### Terminology binding
The profile uses specialized ValueSets for colorectal Specimens, in particular for assessing TME quality and other pathological parameters.

#### ValueSet: MII VS Onko KRK TME Qualität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Specimen.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the KRK Specimen profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Specimen?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Specimen?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Specimen?subject=Patient/test```

    Usage notes: Further information on searching by "Specimen.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "type" MUST be supported:

    Examples:

    ```GET [base]/Specimen?type=http://snomed.info/sct|119376003```

    Usage notes: Further information on searching by "Specimen.type" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Specimen?status=available```

    Usage notes: Further information on searching by "Specimen.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

---
**Examples**

[mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.html)
