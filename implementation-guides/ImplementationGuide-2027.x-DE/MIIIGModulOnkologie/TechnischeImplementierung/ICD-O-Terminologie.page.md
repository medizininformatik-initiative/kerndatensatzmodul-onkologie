---
parent: 
topic: ICDOTerminologie
---
## ICD-O: Revisionen, Validierung und Überleitung

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

| Revision | Deutsche Ausgabe | Entspricht | oBDS `ICD_O_Version` | Status |
|---|---|---|---|---|
| Erstausgabe | 2003 | ICD-O-3 (2000) | `31` | Altdaten vor 2014 (seit 11/2026 auf dem MII-Terminologieserver, Ballot-Kommentar HDB-1005) |
| Erste Revision | 2014 | ICD-O-3.1 | `32` | in Krebsregister-Bestandsdaten weit verbreitet |
| Zweite Revision | 2019 | ICD-O-3.2 | `33` | aktuelle Ausgabe (Publikation abgeschlossen 12/2020) |

Die Zweite Revision unterscheidet sich substanziell (Morphologie-Achse:
**124 neue** und **56 gestrichene** Codes bei ~1.080 unveränderten; 55 davon
im Server-Diff, dazu `8153/1`, siehe Hinweis unten):

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
- **Code-Wiederverwendung**: `8832/3` bleibt als Code bestehen, bezeichnet aber
  in 3.2 nicht mehr das Dermatofibrosarkom o.n.A. (jetzt `8832/1`), sondern
  das fibrosarkomatöse Dermatofibrosarcoma protuberans. Ein reiner Mengen-Diff
  übersieht solche Fälle; die Transitions-ConceptMap führt ihn explizit.

### Überleitung von Bestandsdaten

Die ConceptMap **`mii-cm-onko-icdo3-transitions-2019`** dokumentiert alle 57
Umsteiger der Morphologie-Achse (56 Streichungen und die Wiederverwendung `8832/3`) mit Äquivalenzgrad (analog zu den
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
`2003`, `2014` und `2019`). Daraus folgen zwei Regeln:

1. **ValueSet-Filter müssen versions-gepinnt sein.** Ungepinnte
   `descendent-of`-Filter scheitern bei mehreren geladenen Revisionsständen an
   der Versions-Ambiguität — `$validate-code` mit `systemVersion=2014` lieferte
   dann fälschlich *not-in-valueset*, obwohl der Code in beiden Revisionen
   existiert. Alle ICD-O-ValueSets dieses Moduls pinnen daher ihre Includes.
2. **Instanzen MÜSSEN `coding.version` angeben** (`"2003"`, `"2014"` oder
   `"2019"`, der Versionsstring des Terminologieservers, nicht der
   oBDS-Schlüssel 31/32/33 und nicht das BfArM-`3.2`). Die Profile setzen
   `coding.version` an allen ICD-O-Slices (Topographie, Morphologie-Extension,
   Histologie) auf `1..1 MS`, analog zur ICD-10-GM-Version im Basismodul.
   Grund: Mit drei Editionen unter einer URL ist ein Code ohne Version nicht
   eindeutig (z. B. `8153/1` nur bis 2014), oBDS liefert die Version ohnehin als
   Pflichtfeld, und versionslose `$validate-code`-Aufrufe haben sich auf dem
   Terminologieserver als fragil erwiesen.

Das Binding der Profile zeigt auf die **Union-ValueSets** beider Revisionen:
Bestandsdaten der Ersten Revision (einschließlich der in 3.2 gestrichenen
Codes) und aktuelle Daten validieren damit gleichermaßen. Für revisionsscharfe
Prüfungen (Data Quality, ETL) stehen die Jahres-ValueSets bereit.

#### Bekannte Abweichung: `8153/1` Gastrinom o.n.A.

Die amtliche Aktualisierungsliste des BfArM (Stand 29.01.2021) streicht
`8153/1` in der Zweiten Revision (Aufgehen in `8153/3`). Die ClaML-Datei
desselben Stands, das daraus erzeugte FHIR-Package des BfArM
(`bfarm.terminologien.icdo3` 2019.0.0) und folglich auch die Version `2019`
auf dem MII-Terminologieserver führen den Code jedoch weiterhin als aktives
Konzept. Es ist die einzige Abweichung zwischen Aktualisierungsliste und
ClaML (Abgleich aller 180 Änderungen am 09.11.2026). Die Transitions-ConceptMap
folgt der Aktualisierungsliste; eine Klärung beim BfArM ist angefragt. Bis
dahin validiert `8153/1` mit `coding.version = "2019"` auf dem
Terminologieserver ohne Beanstandung.

