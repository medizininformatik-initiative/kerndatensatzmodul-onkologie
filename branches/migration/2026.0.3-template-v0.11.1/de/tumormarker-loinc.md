# Tumormarker: kuratierte LOINC-Codes - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**CodeSystems**](code-systems.md)
* **Tumormarker: kuratierte LOINC-Codes**

## Tumormarker: kuratierte LOINC-Codes

### Kontext und Zweck

Nach der ENCR-Recommendation **Basis of Diagnosis** (Oktober 2022) kann eine Krebsdiagnose auch ohne Histologie über **spezifische Tumormarker** in Kombination mit klinischer Untersuchung gestellt werden (**Basis of Diagnosis 4** — entspricht der oBDS-Diagnosesicherung `4` „spezifische Tumormarker"). Table 4 der Recommendation benennt die dafür akzeptierten Serum-/Plasma- und Urin-Marker samt zugehöriger Entitäten.

Diese Seite dokumentiert die **kuratierte LOINC-Codeliste** zu dieser Tabelle. Sie dient als Referenz für Implementierer, die Tumormarker-Laborwerte (über das KDS-Modul **Labor**) mit onkologischen Diagnosen verknüpfen wollen. Ein verbindliches ValueSet ist **bewusst noch nicht** Teil des Pakets — es folgt, sobald das fachliche Review der Kernliste abgeschlossen und der Binding-Ort entschieden ist (eigenes Labor-Profil vs. Verweis auf KDS-Labor).

### Kuratierungsprinzip

Je Marker wird der **methodenunspezifische** LOINC-Code der üblichen Matrix gewählt (Serum/Plasma, bei Katecholamin-Metaboliten 24h-Urin). Damit bleibt die Liste stabil gegenüber Methoden-, Einheiten- und Gerätevarianten; spezifischere Codes lassen sich bei Bedarf über die LOINC-SNOMED-Ontologie ergänzen (siehe unten).

Jeder Code wurde einzeln gegen LOINC verifiziert (MII-Terminologieserver und tx.fhir.org). Das ist nicht optional: Bei der Kuratierung erwiesen sich fünf naheliegende Kandidaten als **Fehltreffer** — z. B. wäre `3126-0` **Vasopressin** statt VIP (`3125-2`) und `15061-5` **Erythropoetin** statt Somatostatin (`2961-1`) gewesen.

### Kernliste: allgemeine LOINC-Codes

| | | | |
| :--- | :--- | :--- | :--- |
| CEA | `2039-6` | Carcinoembryonic Ag [Mass/volume] in Serum or Plasma | Kolorektales Karzinom |
| AFP | `1834-1` | Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma | HCC, Keimzelltumoren |
| CA 19-9 | `24108-3` | Cancer Ag 19-9 [Units/volume] in Serum or Plasma | Pankreas-/Gallengangskarzinom |
| CA-125 | `10334-1` | Cancer Ag 125 [Units/volume] in Serum or Plasma | Ovarialkarzinom |
| PSA | `2857-1` | Prostate specific Ag [Mass/volume] in Serum or Plasma | Prostatakarzinom |
| hCG | `19080-1` | Choriogonadotropin [Units/volume] in Serum or Plasma | Chorionkarzinom, Keimzelltumoren |
| β-hCG | `21198-7` | Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma | Chorionkarzinom, Keimzelltumoren |
| Chromogranin A | `9811-1` | Chromogranin A [Mass/volume] in Serum or Plasma | NET, Phäochromozytom |
| Insulin | `20448-7` | Insulin [Units/volume] in Serum or Plasma | Insulinom |
| Glukagon | `2338-2` | Glucagon [Mass/volume] in Serum or Plasma | Glukagonom |
| Gastrin | `2333-3` | Gastrin [Mass/volume] in Serum or Plasma | Gastrinom |
| VIP | `3125-2` | Vasoactive intestinal peptide [Mass/volume] in Serum or Plasma | VIPom |
| Somatostatin | `2961-1` | Somatostatin [Mass/volume] in Plasma | Somatostatinom |
| Serotonin | `18253-5` | Serotonin [Mass/time] in 24 hour Urine | NET (Serotonin-produzierend) |
| ACTH | `2141-0` | Corticotropin [Mass/volume] in Plasma | ACTH-produzierende Tumoren |
| Calcitonin | `1992-7` | Calcitonin [Mass/volume] in Serum or Plasma | Medulläres Schilddrüsenkarzinom |
| HVA (Urin) | `2436-4` | Homovanillate [Mass/time] in 24 hour Urine | Neuroblastom |
| VMA (Urin) | `3122-9` | Vanillylmandelate [Mass/time] in 24 hour Urine | Neuroblastom |
| Katecholamine (Urin) | `27055-3` | Catecholamines Free [Mass/time] in 24 hour Urine | Phäochromozytom |
| Prolaktin | `2842-3` | Prolactin [Mass/volume] in Serum or Plasma | Prolaktinom |
| GH/Somatotropin | `2963-7` | Somatotropin [Mass/volume] in Serum or Plasma | Hypophysentumoren |
| FSH | `15067-2` | Follitropin [Units/volume] in Serum or Plasma | Hypophysentumoren |
| LH | `10501-5` | Lutropin [Units/volume] in Serum or Plasma | Hypophysentumoren |
| TSH | `3016-3` | Thyrotropin [Units/volume] in Serum or Plasma | Hypophysentumoren |
| M-Protein | `33358-3` | Protein.monoclonal [Mass/volume] in Serum or Plasma by Electrophoresis | Multiples Myelom |
| IgG | `2465-3` | IgG [Mass/volume] in Serum or Plasma | Multiples Myelom |
| IgA | `2458-8` | IgA [Mass/volume] in Serum or Plasma | Multiples Myelom |
| IgM | `2472-9` | IgM [Mass/volume] in Serum or Plasma | M. Waldenström, Myelom |

Hinweis zu Serotonin: gewählt ist der 24h-Urin-Code (klinisch üblich ist häufig auch 5-HIES im Urin bzw. Serotonin im Serum) — die Matrix-Frage ist Teil des offenen fachlichen Reviews.

### ENCR Table 4: Marker → zulässige Morphologie

Die ENCR-Recommendation **Basis of Diagnosis** führt in **Table 4** die Entitäten auf, die bei fehlender pathologischer Sicherung anhand erhöhter Tumormarker (zusammen mit klinischen Untersuchungen) dokumentiert werden dürfen — jeweils mit der Morphologie, die dann zu vergeben ist. Das ist die fachliche Grundlage der oBDS-Diagnosesicherung `4` „spezifische Tumormarker". Alle ICD-O-Codes sind gegen den MII-Terminologieserver (ICD-O-3 Zweite Revision 2019) verifiziert.

| | | |
| :--- | :--- | :--- |
| Kolorektales Karzinom | CEA | `8000/3`Maligne Neoplasie |
| Hepatozelluläres Karzinom | AFP | `8170/3`Hepatozelluläres Karzinom o.n.A. |
| Pankreas-, Gallenblasen-/Gallenwegskarzinom | CA 19-9 | `8000/3`Maligne Neoplasie |
| Ovarialkarzinom | CA-125 | `8000/3`Maligne Neoplasie |
| Prostatakarzinom | PSA | `8000/3`Maligne Neoplasie |
| Chorionkarzinom der Plazenta | hCG | `9100/3`Chorionkarzinom o.n.A. |
| Keimzelltumor | hCG oder AFP (± hCG) | `9064/3`Germinom bzw.`9065/3`Nichtseminomatöser Keimzelltumor |
| Neuroendokriner Tumor | Chromogranin A | `8240/3`Neuroendokriner Tumor o.n.A. |
| Funktionelle neuroendokrine Tumoren | Insulin, Glukagon, Gastrin, VIP, Somatostatin, Serotonin, ACTH | `8151/3`–`8158/3`(z. B.`8151/3`Insulinom o.n.A.,`8158/3`ACTH-produzierender Tumor) |
| Medulläres Schilddrüsenkarzinom | Calcitonin | `8345/3`Medulläres Schilddrüsenkarzinom |
| Neuroblastom | Katecholaminabbauprodukte (HVA, VMA) | `9500/3`Neuroblastom o.n.A. |
| Prolaktinom | Prolaktin | `8271/0`Laktotrophes Adenom |
| Andere funktionelle Hypophysentumoren | STH, FSH, LH, ACTH, TSH | `8272/0`Hypophysenadenom o.n.A. |
| Phäochromozytom | Katecholamine, Chromogranin A | `8700/3`Phäochromozytom o.n.A. |
| Multiples Myelom | M-Protein (IgG, IgM, IgA) > 30 g/L | `9732/3`Plasmazellmyelom |
| Morbus Waldenström | IgM | `9761/3`Waldenström-Makroglobulinämie |

**Vollständigkeit:** Jeder in Table 4 genannte Marker ist in der Kernliste oben mit einem LOINC-Code hinterlegt; die Kernliste geht darüber hinaus (u. a. β-hCG separat).

Quelle: Van Eycken L. et al., **2022 revised European recommendations for the coding of the basis of diagnosis of cancer cases in population-based cancer registries**, Front Oncol 2023;13:1250549 — [doi:10.3389/fonc.2023.1250549](https://doi.org/10.3389/fonc.2023.1250549).

### Erweiterung über die LOINC-SNOMED-Ontologie

Die **LOINC-SNOMED-Ontologie** (LOINC-Konzepte als SNOMED-CT-Observables in einem eigenen Extension-Modul) erlaubt es, je Marker vom allgemeinen „Measurement of …"-Observable per Subsumption zu allen spezifischeren Varianten (Methode, Einheit, Probenmaterial) zu navigieren — und damit implizite, hierarchisch definierte ValueSets zu bilden, statt Einzelcodes zu pflegen.

Für **23 der 28 Marker** ist der Observable-Anker verifiziert (z. B. CEA → **Measurement of carcinoembryonic antigen in serum or plasma** `723431010000109` mit Mass-/Substance-/Arbitrary-concentration-Kindern). Für die verbleibenden fünf (Gastrin, Calcitonin, M-Protein, IgA, IgM) existiert kein Grouper-Konzept — siehe die Ergänzung unten.

Der vollständige Kurationsreport mit allen Ankern und Kind-Konzepten liegt im Repository unter `input/examples-source/biomarker/biomarker-snomed-report.md`.

**Ergänzung 2026-08-28.** Für sieben der zwölf zuvor offenen Marker ist der Anker jetzt ermittelt und verifiziert (Snowstorm-Branch `MAIN/SNOMEDCT-LOINC`, ECL über `<<363787002 |Observable entity|`):

| | | | | |
| :--- | :--- | :--- | :--- | :--- |
| beta-hCG | `21198-7` | `727021010000108` | Measurement of human chorionic gonadotropin beta subunit in serum or plasma | 4 |
| HVA | `2436-4` | `732491010000101` | Measurement of homovanillic acid in urine | 10 |
| VMA | `3122-9` | `731001010000107` | Measurement of vanillylmandelic acid in urine | 11 |
| ACTH | `2141-0` | `721541010000101` | Measurement of adrenocorticotropic hormone in plasma | 200 |
| FSH | `15067-2` | `726901010000101` | Measurement of pituitary follicle stimulating hormone in serum or plasma | 100 |
| LH | `10501-5` | `724461010000100` | Measurement of pituitary luteinizing hormone in serum or plasma | 96 |
| TSH | `3016-3` | `727041010000103` | Measurement of thyrotrophin in serum or plasma | 79 |

Für **Gastrin, Calcitonin, M-Protein, IgA und IgM** existiert in der LOINC-SNOMED-Ontologie **kein „Measurement of …"-Grouper** für die gesuchte Serum-/Plasma-Bestimmung — dort sind ausschließlich die konkreten Messgrößen (Mass-/Substance-concentration …) modelliert. Für diese Marker bleibt die Navigation über den allgemeinen LOINC-Code die einzige Option; ein Grouper wäre bei SNOMED International anzuregen.

**Methodischer Hinweis:** Die LOINC-SNOMED-Konzepte liegen in einer eigenen Snowstorm-Branch (`MAIN/SNOMEDCT-LOINC`) und sind über die FHIR-Standard-Expansion der International Edition **nicht** auffindbar. Eine naive Textsuche führt zudem zuverlässig in die Irre — sie liefert für ACTH den **Corticotropin releasing factor** und für TSH den **Thyrotropin-Rezeptor-Antikörper**. Die hier gelisteten Anker sind einzeln über FSN und Kindkonzepte gegengeprüft.

### Offene Punkte

* Fachliches Review der Kernliste (Codes und Entitäts-Zuordnungen).
* LOINC-SNOMED-Anker: 23 von 28 verifiziert; für 5 Marker existiert kein Grouper (Anregung an SNOMED International wäre nötig).
* Entscheidung zum Binding-Ort **entschieden (2026-08-28):** Laborwerte laufen über das KDS-Modul Laborbefund. Das Modul stellt dafür das Profil [`MII_PR_Onko_Tumormarker`](StructureDefinition-mii-pr-onko-tumormarker.md) bereit — eine Ableitung von `MII_PR_Labor_Laboruntersuchung`, die `Observation.code` extensible an die Union-Liste [`mii-vs-onko-tumormarker-loinc`](ValueSet-mii-vs-onko-tumormarker-loinc.md) bindet und den Bezug zur onkologischen Diagnose (`focus`) ergänzt.
* Serotonin: Matrix (24h-Urin vs. Serum) und ggf. Ergänzung 5-HIES.

