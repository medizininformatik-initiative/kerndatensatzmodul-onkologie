---
parent: GenetischeVarianteObservation
topic: MolGenAbbildungVariantentypen
---

## {{page-title}}

### Zweck

Das oBDS erfasst genetische Varianten grobkörnig (Freitext-Name + Ausprägung M/W,
oBDS 23.1/23.2). Für eine **strukturierte, interoperable** Abbildung **SOLLTE** —
wo verfügbar — der [MII Molekulargenetische Befundbericht (MolGen)](https://simplifier.net/medizininformatikinitiative-modulomics)
verwendet werden, der auf dem HL7-Clinical-Genomics *Genomics Reporting* IG basiert
und internationale Nomenklaturen nutzt (**HGNC**, **HGVS**, **ISCN**, **Sequence Ontology**).

Diese Seite gibt für die in der onkologischen Praxis typischen Varianten- und
Markertypen eine **konkrete Empfehlung**, mit welcher MolGen-Struktur (Stand
`molgen 2026.x`, gültig auch für 2027) sie abzubilden sind. Grundlage ist eine
Beispiel-Markerliste (57 Gene, ~300 Gen×Varianten-Kombinationen); die Empfehlung
ist bewusst **nicht normativ**, sondern eine Umsetzungshilfe.

> **Profil-Referenz:** [`MII_PR_MolGen_Variante`](https://simplifier.net/medizininformatikinitiative-modulomics/sdmiimolgenvariante)
> (Parent: `http://hl7.org/fhir/uv/genomics-reporting/StructureDefinition/variant`)

### Übersicht: Markertyp → MolGen-Repräsentation

| oBDS-/Listen-Typ | Beispiel | Empfohlene MolGen-Abbildung |
|------------------|----------|------------------------------|
| **Gen** (Identität) | `BRAF`, `ALK` | `Variante.component:gene-studied` → **HGNC** (`http://www.genenames.org/geneId`) |
| **Spezifische Mutation** (Protein) | `BRAF V600E` = p.Val600Glu | `component:representative-protein-hgvs` (**p.HGVS**) |
| **Spezifische Mutation** (DNA) | `c.1799T>A` | `component:representative-coding-hgvs` (**c.HGVS**) |
| **Formel / HGVS-Freitext** | beliebige HGVS-Angabe | passende `*-hgvs`-Komponente; sonst `value`/`note` |
| **Exon-Angabe** | `EGFR Exon 19`, `FGFR2 Exon 12` | `component:dna-region` (LOINC 47999-8, DNA-Regionsname) ggf. + `exact-start-end` |
| **Fusion** | `EML4::ALK`, `BCR::ABL1` | `component:gene-fusion` → **HGNC-Paar** `GEN1::GEN2` (ValueSet `hgnc-vs`) |
| **Amplifikation** | `ERBB2`/`HER2` Amplifikation | `component:copy-number` (Kopienzahl) |
| **Translokation / Rearrangement** | `del(17)(p13)`, ROS1-Rearr. | `component:cytogenetic-location` (**ISCN**) |
| **LOH / Ko-Deletion** | `LOH 1p/19q` | `component:cytogenetic-location` bzw. `copy-number` |
| **Promoter-Hypermethylierung** | `MGMT` | Sonderfall — eigene Methylierungs-Observation (LOINC), **nicht** als Variante |
| **Unbekannt** | Gen ohne Detailangabe | `component:gene-studied` + `value` = *unbestimmt* |
| **IHC-Marker** | `PD-L1`, `HER2 IHC`, `p16`, `p53` | **Kein Variant** → `MII_PR_MTB_Immunohistochemistry` (Modul Molekulares Tumorboard) |

### Erläuterungen zu Sonderfällen

**Gen-Identität (HGNC).** Die Gensymbole der Liste sind bereits HGNC-approved
Symbole. In MolGen wird das Gen strukturiert über `gene-studied` (HGNC) geführt;
die oBDS-Freitextangabe `Observation.note` entfällt damit für die strukturierte Sicht.

**Exon-Ebene.** Angaben wie „Exon 19" beschreiben keine Einzelvariante, sondern
eine Region. MolGen/Genomics Reporting bildet dies über `dna-region` (benannte
DNA-Region) ab — ein eigenes GA4GH-**Cat-VRS** ist dafür **nicht** erforderlich.
Cat-VRS bleibt echten *Kategorien* vorbehalten (z. B. „jede aktivierende
EGFR-Mutation") und ist perspektivisch (post-2027) zu betrachten.

**Fusionen.** `gene-fusion.value` ist an das HGNC-ValueSet gebunden und erwartet
die Notation `GENSYMBOL1::GENSYMBOL2` (z. B. `EML4::ALK`). Reine „Fusion ohne
Partner"-Angaben werden über das untersuchte Gen (`gene-studied`) + Fusions-Flag geführt.

**IHC-Marker (MTB).** Immunhistochemische Marker (PD-L1, HER2-IHC, p16, p53,
panTRK, ROS1-IHC …) sind Protein-Expressionsbefunde, keine Sequenzvarianten. Das
**MII-Erweiterungsmodul Molekulares Tumorboard (MTB)** stellt dafür dedizierte
Profile bereit (Basis: `MII_PR_MTB_Immunohistochemistry`, Parent
`MII_PR_MTB_Molekularer_Biomarker`):

| Marker | MTB-Profil | Code (autoritativ) |
|--------|-----------|--------------------|
| generisch (alle IHC) | `mii-pr-mtb-immunohistochemistry` | SNOMED `1234806008` „Observation using immunohistochemistry" + Ziel via `component:gene-studied` |
| HER2-IHC | `mii-pr-mtb-immunohistochemistry-her2` | LOINC `18474-7` „HER2 Ag [Presence] in Tissue by Immune stain" |
| PD-L1-IHC | `mii-pr-mtb-immunohistochemistry-pdl1` | Scores: NCIt `C184941` (TPS), `C176582` (CPS), `C199175` (ICS), LOINC `83053-9` (TC) |
| MMR (dMMR/pMMR) | `mii-pr-mtb-immunohistochemistry-mmr` | LOINC pro Protein: MLH1 `81691-8`, MSH2 `81692-6`, MSH6 `81693-4`, PMS2 `81694-2` |

Für Marker ohne spezifisches Profil (p16, p53, panTRK, ROS1-IHC …) das
Basis-Profil `mii-pr-mtb-immunohistochemistry` mit generischem SNOMED-Code plus
`component:gene-studied` verwenden.

> **Hinweis (Architektur & Reifegrad):** Das MTB-Modul integriert genetische Befunde
> **oberhalb** von Onkologie und MolGen — es deklariert selbst `kerndatensatz.onkologie`
> und `kerndatensatz.molgen` als Dependencies. Onkologie kann MTB daher **nicht** als
> Dependency aufnehmen (Zirkelbezug); die MTB-Referenzen hier sind **dokumentarisch**
> (empfohlener Zielort), nicht technisch aufgelöst. Die beteiligten Module befinden
> sich in **Draft/STU/Trial-Use** — diese Zuordnung ist eine Orientierungshilfe und
> kann sich mit der Reifung von MolGen/MTB noch ändern.

### Fallback (oBDS-Direktmapping)

Ist MolGen an einem Standort **nicht** implementierbar, gilt weiterhin das
Direktmapping der oBDS-Felder gemäß der
[Genetische-Variante-Observation](Genetische-Variante-Observation.page.md):
`Observation.note` (Variante Name) und `Observation.interpretation` (Ausprägung).
