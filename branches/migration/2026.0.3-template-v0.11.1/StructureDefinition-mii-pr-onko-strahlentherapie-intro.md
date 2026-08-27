<!-- TODO:REVIEW machine translation of source page StructureDefinition-mii-pr-onko-strahlentherapie-intro.md (de) -->

This profile describes a radiotherapy in oncology. The radiotherapy profile for oncology is based on the MII procedure module. It thus adopts the mandatory specification of OPS as the coding for the type of procedure. Since the details of the procedure are recorded in the individual radiation elements, the OPS for radiotherapy should be coded here.

The MII procedure module already has an extension [intent of the procedure](https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Durchfuehrungsabsicht) with a binding to SNOMED CT codes. However, since the intention of radiotherapy in the oBDS is captured via an oBDS-specific answer set, the procedure was extended with an additional element "Intention". Likewise, the relationship to any surgeries (e.g. adjuvant/neoadjuvant) is captured via the extension element "Stellung".

The specific details of the radiotherapy are subdivided into individual radiations and reported accordingly. Each radiation is captured as an extension.

Complications of the radiotherapy are not coded as `Procedure.complication` or `Procedure.complicationReference`, but, as with systemic therapy, are captured in a separate AdverseEvent resource with a reference to the radiotherapy resource. Note that a reference to the radiotherapy resource points non-specifically to the complete radiotherapy and not to individual radiations.

The reason for termination (regardless of whether successful or unsuccessful) is coded via `Procedure.outcome`.

### Structure
The decision to implement the radiation data as an extension has several reasons.
1. The data structure of the oBDS provides for specifying an overall radiotherapy period with a start and end, as well as an overall intention and relation-to-surgery data point. All further structured treatment information on the radiation (radiation type, location, dose, boost etc.) should be coded individually in an element "Bestrahlung".
2. The MII procedure requires that every procedure has exactly one code, either OPS or SNOMED CT.

3. The US American FHIR data model mCODE maps the relevant data points in extensions. It should be noted, however, that mCODE makes no distinction here between an overarching radiotherapy and a subordinate radiation. However, mCODE does also provide for detailed information on the size of the target volume.

Alternatively, an implementation was also discussed in which the overarching radiotherapy would remain as a profile conformant to the MII procedure, and the subordinate radiations would be profiled from the regular `Procedure`. This profiling was discarded because of the larger number of resources required and the anticipated difficulty of correctly assigning the OPS/SNOMED code.

### Category and codes

#### Category
- The MII procedure used recommends mapping the **category** using the OPS main categories transferred into SNOMED (https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/ValueSet/procedures-category-sct)
- The present category SNOMED `277132007 | Therapeutic procedure` , which corresponds to OPS category 8 ("Non-operative therapeutic measures"), includes both radiotherapy and nuclear medicine therapy as well as certain systemic therapies (e.g. chemotherapy and immunotherapy), whereas other systemic drug therapies (e.g. hormone therapy, targeted therapy) can also be coded under category 6 "Medications". It is therefore non-specific and not suitable, for example, for specifically filtering for nuclear medicine therapies within a research question.

#### Code
- The MII procedure requires an OPS code or a SNOMED code as the **code**.
- OPS includes codes for radiotherapy (`8-52`) and nuclear medicine treatment (`8-53`) with detailed sub-codings. In the oBDS itself, however, radiotherapy and nuclear medicine are not coded via OPS, but instead follow a cancer-registry-specific coding of location, application type and radiation type as well as further data points.
- In the MII procedure, exactly one coding (OPS or SNOMED CT) SHOULD be used for exactly one therapy. Additional procedures are mapped as individual Procedure resources.

#### Implementation recommendation
The following coding recommendation for oBDS radiotherapy results from the points mentioned above:
- Category as SNOMED code
    - Category for radiotherapy `1287742003 | Radiotherapy (procedure)`
    - Category for nuclear medicine `399315003 | Radionuclide therapy (procedure)`
- Coding via OPS
    - Radiotherapy as OPS `8-52 Strahlentherapie` (or more specific if available)
    - Nuclear medicine therapy as OPS `8-53 Nuklearmedizinische Therapie` (or more specific if available)

### oBDS 2014 to 2021 target region migration

The radiotherapy target region coding has changed fundamentally between oBDS 2014 and 2021:

![oBDS 2014 → 2021 radiotherapy target region migration](MII_Onko_Strahlentherapie_Zielgebiet_Migration.png)

<!-- Original PlantUML removed for brevity
@startuml MII_Onko_Strahlentherapie_Zielgebiet_Migration
!theme plain
skinparam defaultFontSize 10
skinparam classFontSize 9
skinparam packageFontSize 11
skinparam stereotypeFontSize 8

title **oBDS 2014 → 2021 Strahlentherapie Zielgebiet Migration**\n//Architekturänderung: Kombinierte Codes → Separate Prozeduren//

package "oBDS 2014 Ansatz" as pkg2014 <<Legacy>> {

  class "**Strahlentherapie**\n//Übergeordnete Prozedur//" as ST2014 <<Procedure>> {
    + status: completed
    + code: OPS 8-522
    + subject: Patient
    + performedPeriod: 2023-03-15 to 2023-04-20
  }

  class "**Bestrahlung Mamma+LK**\n//Eine Prozedur//" as B2014 <<Procedure>> {
    + **bodySite.coding.system**: zielgebiet-2014
    + **bodySite.coding.code**: "3.1.+"
    + **bodySite.display**: "Mamma als Ganzbrust mit Lk"
    + extension[Gesamtdosis]: 50 Gy
    + extension[Einzeldosis]: 2 Gy
    --
    **Kombinierte Information:**
    ✓ Organ: Mamma als Ganzbrust
    ✓ Lymphknoten: Implizit enthalten
    ✓ Lateralität: Über Extension
  }

  ST2014 ||--|| B2014 : partOf
}

