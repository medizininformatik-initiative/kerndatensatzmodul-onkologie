<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie-intro.md (de) -->

This profile describes individual irradiations within radiotherapy in oncology. This profile describes radiotherapy in the narrower sense; brachytherapies and systemic nuclear medicine procedures are represented via the Nuclear Medicine Therapies profile.
The radiotherapy profile for oncology is based on the MII procedure module.

#### Implementation recommendation
The points listed above result in the following coding recommendation for oBDS radiotherapy:
- Category as SNOMED code
    - Category for radiotherapy `1287742003 | Radiotherapy (procedure)`
- Coding via OPS
    - Radiotherapy as OPS `8-52 Strahlentherapie` or more specific if available

---

### Conformance
The present profilings are compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

### Documentation guidance

**Prophylactic irradiations (§65c resolution of 31.05.2022):**
Tumor-specific prophylactic irradiations — the main case being
prophylactic whole-brain irradiation (PCI) in small cell lung carcinoma —
**MUST be documented**: `StellungZurOp` = `S` (other), the `Intention`
follows from the overall treatment concept (curative/palliative), target region e.g. `1.1`
whole brain. Supportive irradiations without
tumor specificity (e.g. nipple irradiation for gynecomastia prophylaxis under
hormone therapy in prostate carcinoma) **are not to be recorded**. Example:
`mii-exa-onko-strahlentherapie-pci-sclc`.

**Permanent implants/seeds (oBDS 14.6):** For seed implantations (typically
interstitial LDR brachytherapy), the **day of application MUST be documented as the end** —
`performedPeriod.start` = `performedPeriod.end` is then correct
and valid. Deviations from this are a data quality signal (for DQ rules see
GitHub #292).

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.html)
