# Naming conventions — MII KDS module Onkologie

Relocated from the former CLAUDE.md (2026-11-16). Not imported into agent context; linked from
AGENTS.md "Where to look". The regexes in `qc/custom.rules.yaml` (Simplifier QC, run by the MII
reusable .NET validation) are the enforcement; this page explains and illustrates them.

## Enforced patterns (qc/custom.rules.yaml)

| Field | Regex | Note |
|---|---|---|
| `id` | `^mii-(pr\|ex\|lm\|vs\|cs\|cm\|sm\|ns\|sp\|cps\|od\|ig\|exa)-onko` | all resources |
| `name` | `^MII_(PR\|EX\|LM\|VS\|CS\|CM\|SM\|NS\|SP\|CPS\|OD\|IG\|EXA)_Onko` | conformance resources |
| `title` | `^MII (PR\|EX\|LM\|VS\|CS\|CM\|SM\|NS\|SP\|CPS\|OD\|IG\|EXA) Onko` | conformance resources |
| `url` | `^https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/` | conformance resources |
| `version` | must be in the explicit allowed list (`version-filled` rule) | update the list on every bump |

The `.NET` QC job is configured upstream to always pass, so a naming violation shows up in its
log, not as a red check. Read the log.

## Profiles

Pattern: `MII_PR_Onko_{ConceptName}` (PascalCase with underscores), id `mii-pr-onko-{kebab}`,
title `MII PR Onkologie {Human readable}`.

```fsh
Profile: MII_PR_Onko_Diagnose_Primaertumor
Id: mii-pr-onko-diagnose-primaertumor
Title: "MII PR Onkologie Diagnose Primärtumor"

Profile: MII_PR_Onko_TNM_Klassifikation
Id: mii-pr-onko-tnm-klassifikation
Title: "MII PR Onkologie TNM Klassifikation"

Profile: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
```

## Extensions

Pattern: `MII_EX_Onko_{ConceptName}`, id `mii-ex-onko-{kebab}`, title `MII EX Onkologie {Name}`.
Older extensions use the kebab id as the FSH name as well (`Extension: mii-ex-onko-operation-intention`);
both forms pass QC because only `id`/`name`/`title`/`url` are checked.

```fsh
Extension: MII_EX_Onko_Histology_Morphology_Behavior_ICDO3
Id: mii-ex-onko-histology-morphology-behavior-icdo3
Title: "MII EX Onkologie Histology Morphology Behavior ICD-O-3"
```

## ValueSets and CodeSystems

Pattern: `mii-vs-onko-{concept}` / `mii-cs-onko-{concept}` as both FSH name and id,
title `MII VS Onkologie {Name}` / `MII CS Onkologie {Name}`.

```fsh
ValueSet: mii-vs-onko-primaertumor-diagnosesicherung
Id: mii-vs-onko-primaertumor-diagnosesicherung
Title: "MII VS Onkologie Primärtumor Diagnosesicherung"

CodeSystem: mii-cs-onko-primaertumor-diagnosesicherung
Id: mii-cs-onko-primaertumor-diagnosesicherung
Title: "MII CS Onkologie Primärtumor Diagnosesicherung"
```

## ConceptMaps, Libraries, SearchParameters, CapabilityStatements

Prefixes `cm`, `lib`, `sp`, `cps` follow the same scheme (`mii-cm-onko-tnm-uicc-sct-pathological`,
`mii-lib-onko-synthesize-tnm`). ConceptMaps to SNOMED CT end in `-sct`; classification-specific
maps carry the classification and the TNM type (`-pathological`, `-clinical`).

## Examples

Pattern: `mii-exa-onko-{concept}[-{variant}]`, `Usage: #example`, title `MII EXA Onkologie {Name}`.

```fsh
Instance: mii-exa-onko-tnm-klassifikation-TisN0M0
InstanceOf: MII_PR_Onko_TNM_Klassifikation
Usage: #example
Title: "MII EXA Onkologie TNM Klassifikation TisN0M0"
```

Bundles that tell a patient journey (Mamma, KRK, Melanom, CUP) are `mii-exa-onko-{organ}-bundle`
and get an intro page in `input/intro-notes/Bundle-<id>-intro.md`.

## Files and folders

Pattern: `mii-{type}-onko-{concept}.fsh`, lowercase, one artifact per file. Files live under
`input/fsh/oBDS/{NN}_{Kapitel}/` by oBDS chapter (05_Diagnose, 06_Histologie, 08_TNMKlassifikation,
09_Weitere_Klassifikationen, 10_Residualstatus, 11_Fernmetastasen, 12_Allgemeiner_Leistungszustand,
13_OP, 14_Strahlentherapie, 15_Nebenwirkung_ST_SYST, 16_SystemischeTherapie, 17_Verlauf,
18_19_Tumorkonferenz, 20_Tod, 23_GenetischeVariante, 24_Studienteilnahme) plus
`Organspezifische Module/` (Mamma, KRK, Melanom, Prostata). Terminologies shared across chapters
(ICD-O-3 topography/morphology, Seitenlokalisation, Intention, Therapie-Typ, MedDRA fragment,
RadElement) live in `input/fsh/overlapping terminologies/`. Invariants are one per file in
`input/fsh/invariants/`, named after the invariant key.

```
mii-pr-onko-diagnose-primaertumor.fsh      # Profile
mii-ex-onko-operation-intention.fsh        # Extension
mii-vs-onko-operation-intention.fsh        # ValueSet
mii-cs-onko-operation-komplikation.fsh     # CodeSystem
mii-exa-onko-diagnose.fsh                  # Example
mii-cm-onko-tnm-uicc-sct-pathological.fsh  # ConceptMap
```

The template-level `input/fsh/README.md` describes the kerndatensatz-basis layout
(`profiles/`, `extensions/`, `MII_PR_<Module>_<Name>.fsh`). This module deliberately keeps the
oBDS-chapter layout; do not reorganise.

## Canonical URLs

```
https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/{id}
https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/{id}
https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/{id}
https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/{id}
```

Canonical of the IG: `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko`
(`canonical` in `sushi-config.yaml`; the GitHub Pages site deliberately differs, never point the
canonical at github.io).
