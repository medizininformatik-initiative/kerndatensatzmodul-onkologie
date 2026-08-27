<!-- TODO:REVIEW machine translation of the German original (input/translations/de/pagecontent/atc-terminologie.md) -->
<!-- markdownlint-disable MD041 -->
<!-- Source: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md.
     German original: input/translations/de/pagecontent/atc-terminologie.md —
     keep both language versions in step. -->

### Overview

The MII provides **curated terminologies relevant to oncology** for systemic therapies:

- **Therapy protocols**: 96 oBDS-based standard protocols ([CodeSystem](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.html))
- **ATC substances**: main ValueSet + 9 year-specific ValueSets (2018–2026) + 6 transition ConceptMaps
- **UNII substances**: for active ingredients without an ATC code ([ValueSet](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.html))

**Important**: the ValueSets contain only substances relevant to oncology, not the complete ATC classification.

---

### Therapy Protocols

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md gate=B -->
> Name, status, version and the number of codes are shown on the artifact page
> [`mii-cs-onko-systemische-therapie-protokolle`](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.html).
{: .ig-highlight .ig-highlight-grey}

**Examples of common protocols**: FOLFOX, R-CHOP, AC, BEACOPP, ICE

Please submit new protocols via [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues).

---

### ATC: WHO Version vs. Official German Version (ATC-DE)

The ATC classification is published annually at international level by the **WHO
Collaborating Centre for Drug Statistics Methodology** (Oslo). For Germany, the
**BfArM** publishes the **official German version** annually (ATC-DE, with
defined daily doses/DDD) — it may deviate from the WHO version in individual
codes and DDD definitions. **This module uses exclusively the German version**
with the system URL `http://fhir.de/CodeSystem/bfarm/atc`; the WHO version
(`http://www.whocc.no/atc`) is not used.

#### Annual CodeSystems and Validation

On the MII terminology server, ATC-DE — like ICD-10-GM, OPS and ICD-O — is held
as a **separate CodeSystem resource per year** under the common system URL (for
example `L01XC18` pembrolizumab exists in the resource `|2021`, but no longer in
`|2026`). The same rules follow from this as for ICD-O
(see [ICD-O Terminology](icd-o-terminologie.html)):

1. **The year-specific ValueSets pin their codes to the year** (`…atc|2018#…`) —
   historical codes therefore validate against the CodeSystem resource in which
   they exist.
2. **Instances SHOULD state `coding.version`** (the ATC year) so that validation
   and analysis know the year.

#### Curated Subset — Not the Complete ATC

