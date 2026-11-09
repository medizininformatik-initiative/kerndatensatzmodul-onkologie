<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event-intro.md (de) -->

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

**Examples**

[mii-pr-onko-nebenwirkung-0](AdverseEvent-mii-pr-onko-nebenwirkung-0.html)

Adverse event without MedDRA coding:

[mii-pr-onko-nebenwirkung-text](AdverseEvent-mii-pr-onko-nebenwirkung-text.html)
