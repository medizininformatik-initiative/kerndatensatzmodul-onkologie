<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie-intro.md) -->

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
The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Bestrahlungstherapie-Procedure.page.md gate=B -->
The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.html).

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter "_id" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_id=103270```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "_profile" MUST be supported:

    Examples:

    ```GET [base]/Procedure?_profile=https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

1. The search parameter "status" MUST be supported:

    Examples:

    ```GET [base]/Procedure?status=completed```

    Usage notes: Further information on searching by "Procedure.status" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "category" MUST be supported:

    Examples:

    ```GET [base]/Procedure?category=http://snomed.info/sct|103693007```

    Usage notes: Further information on searching by "Procedure.category" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "code" MUST be supported:

    Examples:

    ```GET [base]/Procedure?code=http://fhir.de/CodeSystem/bfarm/ops|5-37```

    Usage notes: Further information on searching by "Procedure.code" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "date" MUST be supported:

    Examples:

    ```GET [base]/Procedure?date=2022-01-01```

    Usage notes: Further information on searching by "Procedure.performed" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "subject" MUST be supported:

    Examples:

    ```GET [base]/Procedure?subject=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "patient" MUST be supported:

    Examples:

    ```GET [base]/Procedure?patient=Patient/test```

    Usage notes: Further information on searching by "Procedure.subject" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#reference).

1. The search parameter "bodySite" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bodySite=http://snomed.info/sct|80891009```

    Usage notes: Further information on searching by "Procedure.bodySite" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "dokumentationsdatum" MUST be supported:

    Examples:

    ```GET [base]/Procedure?dokumentationsdatum=2022-01-01```

    Usage notes: Further information on searching by "Procedure.extension:Dokumentationsdatum" can be found in the [FHIR base specification - section "Date Search"](http://hl7.org/fhir/R4/search.html#date).

1. The search parameter "durchfuehrungsabsicht" MUST be supported:

    Examples:

    ```GET [base]/Procedure?durchfuehrungsabsicht=http://snomed.info/sct|262202000```

    Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1. The search parameter "outcome" MUST be supported:

    Examples:

    ```GET [base]/Procedure?outcome=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund|R1```

    Usage notes: Further information on searching by "Procedure.extension:Durchfuehrungsabsicht" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-intention" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-intention=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention|K```

    Usage notes: Further information on searching by "Procedure.extension:Intention" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-stellung" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K```

    Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-stellung" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-stellung=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-stellung|K```

    Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "bestrahlung-applikationsart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart|KLDR```

    Usage notes: Further information on searching by "Procedure.usedCode" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "bestrahlung-strahlenart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart|PN```

    Usage notes: Further information on searching by "Procedure.usedCode" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "bestrahlung-zielgebiet-lateralitaet" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-zielgebiet-lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L```

    Usage notes: Further information on searching by "Procedure.bodySite.extension:Seitenlokalisation" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "bestrahlung-boost" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB```

    Usage notes: Further information on searching by "Procedure.extension:Boost" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "bestrahlung-einzeldosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-einzeldosis=2|http://unitsofmeasure.org|Gy```

    Usage notes: Further information on searching by "Procedure.extension:Einzeldosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

1.  The search parameter "bestrahlung-gesamtdosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?bestrahlung-gesamtdosis=ge50|http://unitsofmeasure.org|Gy```

    Usage notes: Further information on searching by "Procedure.extension:Gesamtdosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

**Examples**

[mii-exa-onko-strahlentherapie-strahlentherapie-1](Procedure-mii-exa-onko-strahlentherapie-strahlentherapie-1.html)