#### Das FHIR-Package des BfArM

Das BfArM veröffentlicht die Zweite Revision auch als FHIR-Package
`bfarm.terminologien.icdo3` (2019.0.0, Stand 30.07.2025). Es verwendet dieselbe
kanonische URL, aber die Version **`3.2`** statt `2019`. Das Basis-CodeSystem
enthält nur Codes und Hierarchie ohne Displays; die deutschen Bezeichnungen
liegen als Designations im Supplement
`https://terminologien.bfarm.de/fhir/CodeSystem/icdo-translation`. Die
mitgelieferten ValueSets filtern mit `descendent-of M` bzw. `T` und zusätzlich
`classKind = category`, schließen also die Blöcke aus. Wer dieses Package statt
des MII-Terminologieservers nutzt, muss `coding.version = "3.2"` auf `"2019"`
abbilden (Tabelle oben) und das Supplement mitladen, sonst fehlen die Displays.

### Technische Artefakte

| Artefakt | Inhalt | Zweck |
|---|---|---|
| `mii-vs-onko-icdo3-morphologie` | Morphologie, Union 2014 + 2019 | Profil-Binding (tolerant für Bestands- und Neudaten) |
| `mii-vs-onko-icdo3-topographie` | Topographie, Union 2014 + 2019 | Profil-Binding |
| `mii-vs-onko-icdo3-morphologie-2014` / `-2019` | Morphologie, revisionsscharf | DQ-Prüfung, ETL, Auswertung je Datenbestand |
| `mii-vs-onko-icdo3-topographie-2014` / `-2019` | Topographie, revisionsscharf | DQ-Prüfung, ETL |
| `mii-cm-onko-icdo3-transitions-2019` | 57 Morphologie-Umsteiger 3.1 → 3.2 | Migration von Bestandsdaten |

### ICD-O-4: neue Struktur und Änderungen gegenüber ICD-O-3.2

Die IARC hat die **ICD-O-4** Anfang 2026 vorgestellt (Znaor et al., *Cancer
Epidemiology*, online 22.01.2026) und die finalen Topographie- und
Morphologie-Tabellen im Juli 2026 über *WHO Classification of Tumours Online*
veröffentlicht. Die ICD-O-4 basiert auf der 5. Auflage der WHO Blue Books
(einschließlich der molekular definierten Entitäten) und ist mit der ICD-11
harmonisiert. Das Buch ist bei der WHO in Vorbereitung; eine **deutsche
Ausgabe des BfArM** sowie ein Umstellungsfahrplan der Krebsregister und des
oBDS stehen noch aus. Die folgende Beschreibung beruht auf der Auswertung der
englischen IARC-Tabellen (`ICD-O-4.xlsx`, `Morphology_annexes.xlsx`,
`Topography_annexes.xlsx`, Stand 16.07.2026); die Zahlen sind daraus abgeleitet
und keine offiziellen IARC-Angaben.

#### Morphologie: fünfstellige Codes

Der Morphologie-Code wird von `XXXX/B` auf **`XXXXY/B`** erweitert:

- Die ersten vier Stellen entsprechen dem bisherigen ICD-O-3-Code, die
  Dignitätsziffer `/B` bleibt unverändert (`/0`, `/1`, `/2`, `/3`, `/6`, `/9`).
- Die **fünfte Stelle `Y`** unterscheidet Entitäten, die in ICD-O-3 unter einem
  Code als *related terms* zusammengefasst waren. `Y = 0` ist der generische
  Nachfolger des ICD-O-3-Codes (`8140/3` → `81400/3`); `1`–`9` sind
  Subentitäten. Sind die Ziffern erschöpft, folgen **Buchstaben** (`A`–`K`,
  ohne `I`), z. B. `8140A/3`…`8140G/3`, `9680A/3`…`9680K/3`. Der Code ist damit
  alphanumerisch und nicht mehr rein numerisch.
