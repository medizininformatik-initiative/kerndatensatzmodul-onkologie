<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-systemische-therapie-intro.md (de) -->

This profile describes a systemic therapy or watchful waiting therapy in oncology.

### Description

Within the oBDS, several clinical concepts are represented within the Systemic Therapy
* Systemic therapies
    * Chemotherapy
    * Immunotherapy
    * Targeted therapy
    * Combination therapies of the above therapies
    * Hormone therapy
    * Stem cell and bone marrow transplantation
* Watchful therapies
    * Watchful Waiting
    * Active Surveillance
    * Wait and see

For these individual therapies, the oBDS captures further data elements that are represented here, including:
- Start and end time point of the therapy
- Relationship to surgery and intent of the therapy
- The reason for termination (regardless of whether successful or unsuccessful)
- The therapy protocol used with substance combinations (according to the oBDS implementation guide).

#### Category
- The MII procedure used recommends representing the **category** using the OPS main categories transferred into SNOMED (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct)
- The present category SNOMED `277132007 | Therapeutic procedure`, which corresponds to OPS category 8 ("Non-operative therapeutic measures"), includes both radiotherapy and nuclear medicine therapy as well as certain systemic therapies (e.g. chemotherapy and immunotherapy), whereas other systemic medication-based therapies (e.g. hormone therapy, targeted therapy) can also be coded under category 6 "Medications". It is therefore unspecific and not suitable, for example, for specifically filtering for nuclear medicine therapies within a research question.

#### Code
- As **code**, the MII procedure requires an OPS code or a SNOMED code.
- Medication-based systemic therapies are coded by different OPS categories depending on the type of therapy.
- For watchful therapies, no OPS codes are stored in the current catalog.
- In the MII procedure, exactly one coding (OPS or SNOMED CT) SHOULD be used for exactly one therapy. Additional procedures are represented as separate Procedure resources.

#### Therapy protocol
- As **usedCode**, the specific therapy protocols used in the systemic therapy are documented.
- The protocols are based on the [oBDS implementation guide](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532385/Systemische+Therapie+SYST+Protokolle) and contain standardized substance combinations.
- **Leading element for oBDS 16.4:** The protocol is primarily documented on the therapy bracket (`Procedure.usedCode`, bound extensible to the protocol ValueSet). The additional free-text entry in `MedicationStatement.note.text` of the individual substance resources serves solely to assign individual substances to their regimen (e.g. for combination therapies) and is not an independent second coding.
- Each protocol is documented with its characteristic designation (e.g. "FOLFOX", "R-CHOP", "AC") and the active ingredients it contains.
- Coding is done via the **MII CodeSystem Systemic Therapy Protocols**, which covers all common oncological therapy protocols.
- Protocols not included can still be documented - however, harmonization across sites is decisive here. New protocols should therefore be submitted via [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues).

#### Implementation recommendation
The above points result in the following coding recommendation for systemic / watchful therapy from the oBDS:
- Category as SNOMED code
    - Category for systemic therapies `18629005 | Administration of drug or medicament (procedure)`
    - Category for watchful therapies: none (no suitable parent concept, direct search via coding recommended)
- Coding
    - Systemic therapy via OPS as follows. Note that the exact active ingredient is coded via ATC as part of the MedicationStatement resource. Additional documentation of the medication via
        - Chemotherapy via OPS `8-54` or more specific
        - Immunotherapy via OPS `8-54` or more specific (additional specification of )
        - Stem cell therapy via OPS `8-86` or more specific
        - Hormone therapy via OPS `6-xxx.y` (e.g. `6-009.0` for Olaparib, oral for prostate cancer)
    - Watchful therapy via SNOMED-CT as follows
        - Watchful Waiting: SNOMED-CT `373818007 | No anti-cancer treatment - watchful waiting (finding)`
        - Active Surveillance: SNOMED-CT `424313000 | Active surveillance (regime/therapy)`
        - Wait and see: SNOMED-CT `310341009 | Follow-up (wait and see) (finding)`

---

### Conformance
The present profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Uniform Oncological Base Dataset (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Systemische-Therapie/Systemische-Therapie-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.html).
{: .ig-highlight .ig-highlight-grey}

**Examples**

[mii-exa-onko-systemische-therapie-1](Procedure-mii-exa-onko-systemische-therapie-1.html)
