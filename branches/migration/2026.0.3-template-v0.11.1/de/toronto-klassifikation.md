# Toronto-Klassifikation (pädiatrische Onkologie) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Anleitung**](guidance.md)
* **Toronto-Klassifikation (pädiatrische Onkologie)**

## Toronto-Klassifikation (pädiatrische Onkologie)

### Kontext und Zweck

Die **TNM-Klassifikation ist für die meisten Kindertumoren nicht anwendbar**: Krebserkrankungen im Kindes- und Jugendalter sind selten und heterogen, und sie werden überwiegend nach entitätsspezifischen Staging-Systemen eingestuft. Für dieselbe Erkrankung existieren dabei mehrere konkurrierende Systeme, deren Verwendung sich zwischen Ländern und Registern unterscheidet — internationale Vergleiche von Stadienverteilung, Überleben und Versorgungsqualität sind dadurch nur eingeschränkt möglich.

Die **Toronto Paediatric Cancer Stage Guidelines** (kurz: Toronto-Guidelines) schließen diese Lücke. Sie wurden auf einem Konsensustreffen im **Oktober 2014 in Toronto** von 26 internationalen Expertinnen und Experten aus 17 Ländern erarbeitet und 2016 als **Paediatric cancer stage in population-based cancer registries: the Toronto consensus principles and guidelines** publiziert (Gupta et al., Lancet Oncol 2016;17:e163–e172). Sie sind **von der UICC befürwortet und als Kapitel „Paediatric Tumours“ in die TNM-Klassifikation,

1. Auflage** übernommen worden.

Die Toronto-Guidelines sind damit **kein separates, konkurrierendes Klassifikationssystem**, sondern eine konsentierte Regel dafür, **welches** etablierte Staging-System ein Krebsregister je Entität erheben soll — und in welcher Detailtiefe.

### Tier-Struktur

Kern der Guidelines ist ein gestuftes Modell, das die unterschiedliche Ressourcenausstattung von Krebsregistern berücksichtigt. Für **18 wesentliche Krebserkrankungen des Kindesalters** werden Empfehlungen ausgesprochen:

| | | |
| :--- | :--- | :--- |
| **Tier 1** | Register mit begrenzten Ressourcen | grobe Einstufung ohne aufwendige Bildgebung |
| **Tier 2** | gut ausgestattete Register | das etablierte entitätsspezifische Staging-System |
| **Tier 3** | optional | zusätzliche prognostische Faktoren |

Die **Tier-1-Werte sind bewusst grob, aber nicht über alle Entitäten einheitlich**. Für Hepatoblastom und Rhabdomyosarkom etwa wird zwischen **Localised** (Tumor auf das Ursprungsorgan bzw. -areal einschließlich regionärer Lymphknoten begrenzt) und **Metastatic** (Fernmetastasen vorhanden) unterschieden; das Non-Hodgkin-Lymphom verwendet stattdessen **Limited** und **Advanced** (Befall von Knochenmark und/oder ZNS). Eine gemeinsame, entitätsübergreifende Werteliste existiert also nicht.

Auf **Tier 2** verweisen die Guidelines auf die jeweils etablierten Systeme:

| | |
| :--- | :--- |
| Hepatoblastom | PRETEXT |
| Osteosarkom, Ewing-Sarkom | wie Tier 1 |
| Rhabdomyosarkom | modifiziertes TNM zzgl. günstiger/ungünstiger Tumorlokalisation → Stadium I–IV |
| Weichteilsarkom (nicht Rhabdomyosarkom) | TNM |
| Wilms-Tumor | zwei Systeme: nach primärer Resektion bzw. SIOP bei präoperativer Chemotherapie |
| Retinoblastom | pathologische Klassifikation nach Enukleation bzw. IRSS |
| Neuroblastom | INRGSS (International Neuroblastoma Risk Group Staging System) |
| Medulloblastom, Ependymom | eigenes Tier-2-System des TNM-Kapitels |
| Ovar | TNM/FIGO |
| Non-Hodgkin-Lymphom | St. Jude/Murphy |
| Hodgkin-Lymphom | Ann-Arbor bzw. Lugano (wie bei Erwachsenen) |