package "oBDS 2021 Ansatz" as pkg2021 <<Current>> {

  class "**Strahlentherapie**\n//Übergeordnete Prozedur//" as ST2021 <<Procedure>> {
    + status: completed
    + code: OPS 8-522
    + subject: Patient
    + performedPeriod: 2023-03-15 to 2023-04-20
  }

  class "**Bestrahlung Mamma**\n//Primärzielgebiet//" as B2021_Organ <<Procedure>> {
    + **bodySite.coding.system**: zielgebiet
    + **bodySite.coding.code**: #3.1
    + **bodySite.display**: "Mamma als Ganzbrust (r, l)"
    + extension[Seitenlokalisation]: "rechts"
    + extension[Gesamtdosis]: 50 Gy
    + extension[Einzeldosis]: 2 Gy
    --
    **Sektion 3: Thorax**
  }

  class "**Bestrahlung Lymphknoten**\n//Lymphabflussregion//" as B2021_LK <<Procedure>> {
    + **bodySite.coding.system**: zielgebiet
    + **bodySite.coding.code**: #9.3
    + **bodySite.display**: "Axilläre Lymphknoten (r, l)"
    + extension[Seitenlokalisation]: "rechts"
    + extension[Gesamtdosis]: 46 Gy
    + extension[Einzeldosis]: 2 Gy
    --
    **Sektion 9: Lymphabflussregionen**
  }

  ST2021 ||--|| B2021_Organ : partOf
  ST2021 ||--|| B2021_LK : partOf
}

note top of pkg2014 : **oBDS 2014 Paradigma**\n• Kombinierte Organ+Lymphknoten-Kodierung\n• Suffixe: + (mit LK), - (ohne LK), . (o.n.A.)\n• Eine Prozedur pro Zielgebietskombination

note top of pkg2021 : **oBDS 2021 Paradigma**\n• Getrennte Organ- und Lymphknotenkodierung\n• Organe: Sektionen 1-8\n• Lymphknoten: Sektion 9\n• Separate Prozeduren pro Zielgebiet

note bottom of ST2014 : Gleiche übergeordnete\nStrahlentherapie-Struktur

note bottom of ST2021 : Gleiche übergeordnete\nStrahlentherapie-Struktur

' Migration arrow
pkg2014 -[#red,thickness=3]-> pkg2021 : **Migration**\n//2014 "3.1.+" →//\n//2021 "#3.1" + "#9.3"//

' ValueSet box
note as VS
  **ValueSet Integration**
  MII_VS_Onko_Strahlentherapie_Zielgebiet
  ├── system: zielgebiet (oBDS 2021)
  └── system: zielgebiet-2014 (oBDS 2014)

  **Semantische Trennung:**
  • "3.1." (2014) ≠ #3.1 (2021)
  • Verschiedene CodeSystem URIs
  • Keine Konflikte durch Versionskennzeichnung
end note

VS -[hidden]- pkg2021

@enduml
-->

#### Migration strategy

- **oBDS 2014**: Used combined codes with suffixes (`+` with lymph nodes, `-` without lymph nodes, `.` without further specification)
- **oBDS 2021**: Separates organs (sections 1-8) and lymphatic drainage regions (section 9) into separate radiations
- **Example**: oBDS 2014 code `"3.1.+"` (breast with lymph nodes) becomes two separate codes: `#3.1` (breast) and `#9.3` (axillary lymph nodes)
- **ValueSet**: Supports both CodeSystems for backward compatibility

---

### Conformance
This profiling is compatible with the procedure profile of the ISiK base modules level 4. https://simplifier.net/isik-basis-v4/isikprozedur

---

Mapping dataset to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md gate=B -->
> The mapping of the dataset fields is documented in the logical model: [MII LM Onkologie](StructureDefinition-mii-lm-onko.html).
{: .ig-highlight .ig-highlight-grey}

---

Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) to FHIR

<!-- DERIVED:bridge source=MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Strahlentherapie/Strahlentherapie-Procedure.page.md gate=B -->
> The oBDS mappings are recorded in the artefact view of this profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.html).
{: .ig-highlight .ig-highlight-grey}

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

1.  The search parameter "extension-bestrahlung-applikationsart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-applikationsart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-applikationsart|KLDR```

    Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-bestrahlung-strahlenart" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-strahlenart=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-strahlenarart|PN```

    Usage notes: Further information on searching by "Procedure.extension:Stellung" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-bestrahlung-zielgebiet" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-zielgebiet|4.9```

    Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Applikationsart" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-bestrahlung-zielgebiet-Lateralitaet" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-zielgebiet-Lateralitaet=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-seitenlokalisation|L```

    Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Zielgebiet_Lateralitaet" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-bestrahlung-boost" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-boost=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost|SIB```

    Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Boost" can be found in the [FHIR base specification - section "Token Search"](http://hl7.org/fhir/R4/search.html#token).

1.  The search parameter "extension-bestrahlung-einzeldosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-einzeldosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-einzeldosis```

    Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Einzeldosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

1.  The search parameter "extension-bestrahlung-gesamtdosis" MUST be supported:

    Examples:

    ```GET [base]/Procedure?extension-bestrahlung-gesamtdosis=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-bestrahlung-gesamtdosis```

    Usage notes: Further information on searching by "Procedure.extension:Bestrahlung.extension:Gesamtdosis" can be found in the [FHIR base specification - section "Quantity Search"](http://hl7.org/fhir/R4/search.html#quantity).

**Examples**

`mii-exa-onko-strahlentherapie` <!-- TODO:REVIEW Example instance no longer present in the module; check the reference -->
