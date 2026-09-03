<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-weitere-klassifikationen-intro.md (de) -->
This profile describes further tumour classifications besides TNM.

### Delimitation: staging, grading and risk assessment

The "further classifications" comprise different kinds of assessment systems:

- **Staging systems**: determine the anatomical extent of the tumour (e.g. FIGO, Ann Arbor, AJCC)
- **Grading systems**: assess the histological differentiation and biological aggressiveness
- **Risk assessment systems**: prognostic scores based on multiple clinical parameters (e.g. IPI, FLIPI, IPSS)
- **Molecular classifications**: based on genetic/molecular markers (e.g. p16 status, ELN classification)

### Staging systems (anatomical extent)
- **FIGO classification** for gynaecological tumours
- **AJCC classifications** of various editions (6th, 7th, 8th edition)
- **Ann Arbor classification** for lymphomas (Hodgkin and non-Hodgkin)
- **Durie-Salmon staging** for multiple myeloma
- **Bismuth classification** for hilar cholangiocarcinoma

### Grading and assessment systems
- **Breslow/Clark system** for melanomas (tumour thickness and depth of invasion)
- **GIST mitotic rate** (gastrointestinal stromal tumours)
- **p16 status** (molecular marker, especially in HPV-associated carcinomas)

### Prognostic risk scores
- **Lymphomas**:
  - IPI (International Prognostic Index) for aggressive non-Hodgkin lymphomas
  - FLIPI for follicular lymphomas
  - MIPI for mantle cell lymphomas
  - GHSG risk classification for Hodgkin lymphomas
- **Leukaemias**:
  - European LeukemiaNet Classification (AML)
  - EUTOS score (chronic myeloid leukaemia)
  - Sanz score (acute promyelocytic leukaemia)
- **Myelodysplastic syndrome**: IPSS (International Prognostic Scoring System)
- **Multiple myeloma**: ISS/R-ISS (International Staging System)
- **Waldenström macroglobulinaemia**: ISSWM

The Plattform §65c provides a catalogue describing how the most common classifications are to be coded **for the cancer registry report**, for reasons of harmonisation:
https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532511/Weitere+Klassifikationen

### Implementation notes

#### FHIR modelling following the mCODE STU4 pattern

This profile follows the **mCODE STU4 build pattern** for staging systems, with a three-part structure:

- **`Observation.code`**: general staging concept (e.g. "FIGO Stage", "Ann Arbor Stage", "BINET Stage")
- **`Observation.method`**: specific classification system/assessment method (must support)
- **`Observation.value`**: concrete classification value from the corresponding value set

**Example FIGO classification:**
```
code: 385361009 "FIGO Stage" (allgemeines Konzept)
method: "FIGO staging of cervical carcinoma" (spezifische Methode)
value: "Stage IIA" (konkreter Wert)
```

**Example haematological classification:**
```
code: "BINET staging system" (allgemeines Konzept) 
method: "BINET staging for chronic lymphocytic leukemia" (spezifische Methode)
value: "BINET A" (konkreter Wert)
```

This structure makes it possible to distinguish different staging systems within the same tumour entity and to identify clearly which specific assessment procedure was used.

#### Terminology integration

Because of the large number of possible scales and scores it is not possible to provide a comprehensive and generally valid catalogue here, so the concrete design is left to the vendors and systems. HL7 Deutschland provides guidance at the following link: https://ig.fhir.de/basisprofile-de/stable/ig-markdown-Ressourcen-Observation-Skalen-und-Scores.html

**Important note**: for oBDS-specific classifications it should first be checked whether corresponding SNOMED CT or LOINC codes are available before proprietary oBDS codes are used.

**Prioritisation in terminology selection:**
1. **SNOMED CT** for established classification systems (preferred)
2. **LOINC** for laboratory-based and quantitative assessments
3. **NCI Thesaurus** for special oncological concepts
4. **oBDS-specific codes** only if no international standards are available

### Delimitation from organ-specific modules

The following classifications will in future be covered by the organ-specific modules and should no longer be coded via the further classifications:
- **Gleason score** (prostate module)
- **Further organ-specific scores** are being transferred successively into the corresponding modules

### Terminology binding

The profile uses a **preferred binding** to the value set `MII_VS_Onko_Weitere_Klassifikationen`, whereby both international terminologies (SNOMED CT, NCI Thesaurus) and oBDS-specific codes are supported.

#### Available classification systems

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Observation.page.md gate=B -->
> The expansion of the available classification systems is shown on the page of the value set [mii-vs-onko-weitere-klassifikationen](ValueSet-mii-vs-onko-weitere-klassifikationen.html).
{: .ig-highlight .ig-highlight-grey}

---

**Examples**

[mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.html)

[mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.html)

[mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.html)

[mii-exa-onko-weitere-klassifikationen-4](Observation-mii-exa-onko-weitere-klassifikationen-4.html)
