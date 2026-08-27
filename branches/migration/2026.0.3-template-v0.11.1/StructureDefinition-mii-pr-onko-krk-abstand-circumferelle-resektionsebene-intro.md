<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene-intro.md (de) -->

### Content
This profile describes the minimum distance of the tumor margin to the circumferential resection plane in colorectal carcinoma according to oBDS KR3. This measurement is an important prognostic factor and is determined both macroscopically and microscopically. A small circumferential resection margin is associated with an increased risk of local recurrence.

The profile is based on a FHIR Observation resource and uses a dedicated ValueSet to distinguish between macroscopic and microscopic assessment. The distance is specified as a Quantity value in millimeters.

---

### Links to other resources
The circumferential resection margin measurement is an important pathological observation:
- references the primary diagnosis (MII_PR_Onko_Diagnose_Primaertumor) via `Observation.focus`
- references the patient (Patient resource) via `Observation.subject`
- can be linked to a specific treatment case via `Observation.encounter`

---

### oBDS context
The distance measurement corresponds to the oBDS data field KR3 "Minimum distance of the tumor margin to the circumferential resection plane" and is documented in millimeters. The distinction between macroscopic and microscopic assessment is represented by the corresponding ValueSet.

### Terminology binding
The ValueSet for the circumferential resection plane is bound as **extensible** and distinguishes between macroscopic and microscopic assessment of the resection margins.

#### ValueSet: MII VS Onko KRK Abstand Circumferelle Resektionsrand

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Abstand Circumferelle Resektionsrand](ValueSet-mii-vs-onko-krk-abstand-circumferelle-resektionsrand.html).
{: .ig-highlight .ig-highlight-grey}
<!-- TODO:REVIEW source page referred to mii-vs-onko-krk-abstand-circumferelle-resektionsebene; the link points to mii-vs-onko-krk-abstand-circumferelle-resektionsrand -->

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Abstand-Circumferelle-Resektionsebene-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Abstand Circumferelle Resektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the KRK circumferential resection plane profile, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Observation?_id=12345```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Observation?code=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-abstand-circumferelle-resektionsebene|makroskopisch```

    Usage notes: Further information on searching by "Observation.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Observation?subject=Patient/test```

    Usage notes: Further information on searching by "Observation.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "focus" MUST be supported:

    Examples:

    ```GET [base]/Observation?focus=Condition/primaertumor```

    Usage notes: Further information on searching by "Observation.focus" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "value-quantity" MUST be supported:

    Examples:

    ```GET [base]/Observation?value-quantity=2|http://unitsofmeasure.org|mm```

    Usage notes: Further information on searching by "Observation.value[x]" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

---
**Examples**

[mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.html)
