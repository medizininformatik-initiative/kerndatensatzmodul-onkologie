<!-- markdownlint-disable MD041 -->
<!-- Quelle: MIIIGModulOnkologie/TechnischeImplementierung/ICD-O-Terminologie.page.md.
     Englische Fassung: input/pagecontent/icd-o-terminologie.md — beide
     Sprachfassungen synchron halten. -->

### Überblick und Governance

Die *International Classification of Diseases for Oncology* (ICD-O) wird von der
IARC im Auftrag der WHO herausgegeben und beschreibt Neubildungen auf zwei Achsen:
**Topographie** (Lokalisation, `C…`-Codes) und **Morphologie** (Histologie und
Verhalten, `XXXX/B`-Codes mit Dignitätsziffer). Die deutschsprachige Ausgabe gibt
das **BfArM** im Auftrag des Bundesministeriums für Gesundheit heraus.

Im Modul Onkologie wird die Topographie an `Condition.bodySite` (Diagnose
Primärtumor) und die Morphologie über die Histologie-Profile bzw. die Extension
`mii-ex-onko-histology-morphology-behavior-icdo3` verwendet.

### Revisionsstände: Erste (2014) und Zweite Revision (2019)

Für die ICD-O-3 existieren zwei deutsche Revisionsstände, die in Bestandsdaten
nebeneinander vorkommen:

| Revision | Deutsche Ausgabe | Entspricht | Status |
|---|---|---|---|
| Erste Revision | 2014 | ICD-O-3.1 | in Krebsregister-Bestandsdaten weit verbreitet |
| Zweite Revision | 2019 | ICD-O-3.2 | aktuelle Ausgabe (Publikation abgeschlossen 12/2020) |

Die Zweite Revision unterscheidet sich substanziell (Morphologie-Achse:
**124 neue** und **56 gestrichene** Codes bei ~1.080 unveränderten; 55 davon serververifiziert, zusätzlich 8153/1 gemäß amtlicher Aktualisierungsliste vom 29.01.2021):

- **Neue Codes** betreffen v. a. molekular definierte Entitäten (z. B. `8023/3`
  NUT-Karzinom, `8085/3`/`8086/3` HPV-positives/-negatives Plattenepithelkarzinom).
- **Dignitäts-Neubewertungen**: Entitäten, die die WHO einheitlich als maligne
  einstuft, verloren ihre `/0`-/`/1`-Varianten — u. a. GIST (`8936/1` → `8936/3`),
  Phäochromozytom (`8700/0` → `8700/3`), Thymome Typ A–B3 (`/1` → `/3`) und die
  Paragangliome (`868x`/`869x`).
- **Entitäts-Zusammenlegungen**: z. B. Ewing-Sarkom `9260/3` → `9364/3`,
  Hämangioperizytom `9150/x` → solitärer fibröser Tumor (`8815/x`),
  kleinzelliges lymphozytisches Lymphom `9670/3` → CLL/SLL `9823/3`.
- **Entfallene Syndrom-Konzepte** ohne Nachfolger (Meningeomatose `9530/1`,
  Neurofibromatose `9540/1`): hier sind die Einzeltumoren zu codieren.

### Überleitung von Bestandsdaten

Die ConceptMap **`mii-cm-onko-icdo3-transitions-2019`** dokumentiert alle 55
Umsteiger der Morphologie-Achse mit Äquivalenzgrad (analog zu den
ATC-Transitions-ConceptMaps der Systemischen Therapie):

- `equivalent` — Dignitäts-Umstufungen und 1:1-Zusammenlegungen,
- `wider` — im breiteren Konzept aufgegangen (z. B. refraktäre Neutro-/Thrombozytopenie → MDS mit Single-Lineage-Dysplasie `9980/3`),
- `narrower` — unsichere `/1`-Konzepte mit mehreren dignitätsspezifischen
  Nachfolgern (die Dignität ist im Einzelfall anhand der Befundlage zuzuordnen),
