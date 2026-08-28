<!-- markdownlint-disable MD041 -->
<!-- Quelle: MIIIGModulOnkologie/TechnischeImplementierung/FHIR-Profile/Genetische-Variante/MolGen-Abbildung-Variantentypen.page.md.
     Englische Fassung: input/pagecontent/molgen-variantentypen.md — beide
     Sprachfassungen synchron halten. -->

### Zweck

Das oBDS erfasst genetische Varianten grobkörnig (Freitext-Bezeichnung + eine
Ausprägung aus `M`/`W`/`P`/`N`/`U` oder ersatzweise Freitext, oBDS 23.1/23.2 —
siehe Abschnitt *Ausprägungen der Genetik-Meldung*). Für eine
**strukturierte, interoperable** Abbildung **SOLLTE** —
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

### Übermittlungsnotation der §65c-Markerliste

Die Markerliste der §65c-Plattform ([Genetische Marker](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/122945632/Genetische+Marker),
Stand 2023-11-27, ~300 Gen×Varianten-Kombinationen) gibt für die Übermittlung eine
feste **Zwei-Positionen-Notation** vor, die in `Bezeichnung` mit `||` kombiniert wird:

- **1. Position — Gen:** HGNC-Symbol aus der Gen-Liste der Markerliste. Die Liste
  führt daneben auch Pseudo-Einträge, die keine Gene sind (IHC-Marker wie
  `ALK_IHC`/`HER2_IHC` sowie zytogenetische Angaben wie `del(17)(p13)`) — für die
  FHIR-Abbildung gelten die Sonderfälle der Tabelle oben (IHC → MTB-Profil,
  Zytogenetik → `cytogenetic-location`).
- **2. Position — Weitere Information**, je nach Art der Angabe:

| Art (Liste) | Notation 2. Position | Beispiel |
|---|---|---|
| `<Formel>` | Formel **„beispielsweise nach HGVSp oder HGVSc"** (amtlicher Wortlaut) | `p.Val600Glu`, `c.1799T>A` |
| spez. Mutation | Codonebene: Gensymbol-Codon | `BRAF-V600` |
| Exon | `Exon <Nr>` | `Exon 19` |
| Fusion | `GEN1::GEN2`, optional mit nachgestellter Zusatzmutation | `EML4::ALK`, `BCR::ABL1 T315I` |
| Amplifikation / Translokation / Rearrangement / Promoter Hypermethylierung | Schlüsselwort wörtlich | `Amplifikation` |
| IHC | leer (Score über `Sonstige_Auspraegung`) | — |
| `<Freitext>` | freie Angabe für nicht gelistete Veränderungen | — |
| Unbekannt | leer | — |

Für die strukturierte FHIR-Sicht ist diese Notation der **Parser-Vertrag**: Aus
1. Position wird `gene-studied` (HGNC), aus der 2. Position je nach Art die
passende Komponente der Markertyp-Tabelle oben (HGVS-Formeln nach `*-hgvs`,
`GEN1::GEN2` nach `gene-fusion` — eine nachgestellte Zusatzmutation wie `T315I`
wird als **eigene** HGVS-Komponente derselben Variante geführt).

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

### Ausprägungen der Genetik-Meldung (§65c / oBDS `Menge_Genetik_Typ`)

Der Markertyp (Tabelle oben) ist nur die eine Achse der Meldung. Die zweite Achse
ist die **Ausprägung** des Befundes. Der oBDS-Typ `Menge_Genetik_Typ` sieht je
`Genetische_Variante` genau **eine** Angabe vor — entweder einen Code aus der
Auswahlliste `Auspraegung` **oder** das Freitextfeld `Sonstige_Auspraegung`
(`xs:choice`). Die Auswahlliste umfasst fünf Codes; die Modul-Terminologie ergänzt
`S` als Code für den Freitextfall.

