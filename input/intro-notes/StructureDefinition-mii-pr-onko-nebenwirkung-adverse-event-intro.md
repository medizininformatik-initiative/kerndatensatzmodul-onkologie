<!-- TODO:REVIEW machine translation of the German original (input/translations/de/intro-notes/StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md) -->

This profile describes the adverse event of radiotherapy and systemic therapy in oncology.

The type of adverse event can be described either as a CTCAE term or as a medDRA number.
Further information can be found in the documentation guide https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/93683749/Nebenwirkungen
In addition, the Plattform §65c provides a curated list with translated CTCAE terms and the corresponding medDRA numbers.
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE

In deviation from the oBDS, this profile also allows events of severity grades 1 and 2 to be explicitly specified. As a result, it may happen that the cancer registry data does not record at all what type of adverse event is involved. In

---

Mapping of dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Nebenwirkung/Nebenwirkung-AdverseEvent.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.html).
{: .ig-highlight .ig-highlight-grey}

---

**Search parameters**

The following search parameters are relevant for the Oncology module, including in combination:

1. The search parameter ```_id``` MUST be supported:

    Examples:

    ```GET [base]/AdverseEvent?_id=1234```

    Usage notes: Further information on searching by "_id" can be found in the [FHIR base specification - section "Parameters for all resources"](http://hl7.org/fhir/R4/search.html#all).

2. The search parameter ```_profile``` MUST be supported:

    Examples:

    ```GET [base]/AdverseEvent?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event```

    Usage notes: Further information on searching by "_profile" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

3. The search parameter ```event``` MUST be supported:
    Examples:

    ```GET [base]/AdverseEvent?event=https://www.meddra.org|10016256```

    Usage notes: Further information on searching by "event" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

4. The search parameter ```seriousness``` MUST be supported:

    Examples:

    ```GET [base]/AdverseEvent?seriousness=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-nebenwirkung-ctcae-grad|4```

    Usage notes: Further information on searching by "seriousness" can be found in the [FHIR base specification - section "token"](http://hl7.org/fhir/R4/search.html#all).

5. The search parameter ```suspectEntity.instance``` MUST be supported:

    Examples:

    ```GET [base]/AdverseEvent?suspectEntity.instance=Patient/example```

    Usage notes: Further information on searching by "severity" can be found in the [FHIR base specification - section "reference"](http://hl7.org/fhir/R4/search.html#all).

**Examples**

[mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.html)

Adverse event without MedDRA coding:

[mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.html)