Deutschland ist als **well-resourced registry** einzuordnen; fachlich einschlägig ist damit **Tier 2**.

### Relevanz für das Modul Onkologie

Der **oBDS** ist auf die Erwachsenenonkologie zugeschnitten und sieht die TNM-Klassifikation als primäres Staging-Merkmal vor. Pädiatrische Staging-Systeme werden dort über das Feld **„Weitere Klassifikationen“** (oBDS-Kapitel 09) abgebildet, das Klassifikationsname und Einstufung als Freitext aufnimmt.

Die bevölkerungsbezogene Erfassung von Krebserkrankungen bei Kindern und Jugendlichen erfolgt in Deutschland zusätzlich über das **Deutsche Kinderkrebsregister (DKKR)** am IMBEI der Universitätsmedizin Mainz, das seit 1980 arbeitet und dem jährlich rund 2.200 Neuerkrankungen aus den Einrichtungen der **GPOH** gemeldet werden. Für Auswertungen, die an dieses Umfeld anschlussfähig sein sollen, ist die Toronto-Systematik der maßgebliche internationale Bezugsrahmen.

### Status im Modul (v2027)

Für die Version 2027 enthält das Modul **ausschließlich diese Erläuterungsseite**. Eine eigene Profil-Abbildung — etwa ein generisches Staging-Profil mit entitätsabhängigen Wertelisten und Invarianten — ist **bewusst zurückgestellt** (frühestens v2028). Voraussetzung dafür ist eine Abstimmung mit dem Kinderkrebsregister darüber, welche Staging-Systeme dort tatsächlich geführt werden und ob eine FHIR-Abbildung über den oBDS hinaus benötigt wird.

Bis dahin sind pädiatrische Stadien über das bestehende generische Profil **[`MII_PR_Onko_Weitere_Klassifikationen`](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)** (`mii-pr-onko-weitere-klassifikationen`) abzubilden:

| | |
| :--- | :--- |
| `code.text` | Name des Klassifikationssystems als Freitext (Pflicht), z. B. „INRGSS“ |
| `code.coding.code`/`method` | kodierte Angabe des Systems, sofern vorhanden (Binding`preferred`) |
| `valueCodeableConcept.text` | Stadium als Text, z. B. „L2“ |
| `effectiveDateTime` | Datum der Klassifikation |
| `focus` | Referenz auf die Diagnose Primärtumor |

Einzelne der oben genannten Tier-2-Systeme sind über das ValueSet [`mii-vs-onko-weitere-klassifikationen`](ValueSet-mii-vs-onko-weitere-klassifikationen.md) bereits kodiert adressierbar, u. a. INRGSS (SNOMED CT `1287643004`), das Stannard-System für das Retinoblastom (SNOMED CT `254366002`), **Modified Chang Staging System for Medulloblastoma** (NCIt `C198826`) und die **Lugano Classification Childhood Hodgkin Lymphoma** (NCIt `C141178`).

### Grenzen der aktuellen Abbildung

* **Kein eigenes CodeSystem** für die Toronto-Guidelines im Modul; die Tier-Stufe selbst ist in keinem Element abbildbar.
* **Keine verbindliche Terminologie-Bindung**: Sowohl `code.coding.code`/ `method` als auch `valueCodeableConcept.coding` binden `preferred`.
* **Keine Stadienwerte**: Das ValueSet [`mii-vs-onko-weitere-klassifikationen-auspraegungen`](ValueSet-mii-vs-onko-weitere-klassifikationen-auspraegungen.md) speist sich aus dem oBDS-CodeSystem und enthält keine pädiatrischen Stadien (kein PRETEXT, St. Jude/Murphy, IRSS, COG/SIOP). Diese sind als Text zu übermitteln.
* **Keine Invarianten**, die zulässige Stadienwerte an die Entität der referenzierten Diagnose koppeln — Plausibilität ist derzeit nicht maschinell prüfbar.

### Übermittlung an die Krebsregister (§65c-Melderportal)

