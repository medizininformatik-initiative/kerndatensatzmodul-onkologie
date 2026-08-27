<!-- markdownlint-disable MD041 -->
<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/index.md) -->

### Introduction

This specification describes the FHIR representation of the Core Dataset (CDS)
module **Oncology** of the Medical Informatics Initiative (MII). It covers the
module's use cases and the associated FHIR profiles, extensions and terminology
resources in their normative form. The MII Core Dataset enables the
standardized secondary use of routine clinical data for medical research.

The Oncology module is based on the **German oncology base dataset (oBDS)**,
which forms the foundation of national cancer registration. It covers
diagnostic and histological parameters as well as information on treatment,
tumor staging at baseline and during follow-up, the recording of adverse
events and the detection of metastases.

| Publication |               |
|-------------|---------------|
| Date        | 2026-03-27    |
| Version     | 2026.0.3 (CalVer `YYYY.n.n`) |
| Status      | active        |
| Realm       | DE            |

### Content and purpose of the modeling

The CDS module Oncology aims to correctly represent the oncological data that
arises in primary care and in cancer registry reporting, and to relate it to
other data sources.

The focus of the first implementation version is the transfer of the registry
data collected under the oBDS for secondary use with the German Portal for
Medical Research Data (FDPG) and other projects within PM4Onko. This version
therefore only contains data points of clinical-diagnostic or therapeutic
character. Administrative (e.g. report, reporter) or person-identifying
(person, tumor assignment) data points are out of scope.

In addition to the base dataset, the oBDS provides for organ-specific data
fields. Organ-specific modules (including breast, prostate, colorectal) are
being added incrementally.

### Mapping to open data standards

The oBDS contains value lists primarily defined by ADT/GEKID without a direct
relationship to open terminologies such as SNOMED CT or LOINC. The coding of
the answer options was adopted as it exists in the primary systems. At the
same time, this implementation guide provides a preliminary mapping of the
fields and answer options to SNOMED CT (and other terminologies where
applicable) as FHIR ConceptMaps. The federal state cancer registries and BfArM
are working towards an official national mapping of oBDS cancer registry data
to SNOMED CT; once published, the mapping contained here will be updated
accordingly.

### Target audience

<div class="ig-highlight ig-highlight-blue">
<h5>Implementers</h5>
<p>Data Integration Centers (DIC), software developers and system architects building FHIR-based solutions.<br/>
→ see <a href="profiles.html">Profiles</a> and <a href="logical-models.html">Logical Models</a>.</p>
</div>

<div class="ig-highlight ig-highlight-green">
<h5>Researchers</h5>
<p>Scientists using KDS data for medical research.<br/>
→ see <a href="researcher-guidance.html">Guidance for Researchers</a>.</p>
</div>

### Contents

- **[Guidance](guidance.html)** — getting started and domain notes.
- **Conformance** — the KDS-wide conformance rules (requirements language,
  Must Support, handling missing data) are maintained centrally by the
  [Meta module](https://github.com/medizininformatik-initiative/kerndatensatz-meta/wiki/Conformance);
  the module-specific [Security and Privacy](security-and-privacy.html)
  considerations are part of this guide.
- **[Profiles](profiles.html)** and the further
  **[artifact pages](artifacts.html)** — the technical artifacts.
- **[Examples](examples.html)** — example instances.
- **[Dependencies](ImplementationGuide-mii-ig-onko-de-v2026.html)** — the
  ImplementationGuide resource with the dependency table and copyright
  statements.

### Related guides

This module is part of the MII Core Dataset. It builds on the German base
profiles (`de.basisprofil.r4`) and the CDS modules Meta and Base, and
references the modules Biobank, Medication, Molecular Genetics Report (MolGen)
and Study/Research Project; the other CDS modules are described at
[medizininformatik-initiative.de](https://www.medizininformatik-initiative.de/).

More FHIR implementation guides can be found in the official
**[FHIR IG Registry](https://fhir.org/guides/registry/)**.

### Imprint

This guide was created within the Medical Informatics Initiative and is
subject, by its governance process, to the coordination procedure of the
Interoperability Forum and the technical committees of HL7 Germany.

### Contact

- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Martin Boeker (DIFUTURE)
- Sylvia Thun, Berlin Institute of Health (Charité)
- Karoline Buckow, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.
- Franziska Klepka, TMF – Technologie- und Methodenplattform für die vernetzte medizinische Forschung e. V.

Questions about this publication can be asked on the HL7 FHIR Zulip
[chat.fhir.org](https://chat.fhir.org) in the `german/mi-initiative` stream, or
on the MII Zulip [mii.zulipchat.com](https://mii.zulipchat.com/) in the
`MII-Kerndatensatz` stream. Comments and issues are welcome as *Issues* on
[GitHub](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues).

### Authors (in alphabetical order)

- Christian Gulden (BZKF / Erlangen)
- Jori Kern (DKFZ Heidelberg)
- Julian Saß, Berlin Institute of Health (Charité)
- Margaux Gatrio, Berlin Institute of Health (Charité)
- Lotte Schwiening, Berlin Institute of Health (Charité)
- Paul Müller, Berlin Institute of Health (Charité)
- Nina Haffer, Berlin Institute of Health (Charité)
- Sophie Klopfenstein, Berlin Institute of Health (Charité)
- Thomas Debertshäuser, Berlin Institute of Health (Charité)
- Yuan Peng, Institut für Medizinische Informatik und Biometrie (TU Dresden)

### Copyright and License

© 2019+ TMF e. V., Charlottenstraße 42, 10117 Berlin

The content of this specification is public and is released under
**[CC0 1.0 (Public Domain Dedication)](https://creativecommons.org/publicdomain/zero/1.0/)**;
reuse and republication are not restricted.

For the usage rights of the underlying FHIR technology, see the FHIR base
specification. Some of the code systems used are published and maintained by
other organizations; the copyright of the respective publishers applies.

### Disclaimer

The content of this document is public. Please note that parts of this
document are based on FHIR version R4, which is copyrighted by
HL7 International.

Although this publication was prepared with the greatest care, the authors
cannot accept any liability for direct or indirect damage that may arise from
the content of this specification.