- Umfang: rund **2.390 Codes** (ICD-O-3.2: 1.143) auf 842 Vierstellern; etwa die
  Hälfte der Codes hat eine fünfte Stelle ≠ 0. Am stärksten aufgefächert sind
  `8770` (Spitz-/Melanozytentumoren, 34 Codes), `8140` (Adenokarzinome, 24),
  `8720` (Melanome, 24), `9680` (DLBCL, 21), `9120` (Hämangiome/Angiosarkome,
  19), `9385` (diffuse Gliome, 16).
- Die Tabellenstruktur bleibt wie in ICD-O-3.2: Termebenen *Preferred*,
  *Synonym*, *Related*, Gruppenüberschriften (Ebene 1–3), Spalte *Code reference*
  mit Topographie-Einschränkung (z. B. `(C73.9)`), Markierung `[obs]` für
  veraltete Terme (455 Terme).

Änderungen der Morphologie-Achse laut IARC-Anhängen:

| Änderungstyp | Umfang | Beispiele |
|---|---|---|
| Neue Vierstellerkombinationen (Stamm + Dignität neu) | 109 Codes | `80040/1` Spindelzelltumor mit unsicherem malignem Potenzial, `80850/2` HPV-assoziiertes Plattenepithelkarzinom in situ |
| Neue Subcodes (fünfte Stelle ≠ 0 unter bestehendem Stamm) | 1.175 Codes | `80202/3` anaplastisches Schilddrüsenkarzinom, `88421/3` pulmonales myxoides Sarkom mit EWSR1::CREB1 |
| Gestrichene ICD-O-3.2-Codes | 29 Codes | 28 davon „Terms moved" in einen anderen Stamm, `8150/0` ersatzlos (kein benigner pankreatischer NET mehr) |
| Stammwechsel (Terme unter neuem Viersteller) | 19 → 17 Codes | `8042/3`, `8043/3`, `8044/3` → `80410/3` (kleinzellige Varianten zusammengelegt), `8081/2` Bowen → `80700/2`, `9440/3` diffuses Mittelliniengliom → `93850/3`, `9727/3` → `98350/3`, `9014`/`9015` Adenofibrome → `8441`/`8442`/`8472` |
| Dignitätswechsel | 48 Terme, 24 Codes | `0 → 3` (16): Hypophysenadenome `8271/0`, `8272/0`, `8280/0`, `8281/0`, `8300/0` werden PitNET `/3`; `1 → 3` (10): Apudom `8248/1`, Chondrosarkom Grad 1 `9222/1`, melanotisches Schwannom `9560/1` → `95401/3`; `3 → 1` (7): Keratoakanthom `8071/3` → `80710/1`, eosinophiles Granulom `9751/3` → `97510/1`; `0 → 1` (10): Pankreas-Mikroadenom `8150/0` → `81500/1`; `3 → 0`: Zylindrom `8200/3` → `82000/0`; `1 → 2`: `8480/1` → `84800/2` |
| Neue Terme | 1.848 Terme an 1.301 Codes | — |
| Geänderte Terme | 935 Terme | 540× US- → WHO-Schreibweise (*tumor* → *tumour*, *leukemia* → *leukaemia*), 130× WHO-Stil, 120× Ergänzung „NOS", 23× genomische Nomenklatur (Fusionen jetzt `BCR::ABL1` statt `BCR-ABL1`) |
| Gestrichene Terme | 23 Terme | mehrdeutige oder nicht mehr anerkannte Begriffe, z. B. *Bronchial adenoma, NOS*, *Diffuse astrocytoma, IDH-wildtype* |

**Überleitung ICD-O-3.2 → ICD-O-4.** Für 1.105 der 1.143 Codes der Zweiten
Revision ist der Nachfolger der Code mit angehängter `0` bei gleicher
Dignität. 38 Codes lassen sich nicht so überleiten: 27 wurden gestrichen oder
unter einen anderen Stamm verschoben (siehe Tabelle), 11 wurden **innerhalb
ihres Stamms umnummeriert**, weil die Stelle `0` an eine andere Entität ging
(`8121/1` → `81211/1`, `8163/2` → `81631/2`, `8261/2` → `82611/2`,
`8263/2` → `82632/2`, `8453/2` → `84531/2`, `8453/3` → `84531/3`,
`8631/0` → `86311/0`, `8631/3` → `86311/3`, `9538/3` → `95383/3`,
`9591/1` → `95911/1`, `8210/2` → `82111/2`). Dazu kommen die Dignitätswechsel,
bei denen der angehängte Code zwar existiert, aber eine andere Dignität trägt.
Ein naives Anhängen der `0` ist deshalb als ETL-Regel nicht ausreichend; die
Überleitung braucht eine ConceptMap nach dem Muster von
`mii-cm-onko-icdo3-transitions-2019`.

