<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-verlauf-intro.md (de) -->

### Context

This profile describes a follow-up observation in the context of oncological therapy.

In the oBDS, the follow-up report ("Verlaufsmeldung") is one of several report types. The follow-up report can contain several other report contents. In the present FHIR profiling, follow-up observations are, alongside tumor boards, one of the two decisive resource types used for the temporal modeling of the treatment course.

The correct coding and interpretation of cancer registry follow-up data is not trivial - details can be found in the documentation guide of the Plattform §65c.

https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung

---

### Conformance Statements

- A follow-up observation **SHOULD** have a reference to the primary diagnosis via `focus`
- A follow-up observation **SHOULD** additionally contain in `value` an assessment of the disease progression (PD, PR, MR, etc.), provided this assessment has been made and is present in the data
- A follow-up observation **SHOULD** furthermore contain in `component` assessments of the staging of the tumor, the lymph nodes and the distant metastases, provided these have been made and are relevant for the staging
- Since the FHIR profiling does not represent a complete follow-up report, other observations that are relevant for staging in addition to or differing from the TNM criteria mentioned above **SHOULD** be referenced from the follow-up observation via `hasMember`. Examples include newly diagnosed distant metastases, additionally performed histologies, or genetic tests carried out later in the course. These observations **MAY** be taken directly from the oBDS report contents of the respective follow-up report.

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Verlauf/Verlauf-Observation.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-verlauf-tumor](Observation-mii-exa-onko-verlauf-tumor.html)
