<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/weitere-klassifikationen-terminologien.md) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md.
     German original: input/translations/de/pagecontent/weitere-klassifikationen-terminologien.md —
     keep both language versions in step. -->

This page documents the terminologies for other classifications in oncology, including haematological and organ-specific staging systems.

### Background

<!-- TODO:REVIEW The following three sentences are already incomplete or faulty in the source page ("Ann Arbor bei", "Die Plattform 65c stellt", typos) and were carried over verbatim; the translation reproduces the fragments. -->
The oBDS mainly defines TNM as the staging system; many further disease- or organ-specific staging and grading systems are represented in the oBDS via the free-text field "Weitere Klassifikationen" (other classifications). These include, for example, Nottingham grading for breast cancer or Ann Arbor for
The section 65c platform provides
Some of the staging systems are used internationally and are already contained in CodeSystems such as SNOMED CT and NCIt/UMLS, while others are used primarily in the German-speaking context.

Even though a SNOMED code exists for some staging systems and is preferable to a dedicated CodeSystem in terms of interoperability, we decided in favour of the representation according to the oBDS, because the data may be available at the sites directly in this format. A SNOMED annotation can be pursued here in future versions via ConceptMaps.

### Hierarchical CodeSystem for Classification Systems

The **Weitere Klassifikationen CodeSystem** uses a hierarchical structure to organise the various staging and classification systems:

#### CodeSystem: mii-cs-onko-weitere-klassifikationen-obds

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> The concepts with code and display as well as their child concepts are shown on
> the artifact page
> [`mii-cs-onko-weitere-klassifikationen-obds`](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.html).
{: .ig-highlight .ig-highlight-grey}

### Structure of the Hierarchical Approach

#### All Classification Systems (Parent Concepts)

<!-- TODO:REVIEW This section already has no content in the source page (neither text nor query). Add content or remove the section. -->

### ValueSets with descendant-of Filter

The ValueSets use **descendant-of filters** for maintainable terminology management.

#### Main ValueSet for All Classification Values

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> The definition and content (codes with display) of the main ValueSet are shown on
> the artifact page
> [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.html).
{: .ig-highlight .ig-highlight-grey}

### mCODE STU4 Pattern Integration

The implementation follows the **mCODE STU4 code+method+value pattern**:

#### Profile Elements for the code+method+value Pattern

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> Cardinalities, short descriptions and binding strengths of the elements
> `Observation.code`, `Observation.method` and
> `Observation.value[x]:valueCodeableConcept` are shown on the artifact page
> [`mii-pr-onko-weitere-klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.html).
{: .ig-highlight .ig-highlight-grey}

#### Example Implementation

<!-- TODO:REVIEW The example code below refers to the CodeSystem mii-cs-onko-weitere-klassifikationen; only mii-cs-onko-weitere-klassifikationen-obds currently exists in the module. -->
```
Instance: mii-exa-onko-weitere-klassifikationen-binet
InstanceOf: MII_PR_Onko_Weitere_Klassifikationen

// Allgemeiner Code für Staging
* code = $sct#385388004 "Tumorstadium-Befund"

// Spezifische Methode
* method = $mii-cs-onko-weitere-klassifikationen#binet "BINET Staging System"

// Tatsächlicher Wert
* valueCodeableConcept = $mii-cs-onko-weitere-klassifikationen#binet-a "BINET A"
```

### Available ValueSets

#### All ValueSets for Other Classifications (already in SNOMED + MII-defined)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> For the other classifications, the ValueSets
> [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.html)
> (classification systems) and
> [`mii-vs-onko-weitere-klassifikationen-auspraegungen`](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.html)
> (classification values) are available; name, description and status are stated
> there in each case.
{: .ig-highlight .ig-highlight-grey}

### Complete CodeSystem - Overview of All MII-defined Codes

<!-- TODO:REVIEW The source page lists the parent and child concepts of the CodeSystem mii-cs-onko-weitere-klassifikationen here; that artifact does not exist in the module (mii-cs-onko-weitere-klassifikationen-obds does). Review this section. -->
The parent and child concepts of the MII-defined codes are shown on the artifact
page
[`mii-cs-onko-weitere-klassifikationen-obds`](CodeSystem-mii-cs-onko-weitere-klassifikationen-obds.html).

### Mapping to the oBDS

The other classifications correspond to **oBDS field 9 "Weitere Klassifikationen"**:

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Weitere-Klassifikationen/Weitere-Klassifikationen-Terminologien.page.md gate=B -->
> The oBDS mappings of the individual elements are shown on the artifact page
> [`mii-pr-onko-weitere-klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.html)
> in the *Mappings* section.
{: .ig-highlight .ig-highlight-grey}

### SNOMED CT Mappings

SNOMED CT equivalents exist for some classification systems:

- BINET → SNOMED CT: 1149214008 (Binet chronic lymphocytic leukemia staging)
- Ann Arbor → SNOMED CT: 254373007 (Ann Arbor lymphoma staging)
- WHO Grade → SNOMED CT: 277612008 (WHO tumor grade)

### Examples

#### FIGO stage IVB (ovarian tumours)

[mii-exa-onko-weitere-klassifikationen-1](Observation-mii-exa-onko-weitere-klassifikationen-1.html)

#### Ann Arbor stage IIIX

[mii-exa-onko-weitere-klassifikationen-2](Observation-mii-exa-onko-weitere-klassifikationen-2.html)

#### FIGO grade 2

[mii-exa-onko-weitere-klassifikationen-3](Observation-mii-exa-onko-weitere-klassifikationen-3.html)
