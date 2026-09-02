# Pre/post delta — the two ig-stats measurements compared

| Side | Measurement |
|---|---|
| pre | preflight-analysis.json (mii-ig-onko-de-v2026, ad04468e, 2026-08-27T05:48:08Z) |
| post | postflight-analysis.json (mii-ig-onko-de-v2026, cb4d0e20, 2026-08-27T08:53:24Z) |

Verdicts: **unchanged** 31 · **improved** 1 · **expected-change** 4 · **REGRESSION** 1 · **not-measurable** 0.

## ⛔ Regressions — properties that got WORSE

Each one blocks the migration until it is fixed or explained; an explanation belongs in the migration report, not in a merge commit.

- **`licence.contradictory`**: `false` → `true` — the target now declares CONTRADICTORY licences (the target declares: cc0-, cc0-1.0) -- one file will be read as the licence by someone, and it will be the wrong one

## Identity

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `identity.id` | mii-ig-onko-de-v2026 | mii-ig-onko-de-v2026 | unchanged |  |
| `identity.canonical` | https://www.medizininformatik-initiative.de/fhir/ext/modul-onko | https://www.medizininformatik-initiative.de/fhir/ext/modul-onko | unchanged |  |
| `identity.packageId` | de.medizininformatikinitiative.kerndatensatz.onkologie | de.medizininformatikinitiative.kerndatensatz.onkologie | unchanged |  |
| `identity.name` | MII_IG_Onko_DE | MII_IG_Onko_DE | unchanged |  |
| `identity.version` | 2026.0.3 | 2026.0.3 | unchanged |  |
| `identity.fhirVersion` | 4.0.1 | 4.0.1 | unchanged |  |
| `identity.license` | CC0-1.0 | CC0-1.0 | unchanged |  |
| `identity.calver` | true | true | unchanged |  |
| `identity.publisher` | Medizininformatik Initiative | Medizininformatik Initiative | unchanged |  |
| `identity.status` | active | active | unchanged |  |
| `identity.title` | MII IG Kerndatensatz-Modul Onkologie | MII IG Kerndatensatz-Modul Onkologie | unchanged |  |

## Preflight flags

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `licence.contradictory` | false | true | **REGRESSION** | the target now declares CONTRADICTORY licences (the target declares: cc0-, cc0-1.0) -- one file will be read as the licence by someone, and it will be the wrong one |
| `dependency_health.injection_risk` | true | false | improved | the dependency-injection risk the source carried is cleared |
| `narrative_sources.dual_source` | true | true | unchanged |  |

## Artefact counts

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `mode` | static | static | unchanged |  |
| `artifacts.profiles` | 77 | 77 | unchanged |  |
| `artifacts.extensions` | 18 | 18 | unchanged |  |
| `artifacts.valuesets` | 114 | 114 | unchanged |  |
| `artifacts.codesystems` | 46 | 46 | unchanged |  |
| `artifacts.logicals` | 3 | 3 | unchanged |  |
| `artifacts.capabilitystatements` | 1 | 1 | unchanged |  |
| `artifacts.questionnaires` | 0 | 0 | unchanged |  |
| `artifacts.searchparameters` | 17 | 17 | unchanged |  |
| `artifacts.operations` | 0 | 0 | unchanged |  |
| `artifacts.examples` | 307 | 307 | unchanged |  |
| `artifacts.rulesets` | 17 | 48 | expected-change | the count rose by 31 -- artefacts added by the migration; the report names what and why |
| `artifacts.invariants` | 8 | 8 | unchanged |  |
| `artifacts.mappings` | 77 | 77 | unchanged |  |
| `artifacts.other.ConceptMap` | 40 | 40 | unchanged |  |
| `artifacts.other.Library` | 1 | 1 | unchanged |  |
| `artifacts.other.ObservationDefinition` | 2 | 2 | unchanged |  |
| `artifacts.other_total` | 43 | 43 | unchanged |  |
| `artifacts.total` | 583 | 583 | unchanged |  |

## Narrative pages

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `narrative.pages` | 443 | 472 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.intro_note_pages` | 0 | 103 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |
| `narrative.translation_pages` | 0 | 29 | expected-change | narrative routing (spec 9d/9e) moves pages between pagecontent, intro-notes and translations -- conservation of the CONTENT is checked by the verifier against page-map.tsv |

## Directives

| Property | Pre | Post | Verdict | Why |
|---|---|---|---|---|
| `directives.total` | 5364 | 5364 | unchanged |  |

