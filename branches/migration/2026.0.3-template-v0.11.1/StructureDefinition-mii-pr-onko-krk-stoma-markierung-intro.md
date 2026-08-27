<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-krk-stoma-markierung-intro.md (de) -->

### Content
This profile describes the preoperative stoma site marking for colorectal cancer according to oBDS KR7. Preoperative stoma site marking is an important step in preparing for surgical procedures in which a stoma may be required, and contributes significantly to patients' quality of life.

The profile is based on a FHIR Procedure resource and documents both the performance and the status of the preoperative stoma site marking.

---

### Links to other resources
Stoma site marking is a preoperative measure:
- refers via `Procedure.subject` to the patient (Patient resource)
- can be linked via `Procedure.encounter` to a specific treatment case
- relates to the planned operation via `Procedure.reasonReference`
- can be linked to the actual stoma formation during the operation

---

### oBDS context
Stoma site marking corresponds to the oBDS data field KR7 "Preoperative stoma site marking" and documents whether a preoperative marking of the stoma position was performed. This is particularly relevant for rectal cancer, where a stoma is more frequently required.

### Terminology binding
The ValueSet for stoma site marking is bound **required** and includes the codes for the performance as well as the status of the preoperative marking.

#### ValueSet: MII VS Onko KRK Stoma Anzeichnung

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.html).
{: .ig-highlight .ig-highlight-grey}

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> The codes it contains are listed in the artefact view: [MII VS Onkologie KRK Stoma Anzeichnung](ValueSet-mii-vs-onko-krk-stoma-anzeichnung.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie Organspezifische Zusatzmodule](StructureDefinition-mii-lm-onko-organspezifische-zusatzmodule.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Organspezifische-Module/KolorektalesKarzinom/KRK-Stoma-Markierung-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.html)
