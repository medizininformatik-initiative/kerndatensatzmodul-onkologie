<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-operation-intro.md (de) -->

### Content
This profile describes surgical procedures for colorectal cancer according to various oBDS criteria. It covers both the type of surgical procedure and specific colorectal operation types and their quality characteristics, such as TME quality (total mesorectal excision).

The profile is based on a FHIR Procedure resource and uses several specialized ValueSets to code the various surgical aspects of colorectal cancer.

---

### Links to other resources
The KRK operation is a central therapeutic procedure:
- refers via `Procedure.subject` to the patient (Patient resource)
- can be linked via `Procedure.encounter` to a specific treatment case
- relates to the primary diagnosis via `Procedure.reasonReference`
- can be linked to Specimen resources for pathological workup

---

### oBDS context
The KRK operation covers several oBDS data fields:
- Operation type according to various classification systems
- TME quality for rectal cancer (KR4)
- Further operation-specific parameters depending on the procedure

### Terminology binding
The profile uses several ValueSets for the various aspects of the KRK operation:

#### ValueSet: MII VS Onko KRK TME Qualität

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK TME Qualität](ValueSet-mii-vs-onko-krk-tme-qualitaet.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Operation-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Präoperative Drahtmarkierung Mamma](StructureDefinition-mii-pr-onko-krk-operation.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.html)