Der Umsetzungsleitfaden der Plattform §65c führt die Toronto-Stadien als übermittelbare „Weitere Klassifikation" — als **TNM-Alternative für die meisten Diagnosen bei Kindern und Jugendlichen** (gültig für `C00.0–D48.9`). Die Tier-Stufe wird dabei direkt im Klassifikationsnamen transportiert (`tblMeldungDiagnoseWeitereKlass.strKlassifikation`):

| | | |
| :--- | :--- | :--- |
| **Toronto Stufe 2** | Tier 2 (etabliertes entitätsspezifisches System) | `0`,`1`,`1A`,`1B`,`2`,`2A`,`2B`,`3`,`3A`,`3B`,`4`,`4A`,`4B`,`A`,`CNS1`,`CNS2`,`CNS3`,`CNS-`,`CNS+`,`L`,`L1`,`L2`,`M`,`M0`,`M1`,`M2`,`M3`,`M4`,`MS`,`y1`,`y2`,`y3`,`X`,`ND` |
| **Toronto Stufe 1** | Tier 1 (grobes Staging) | `1A`,`1B`,`2A`,`2B`,`3A`,`3B`,`4A`,`4B`,`A`,`CNS-`,`CNS+`,`L`(begrenzt/lokalisiert),`LR`(lokoregionär),`M`,`MS`,`R`(regionär),`X`,`ND` |

Regeln aus dem Umsetzungsleitfaden:

* **Stufe 2 kann immer zu Stufe 1 zusammengefasst werden** — wer Tier 2 erhebt, kann Tier 1 daraus ableiten.
* Die **Zuordnung zur Tumorentität erfolgt morphologiebasiert**, nicht über die ICD-10-Diagnose; die inhaltliche Prüfung (welche Kürzel für welche Entität zulässig sind) liegt hinter dem Melderportal.
* Für die FHIR-Abbildung über `MII_PR_Onko_Weitere_Klassifikationen` heißt das: `code.text` = „Toronto Stufe 1" bzw. „Toronto Stufe 2", `valueCodeableConcept.text` = Stadienkürzel aus der jeweiligen Liste.

Quelle: [Umsetzungsleitfaden §65c — Weitere Klassifikationen](https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532511/Weitere+Klassifikationen) (die dort ebenfalls gepflegte Liste der Weiteren Klassifikationen, Stand 19.05.2025, führt Toronto im Seitentext, nicht in der CSV-Mindestliste).

### Ausblick

Die Guidelines von 2014 wurden durch ein internationales Expertengremium an der **IARC** überarbeitet; parallel entstanden die **Paediatric Non-Stage Prognosticator (NSP) Guidelines** für 18 Krebserkrankungen bei Kindern unter 15 Jahren (Lancet Oncol, 2020). Das **SEER-Programm** stützt seine pädiatrischen Stagingelemente auf die **Toronto-Guidelines Version 2** und stellt sie für Diagnosen ab dem **1. Januar 2025** bereit. Eine spätere Profil-Abbildung im Modul sollte auf Version 2 aufsetzen.

### Quellen

* Gupta S. et al.: **Paediatric cancer stage in population-based cancer registries: the Toronto consensus principles and guidelines.** Lancet Oncol 2016;17:e163–e172. DOI: 10.1016/S1470-2045(16)30186-3
* Aitken J. F. et al.: **Assessing the feasibility and validity of the Toronto Childhood Cancer Stage Guidelines: a population-based registry study.** Lancet Child Adolesc Health 2018;2(3):173–179. DOI: 10.1016/S2352-4642(18)30023-3
* UICC: **TNM Classification of Malignant Tumours**, 8. Auflage, Kapitel „Paediatric Tumours“
* ENCR-Schulungsunterlage **Coding stage: Toronto Paediatric Cancer Stage Guidelines** (L. Van Eycken, November 2019)
* IARC: **Development of Paediatric Non-Stage Prognosticator Guidelines … and updates to the 2014 Toronto Paediatric Cancer Stage Guidelines**
* [SEER Pediatric Staging](https://seer.cancer.gov/tools/staging/pediatric/)
* [Deutsches Kinderkrebsregister](https://www.kinderkrebsregister.de/)