- `unmatched` — entfallene Konzepte mit Codier-Hinweis im Kommentar.

Sie ist als Werkzeug für ETL-Strecken und die Migration von
Krebsregister-Bestandsdaten gedacht; die Überleitung ersetzt keine
fachliche Einzelfallprüfung.

### Validierung: Revisionen sind getrennte CodeSystem-Ressourcen

Auf dem MII-Terminologieserver liegt die ICD-O-3 — wie ICD-10-GM, OPS und ATC —
als **getrennte CodeSystem-Ressourcen je Revisionsstand** unter einer
kanonischen URL (`http://terminology.hl7.org/CodeSystem/icd-o-3`, Versionen
`2014` und `2019`). Daraus folgen zwei Regeln:

1. **ValueSet-Filter müssen versions-gepinnt sein.** Ungepinnte
   `descendent-of`-Filter scheitern bei mehreren geladenen Revisionsständen an
   der Versions-Ambiguität — `$validate-code` mit `systemVersion=2014` lieferte
   dann fälschlich *not-in-valueset*, obwohl der Code in beiden Revisionen
   existiert. Alle ICD-O-ValueSets dieses Moduls pinnen daher ihre Includes.
2. **Instanzen SOLLEN `coding.version` angeben** (`"2014"` bzw. `"2019"`),
   damit Validierung und Auswertung den Revisionsstand kennen.

Das Binding der Profile zeigt auf die **Union-ValueSets** beider Revisionen:
Bestandsdaten der Ersten Revision (einschließlich der in 3.2 gestrichenen
Codes) und aktuelle Daten validieren damit gleichermaßen. Für revisionsscharfe
Prüfungen (Data Quality, ETL) stehen die Jahres-ValueSets bereit.

### Technische Artefakte

| Artefakt | Inhalt | Zweck |
|---|---|---|
| [`mii-vs-onko-icdo3-morphologie`](ValueSet-mii-vs-onko-icdo3-morphologie.html) | Morphologie, Union 2014 + 2019 | Profil-Binding (tolerant für Bestands- und Neudaten) |
| [`mii-vs-onko-icdo3-topographie`](ValueSet-mii-vs-onko-icdo3-topographie.html) | Topographie, Union 2014 + 2019 | Profil-Binding |
| [`mii-vs-onko-icdo3-morphologie-2014`](ValueSet-mii-vs-onko-icdo3-morphologie-2014.html) / [`-2019`](ValueSet-mii-vs-onko-icdo3-morphologie-2019.html) | Morphologie, revisionsscharf | DQ-Prüfung, ETL, Auswertung je Datenbestand |
| [`mii-vs-onko-icdo3-topographie-2014`](ValueSet-mii-vs-onko-icdo3-topographie-2014.html) / [`-2019`](ValueSet-mii-vs-onko-icdo3-topographie-2019.html) | Topographie, revisionsscharf | DQ-Prüfung, ETL |
| [`mii-cm-onko-icdo3-transitions-2019`](ConceptMap-mii-cm-onko-icdo3-transitions-2019.html) | 56 Morphologie-Umsteiger 3.1 → 3.2 | Migration von Bestandsdaten |

### Ausblick: ICD-O-4

Die IARC hat die finalen Tabellen der **ICD-O-4** Anfang 2026 veröffentlicht
(WHO Classification of Tumours Online): neue Morphologie-Struktur mit
**fünfstelligen** Morphologie-Codes auf Basis der 5. Auflage der WHO Blue
Books, harmonisiert mit der ICD-11. Das Buch ist in Vorbereitung; eine deutsche
Ausgabe des BfArM sowie ein Umstellungsfahrplan der Krebsregister stehen noch
aus. Sobald eine deutsche ICD-O-4 publiziert ist, wird sie nach dem hier
etablierten Muster integriert: revisionsspezifisches ValueSet plus
Transitions-ConceptMap — wobei der Wechsel auf fünfstellige Codes ein
strukturell größerer Schritt wird als die bisherigen Revisionen.