#### Topographie: Stammcodes unverändert, optionale vierte Stelle

Die dreistelligen Topographie-Codes mit einer Dezimalstelle (`C00.0`–`C80.9`,
337 Codes) bleiben erhalten. Neu sind:

- **Optionale vierstellige Codes** `CXX.YZ` (381 Codes) für ausgewählte
  Lokalisationen; `Z = 0` ist der Standard, 44 Codes haben `Z ≠ 0`:
  Zäkum/Ileozäkalklappe (`C18.01`, `C18.02`), Weichteile und periphere Nerven
  nach Rumpf/Extremität/Viszera (`C47.31`–`C47.53`, `C49.31`–`C49.52`), Urethra
  (`C68.02` Littré-Drüse, `C68.03` prostatische Urethra), Auge (`C69.4x`,
  `C69.5x`), Hirnstamm (`C71.70`), Schilddrüse/Ductus thyreoglossus
  (`C73.90`), `C76.01` *Head and neck neoplasm, primary site unknown*.
- **Neue Codes** durch Ausgliederung: `C06.3` kleine Speicheldrüse (aus `C06.9`),
  `C16.7` ösophagogastraler Übergang (aus `C16.0`), `C21.3` perianale Haut
  (aus `C44.5`), `C24.1` Sphinkter Oddi, `C24.2` distaler, `C24.3` perihilärer
  (Klatskin) und `C24.4` Ductus cysticus (alle aus `C24.0`), `C68.1`
  Skene-Drüse; `C71.0` übernimmt Suprasellärregion, Corpus callosum und
  Tapetum aus `C71.8`/`C71.9`.
- **Termänderungen**: WHO-Schreibweise (*caecum*, *oesophagus*, *coeliac*),
  `C80.9` heißt jetzt *Primary site unspecified*, daneben `C80.0`/`C80.00`
  *Primary site unknown, so stated*; `C72.4` erhält *Vestibulocochlear nerve*.
- Neue Darstellungsebenen *Related list*/*Bullet* für Aufzählungen
  („Skin of: cheek, chin, …").

#### Folgen für oBDS und dieses Modul

- **oBDS**: Das XSD (v3.0.5) erzwingt für `Morphologie_ICD_O/Code` das Muster
  `\d\d\d\d/\d` und kennt als `Version` nur `31`, `32`, `33`; fünfstellige,
  alphanumerische Codes sind damit nicht meldbar. Die Topographie
  (`C\d\d\.\d(\d)?`) lässt die optionale vierte Stelle bereits zu.
- **FHIR**: Die ICD-O-3-Artefakte dieses Moduls (Extension
  `mii-ex-onko-histology-morphology-behavior-icdo3`, ValueSets
  `mii-vs-onko-icdo3-*`, Canonical `http://terminology.hl7.org/CodeSystem/icd-o-3`)
  sind im Namen und im `system` an die dritte Edition gebunden. Für die
  ICD-O-4 wird ein eigenes CodeSystem (Canonical noch nicht festgelegt), eigene
  revisionsscharfe ValueSets sowie eine Transitions-ConceptMap `3.2 → 4` nach
  dem oben etablierten Muster benötigt; ein Union-ValueSet über Editionen hinweg
  ist wegen der abweichenden Code-Syntax nicht sinnvoll. Validierungs- und
  ETL-Regeln, die auf vier Ziffern plus Dignität prüfen, müssen auf das
  alphanumerische Muster `[0-9]{4}[0-9A-K]/[0-9]` erweitert werden.
- **Zeitplan**: offen. Die Aufnahme der ICD-O-4 in das oBDS ist wegen des
  geänderten Code-Musters nicht als Patch der 3.0.x-Linie möglich und wird
  voraussichtlich mit einer **oBDS-Version 4.0** erfolgen; ein Termin ist nicht
  bekannt. Bis zur deutschen Ausgabe und zur oBDS-Anpassung bleibt die ICD-O-3
  (Zweite Revision) verbindlich; dieses Modul nimmt keine ICD-O-4-Artefakte
  vorweg.