| oBDS-Code | Bedeutung (oBDS-XSD) | SNOMED CT (Modul-ConceptMap) | Empfehlung MolGen/FHIR |
|-----------|----------------------|------------------------------|------------------------|
| `M` | Mutation/positiv | `55446002` *Genetic mutation (finding)* | `Observation.value[x]` = LOINC `LA9633-4` „Present" (zu `Observation.code` = LOINC `69548-6`) |
| `W` | Wildtyp/nicht mutiert/negativ | `412730000` *Genetic finding not detected (finding)* | Negativbefund; ergänzend `component:coding-change-type` (LOINC `48019-4`) = SO `SO:0002073` *no_sequence_alteration* (LOINC-Äquivalent `LA9658-1` „Wild type") |
| `P` | Polymorphismus | `50334000` *Genetic polymorphism (finding)* | Variante vorhanden (`value[x]` = `LA9633-4`); die Bewertung als Polymorphismus gehört nicht in die Variante, sondern in eine eigene Befund-Interpretation (Genomics-Reporting-Profil *diagnostic-implication*) |
| `N` | nicht bestimmbar | `1156316003` *Cannot be determined (qualifier value)* | kein `value[x]`; stattdessen `Observation.dataAbsentReason`, z. B. `not-performed` |
| `U` | unbekannt | `261665006` *Unknown (qualifier value)* | kein `value[x]`; `Observation.dataAbsentReason` = `unknown` |
| `S` | Sonstiges (Modul-Ergänzung für `Sonstige_Auspraegung`) | `74964007` *Other (qualifier value)* | Freitext nach `Observation.note`; strukturiert nur, soweit der Inhalt einem der obigen Fälle entspricht |

Die SNOMED-Spalte gibt die im Modul gepflegte ConceptMap
[`mii-cm-onko-genetische-variante-auspraegung-sct`](ConceptMap-mii-cm-onko-genetische-variante-auspraegung-sct.html)
wieder und ist damit
für das Modul verbindlich. Die MolGen-Spalte ist — wie die Markertyp-Tabelle oben —
eine **nicht normative** Umsetzungsempfehlung.

**Verhältnis zur Beispiel-Markerliste.** In der zugrunde liegenden Markerliste ist
bei nahezu allen Zeilen nur `M`/`W` vorgesehen; `P`, `N` und `U` kommen dort nicht
vor, und die immunhistochemischen Zeilen (Scores `0`/`+`/`++`/`+++` bzw.
`IC`/`TPS`/`CPS`) verweisen bereits auf den Freitextweg `Sonstige_Auspraegung`. Die
Liste ist damit eine **Teilmenge** der oBDS-Systematik, kein abweichender
Wertebereich.

**Quellen.** Maßgeblich für die Ausprägungsliste ist der Typ `Menge_Genetik_Typ`
des oBDS-XML-Schemas (`oBDS_v3.0.4.xsd` / `oBDS_v3.0.5.xsd`, dort unverändert),
fachlich beschrieben in der §65c-Plattformdokumentation:
[Menge_Genetik_Typ](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532120/Menge_Genetik_Typ).
Gen und Variante werden in `Bezeichnung` derzeit mit dem Trennzeichen `||`
kombiniert übermittelt — dieser zusammengesetzte Freitext ist der Ausgangspunkt der
Markertyp-Zuordnung in der Tabelle oben.

### Fallback (oBDS-Direktmapping)

Ist MolGen an einem Standort **nicht** implementierbar, gilt weiterhin das
Direktmapping der oBDS-Felder gemäß dem Profil
[Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.html):
`Observation.note` (Variante Name) und `Observation.interpretation` (Ausprägung).

### Stand der Umsetzung

Diese Seite ist die **fachliche Dokumentationsgrundlage** für die Abbildung der
Variantentypen; sie beschreibt Empfehlungen, keine profilierten Constraints. Die
**strukturierte Codierung der Variantentypen** — Gen-Identität über HGNC,
Markertyp-Codes über LOINC sowie kategoriale Varianten über GA4GH Cat-VRS, gestuft
nach Verfügbarkeit (*tiered*) — ist als eigenes Arbeitspaket **in Umsetzung** und
für eine kommende Modulversion vorgesehen. Der jeweils aktuelle Stand sowie die
daraus entstehenden Profile und ValueSets werden in den Release Notes des Moduls
geführt.