Unlike ICD-O (where the entire classification is relevant to oncology and the
ValueSets cover the complete axis), the annual ATC ValueSets are **curated
oncological subsets** (approximately 320–440 substances per year) based on the
oBDS substance list. A different maintenance contract follows from this: besides
the version pin, each year requires **content curation** (new oncology drug
approvals, reclassifications). Curation gaps are the typical source of errors —
for instance the L01XC antibodies were temporarily missing from the years
2018–2021 (GitHub #308). Please report missing substances as a
[GitHub issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues);
the systematic tracking of new approvals is planned as a monitoring process
(GitHub #282–#284).

---

### ATC Substances

#### Main ValueSet (current codes)

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md gate=B -->
> Name, status, version and expansion of the main ValueSet are shown on the
> artifact page
> [`mii-vs-onko-systemische-therapie-substanzen`](ValueSet-mii-vs-onko-systemische-therapie-substanzen.html).
{: .ig-highlight .ig-highlight-grey}

#### Year-specific ValueSets

Year-specific ValueSets are available for validating historical data:

| Year | ValueSet |
|------|----------|
| 2026 | [mii-vs-onko-systemische-therapie-substanzen-2026](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.html) |
| 2025 | [mii-vs-onko-systemische-therapie-substanzen-2025](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.html) |
| 2024 | [mii-vs-onko-systemische-therapie-substanzen-2024](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.html) |
| 2023 | [mii-vs-onko-systemische-therapie-substanzen-2023](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.html) |
| 2022 | [mii-vs-onko-systemische-therapie-substanzen-2022](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.html) |
| 2021 | [mii-vs-onko-systemische-therapie-substanzen-2021](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.html) |
| 2020 | [mii-vs-onko-systemische-therapie-substanzen-2020](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.html) |
| 2019 | [mii-vs-onko-systemische-therapie-substanzen-2019](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.html) |
| 2018 | [mii-vs-onko-systemische-therapie-substanzen-2018](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.html) |

#### Transitions (ATC transition ConceptMaps)

The German ATC classification is updated annually; code moves between the years
are documented by the **transition ConceptMaps** — the tool for ETL pipelines and
the migration of historical medication data:

| Transition | ConceptMap | Focus |
|---|---|---|
| 2020 → 2021 | [`mii-cm-onko-atc-transitions-2021`](ConceptMap-mii-cm-onko-atc-transitions-2021.html) | kinase inhibitors L01XE → L01E (e.g. quizartinib `L01XE52` → `L01EX11`, abemaciclib `L01XE50` → `L01EF03`) |
| 2021 → 2022 | [`mii-cm-onko-atc-transitions-2022`](ConceptMap-mii-cm-onko-atc-transitions-2022.html) | **largest reclassification in oncology**: 20 monoclonal antibodies L01XC → L01F* (trastuzumab, rituximab, pembrolizumab, nivolumab, …) |
| 2022 → 2023 | [`mii-cm-onko-atc-transitions-2023`](ConceptMap-mii-cm-onko-atc-transitions-2023.html) | subsequent adjustments |
| 2023 → 2024 | [`mii-cm-onko-atc-transitions-2024`](ConceptMap-mii-cm-onko-atc-transitions-2024.html) | subsequent adjustments |
| 2024 → 2025 | [`mii-cm-onko-atc-transitions-2025`](ConceptMap-mii-cm-onko-atc-transitions-2025.html) | subsequent adjustments |
| 2025 → 2026 | [`mii-cm-onko-atc-transitions-2026`](ConceptMap-mii-cm-onko-atc-transitions-2026.html) | subsequent adjustments |

**Coding recommendation**: use the ATC code that was valid at the time of
therapy and state `coding.version`. In case of doubt, the UNII code can be used
as an alternative.

**Example — imatinib across an ATC version change:**
[mii-exa-onko-medikation-imatinib-atc-version-transition](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.html)

#### Post-hoc Annotation of Free Text

DIC **may** map historical free-text medication data to ATC codes retrospectively if:

1. **provenance is documented** (mark the retrospective coding),
2. **current ATC codes** are used (not historical ones),
3. the **original text is preserved** in `medicationCodeableConcept.text`.

<details>
<summary>Example: post-annotation</summary>

```fsh
Instance: mii-exa-onko-medikation-quizartinib-postannotated
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation

* status = #completed
* subject = Reference(Patient/example)
* medicationCodeableConcept.coding[atcClassDe] = $atc-de#L01EX11 "Quizartinib"
* medicationCodeableConcept.text = "Quizartinib (Original: Freitext aus oBDS)"
* effectivePeriod.start = "2020-09-15"  // Therapie vor Code-Änderung
* effectivePeriod.end = "2020-12-15"
```

</details>

---

### UNII Substances

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Terminologien.page.md gate=B -->
> Name, status, version and expansion of the UNII ValueSet are shown on the
> artifact page
> [`mii-vs-onko-systemische-therapie-substanzen-unii`](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.html).
{: .ig-highlight .ig-highlight-grey}

**Example — substance with a UNII code only (iberdomide):**
[mii-exa-onko-medikation-iberdomide-unii](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.html)

#### Substances without Available Codes

The following oBDS entries have neither ATC nor UNII codes:

- **EmboCept, Embozene, Hepasphere**: embolisation microspheres
- **GcMAF**: Gc protein-derived macrophage activating factor
- **G-CSF**: granulocyte colony-stimulating factor (generic designation)
- **Study medication**: generic placeholder designation

→ Use `Coding.text` with free text.

**Newly available:** **disodium folinate** is now available as **LEUCOVORIN SODIUM** (UNII: 4MXU9LJS4Q) in the UNII ValueSet and as **sodium folinate** (ATC: V03AF06) in the ATC ValueSets.

<details>
<summary>Special notes on UNII substances (click to expand)</summary>

- **OLAPTESED PEGOL** (UNII: MTM792B442): often documented only as "Olaptesed"
- **GEBASAXTUREV** (UNII: 4B57CWT710): also known as "Coxsackievirus A21"
- **Daromun**: corresponds to **DARLEUKIN** (UNII: 2OQ3OPV2F8) or **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV)
- **Fibromun**: corresponds to **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV)
- **LONCASTUXIMAB TESIRINE** (UNII: 7K5O7P6QIU): oBDS typo "Ioncastuzimab tesiren"
- **NIDANILIMAB** (UNII: ND296JF21I): listed in the oBDS as "Nadunolimab"
- **HUMAN PARVOVIRUS B19** (UNII: 94N635564T): possibly not identical to "Parvovirus H1"
- **PACLITAXEL** (UNII: P88XT4IS4D): the oBDS probably means "nab-paclitaxel" (a separate UNII is possible)
- **CYTARABINE** (UNII: 04079A1RDZ): the oBDS probably means the liposomal formulation
- **DEPATUXIZUMAB** (UNII: W984C353CG): without the "mafodotin" part (toxin)

</details>

---

### Terminology Binding in Profiles

**Procedure (protocol)**:
```fsh
* usedCode from MII_VS_Onko_Systemische_Therapie_Protokolle (extensible)
```

**MedicationStatement (substance)**:
```fsh
* medicationCodeableConcept from MII_VS_Onko_Systemische_Therapie_Substanzen (extensible)
```
