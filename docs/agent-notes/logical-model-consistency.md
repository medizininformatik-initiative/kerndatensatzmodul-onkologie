# Logical model to profile consistency, and FHIR profiling patterns

Relocated from the former CLAUDE.md (2026-11-16). Detailed FSH patterns are in the project skill
`.claude/skills/fsh-profiling-patterns/`; this page keeps the mapping rules and the checklist.

## Two representations of one model

| Artifact | Where | Role |
|---|---|---|
| `Logical: MII_LM_Onko` | `input/fsh/mii-lm-onko.fsh` | the domain data set as FHIR LogicalModel, one BackboneElement per oBDS chapter (Diagnose, Histologie, TNM, ...) |
| PlantUML models | `input/images-source/MII_Onko_{Kapitel}_*.pu`, organ modules `MII_Onko_{Organ}_Module.pu`, `onco_merged.puml`, `uml_fhir_diagnosis.puml`, `uml_fhir_therapy.puml` | the pictures rendered into the IG (`render-plantuml.yml`) |
| `Logical: MII_LM_MVGenomSeq_Onkologie` + ConceptMap | `input/fsh/mii-lm-mvgenomseq-onkologie.fsh`, `input/fsh/mii-cm-onkologie-to-mvgenomseq.fsh` | the Modellvorhaben-Genomsequenzierung mapping |

Profiles and both model forms must agree. Inconsistencies mean missing profile elements, a wrong
profile structure, or a documentation gap. The domain vocabulary used in all three is fixed in
`CONTEXT.md` (Tumor, Rezidiv, Fernmetastase, Transformation, Morphologiebestimmung, Kategorie,
Präfix, Klassifikationstyp, Synthetisierte/Finale TNM-Klassifikation).

## Mapping rules

1. **Object / backbone -> profile.** Each PlantUML `object` and each top-level backbone of
   `MII_LM_Onko` corresponds to exactly one profile (`object Diagnose` -> `MII_PR_Onko_Diagnose_Primaertumor`,
   parent: the MII base-module Diagnose profile).
2. **Attribute -> element or extension.** Each attribute maps to a FHIR element or a module
   extension, documented inline:

   ```fsh
   Profile: MII_PR_Onko_Operation
   * extension contains mii-ex-onko-operation-intention named Intention 1..1  // OP_Intention
   * performed[x] MS                                                           // OP_Datum
   * performed[x] only dateTime
   * code.coding[ops] 0..1 MS                                                  // OPS
   * complication MS                                                           // OP_Komplikation
   ```

3. **Relationship -> reference.** PlantUML arrows (`Diagnose --> Histologie`) become reference
   constraints (`* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)`).
4. **Types.** oBDS `Code` -> coded slice with ValueSet binding (CodeableConcept/Coding),
   `Datum` -> date or dateTime, `String` -> string, `Zahl` -> integer/Quantity.
5. **Cardinality.** Required in oBDS -> `1..1` or `1..*`; optional -> `0..1`/`0..*` but Must Support
   when it is a core oBDS element.

## Checklist for a new or changed profile

- [ ] PlantUML object and `MII_LM_Onko` backbone exist and match the profile
- [ ] every attribute is represented (element or extension), with the oBDS name as inline comment
- [ ] data types and cardinalities follow rules 4 and 5
- [ ] relationships are modelled as `Reference()` constraints
- [ ] example instance(s) demonstrate the profile (synthetic data)
- [ ] intro page `input/intro-notes/StructureDefinition-<id>-intro.md` (and DE mirror under `input/intro-notes/de/`)
- [ ] mentioned on the relevant EN page in `input/pagecontent/` and its DE mirror in `input/translations/de/pagecontent/`
- [ ] profile test cases in `tests/profiles/profiles.json` if the change alters acceptance behaviour

## Common discrepancies

| Issue | Model | Profile | Resolution |
|---|---|---|---|
| Missing extension | attribute exists | no element/extension | create extension |
| Wrong cardinality | required field | `0..*` | tighten constraint |
| Type mismatch | Code | string | coded slice + binding |
| Missing reference | relationship exists | no reference constraint | add `only Reference(...)` |

## Profile skeleton

```fsh
Profile: MII_PR_Onko_{ConceptName}
Parent: {ParentProfile}
Id: mii-pr-onko-{concept-name}
Title: "MII PR Onkologie {Human Name}"
Description: "{German description, referencing the oBDS chapter}"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-{concept-name}"
* insert Translation(^title, de-DE, {German title})
* insert Translation(^description, de-DE, {German description})

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
```

Rulesets (`input/fsh/rulesets/`): `PR_CS_VS_Version` and `Version` stamp the module version,
`Publisher` the MII publisher, `OnkoCRMI{Profile|Extension|LogicalModel|ValueSet|CodeSystem|
CodeSystemSupplement|CodeSystemFremdinhalt|CapabilityStatement|ConceptMap|SearchParameter|Library}`
the CRMI metadata, `Translation(path, language, text)` and `Label(path, short, definition)` the
bilingual texts, `MetaProfile(canonical)` the example `meta.profile`, `TestDataLabel` the synthetic
data marker, `SNOMEDCopyrightForVS` / `UICCCopyright` the licence notes.

## Must Support

1. Core oBDS elements: always MS.
2. References to other oncology profiles: MS.
3. Extensions that are mandatory per oBDS: MS.
4. Slicing discriminators: MS so validation can resolve the slice.

## Slicing patterns

Coding slice on `system` (the common oBDS + SNOMED pattern):

```fsh
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    obds-code 1..1 MS and
    snomed-code 0..1 MS
* code.coding[obds-code] from mii-vs-onko-{concept} (required)
* code.coding[obds-code].system = $mii-cs-onko-{concept}
* code.coding[obds-code].system 1.. MS
* code.coding[obds-code].code 1.. MS
```

Extension slice on `url`:

```fsh
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    intentionExtension named intention 1..1 MS and
    urgencyExtension named urgency 0..1 MS
```

ICD-O-3 slices: `coding.version` is mandatory (`1..1 MS`) since 2027.0.0-ballot.1
(commit a576ed00f8); the transitions ConceptMap `mii-cm-onko-icdo3-transitions-2019` documents code
reuse between ICD-O-3 editions.

## Parent profile selection

| Content | Parent |
|---|---|
| Diagnosis | MII base module Diagnose profile (`de.medizininformatikinitiative.kerndatensatz.base`) |
| Procedure (OP, Strahlentherapie) | MII base module Prozedur profile (`$mii-procedure` alias) |
| Observation (TNM, Histologie, Leistungszustand, Tumormarker) | `Observation` or a specific MII observation profile |
| Medication (Systemische Therapie) | MII Medikation `MedicationStatement` / `MedicationRequest` |
| Genetic variant | `de.medizininformatikinitiative.kerndatensatz.molgen` variant profile |
| Specimen | MII Biobank Specimen |
| Therapieempfehlung (Tumorkonferenz) | `CarePlan` |
| Nebenwirkung (CTCAE) | `AdverseEvent` |

The authoritative dependency list with versions is `dependencies:` in `sushi-config.yaml`
(2027.0.0-ballot line of base, biobank, laborbefund, medikation, meta, molgen; de.basisprofil.r4 1.6.0;
hl7.fhir.uv.crmi 2.0.0; genomics-reporting 3.0.0).
