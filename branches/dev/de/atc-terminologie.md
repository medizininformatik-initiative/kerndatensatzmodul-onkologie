# ATC: Jahresversionen und Überleitungen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**CodeSystems**](code-systems.md)
* **ATC: Jahresversionen und Überleitungen**

## ATC: Jahresversionen und Überleitungen

### Übersicht

Die MII stellt **kuratierte, onkologierelevante Terminologien** für systemische Therapien bereit:

* **Therapieprotokolle**: 96 oBDS-basierte Standardprotokolle ([CodeSystem](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.md))
* **ATC-Substanzen**: Haupt-ValueSet + 9 jahresspezifische ValueSets (2018–2026) + 6 Überleitungs-ConceptMaps
* **UNII-Substanzen**: Für Wirkstoffe ohne ATC-Code ([ValueSet](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.md))

**Wichtig**: Die ValueSets enthalten nur onkologisch relevante Substanzen, nicht die vollständige ATC-Klassifikation.

-------

### Therapieprotokolle

> Name, Status, Version und Anzahl der Codes sind auf der Artefaktseite [`mii-cs-onko-systemische-therapie-protokolle`](CodeSystem-mii-cs-onko-systemische-therapie-protokolle.md) dargestellt.

**Beispiele häufiger Protokolle**: FOLFOX, R-CHOP, AC, BEACOPP, ICE

Neue Protokolle bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einreichen.

-------

### ATC: WHO-Fassung vs. amtliche deutsche Fassung (ATC-DE)

Die ATC-Klassifikation wird international vom **WHO Collaborating Centre for Drug Statistics Methodology** (Oslo) jährlich herausgegeben. Für Deutschland gibt das **BfArM** jährlich die **amtliche deutsche Fassung** (ATC-DE, mit definierten Tagesdosen/DDD) heraus — sie kann in einzelnen Codes und DDD-Festlegungen von der WHO-Fassung abweichen. **Dieses Modul verwendet ausschließlich die deutsche Fassung** mit der System-URL `http://fhir.de/CodeSystem/bfarm/atc`; die WHO-Fassung (`http://www.whocc.no/atc`) wird nicht verwendet.

#### Jahres-CodeSysteme und Validierung

Auf dem MII-Terminologieserver liegt die ATC-DE — wie ICD-10-GM, OPS und ICD-O — als **getrennte CodeSystem-Ressource je Jahrgang** unter der gemeinsamen System-URL (z. B. existiert `L01XC18` Pembrolizumab in der Ressource `|2021`, aber nicht mehr in `|2026`). Daraus folgen dieselben Regeln wie bei ICD-O (siehe [ICD-O-Terminologie](icd-o-terminologie.md)):

1. **Die jahresspezifischen ValueSets pinnen ihre Codes auf den Jahrgang**(`…atc|2018#…`) — historische Codes validieren damit gegen die CodeSystem-Ressource, in der sie existieren.
1. **Instanzen SOLLEN `coding.version`**(das ATC-Jahr)**angeben**, damit Validierung und Auswertung den Jahrgang kennen.

#### Kuratiertes Subset — nicht die vollständige ATC

Anders als bei ICD-O (dort ist die gesamte Klassifikation onkologisch relevant und die ValueSets umfassen die komplette Achse) sind die ATC-Jahres-ValueSets **kuratierte onkologische Subsets** (~320–440 Substanzen je Jahrgang) auf Basis der oBDS-Substanzliste. Daraus folgt ein anderer Pflegevertrag: Jeder Jahrgang erfordert neben dem Versions-Pin eine **inhaltliche Kuratierung** (neue Onkologika-Zulassungen, Reklassifikationen). Kuratierungslücken sind die typische Fehlerquelle — so fehlten die L01XC-Antikörper zeitweise in den Jahrgängen 2018–2021 (GitHub #308). Fehlende Substanzen bitte als [GitHub Issue](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) melden; die systematische Nachführung neuer Zulassungen ist als Monitoring-Prozess geplant (GitHub #282–#284).

-------

### ATC-Substanzen

#### Haupt-ValueSet (Aktuelle Codes)

> Name, Status, Version und Expansion des Haupt-ValueSets sind auf der Artefaktseite [`mii-vs-onko-systemische-therapie-substanzen`](ValueSet-mii-vs-onko-systemische-therapie-substanzen.md) dargestellt.

#### Jahresspezifische ValueSets

Für die Validierung historischer Daten stehen jahresspezifische ValueSets zur Verfügung:

| | |
| :--- | :--- |
| 2026 | [mii-vs-onko-systemische-therapie-substanzen-2026](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2026.md) |
| 2025 | [mii-vs-onko-systemische-therapie-substanzen-2025](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2025.md) |
| 2024 | [mii-vs-onko-systemische-therapie-substanzen-2024](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2024.md) |
| 2023 | [mii-vs-onko-systemische-therapie-substanzen-2023](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2023.md) |
| 2022 | [mii-vs-onko-systemische-therapie-substanzen-2022](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2022.md) |
| 2021 | [mii-vs-onko-systemische-therapie-substanzen-2021](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2021.md) |
| 2020 | [mii-vs-onko-systemische-therapie-substanzen-2020](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2020.md) |
| 2019 | [mii-vs-onko-systemische-therapie-substanzen-2019](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2019.md) |
| 2018 | [mii-vs-onko-systemische-therapie-substanzen-2018](ValueSet-mii-vs-onko-systemische-therapie-substanzen-2018.md) |

#### Überleitungen (ATC-Transitions-ConceptMaps)

Die deutsche ATC-Klassifikation wird jährlich aktualisiert; Code-Umzüge zwischen den Jahrgängen dokumentieren die **Transitions-ConceptMaps** — das Werkzeug für ETL-Strecken und die Migration historischer Medikationsdaten:

| | | |
| :--- | :--- | :--- |
| 2020 → 2021 | [`mii-cm-onko-atc-transitions-2021`](ConceptMap-mii-cm-onko-atc-transitions-2021.md) | Kinase-Inhibitoren L01XE → L01E (z. B. Quizartinib`L01XE52`→`L01EX11`, Abemaciclib`L01XE50`→`L01EF03`) |
| 2021 → 2022 | [`mii-cm-onko-atc-transitions-2022`](ConceptMap-mii-cm-onko-atc-transitions-2022.md) | **Größte Reklassifikation der Onkologie**: 20 monoklonale Antikörper L01XC → L01F* (Trastuzumab, Rituximab, Pembrolizumab, Nivolumab …) |
| 2022 → 2023 | [`mii-cm-onko-atc-transitions-2023`](ConceptMap-mii-cm-onko-atc-transitions-2023.md) | Folgeanpassungen |
| 2023 → 2024 | [`mii-cm-onko-atc-transitions-2024`](ConceptMap-mii-cm-onko-atc-transitions-2024.md) | Folgeanpassungen |
| 2024 → 2025 | [`mii-cm-onko-atc-transitions-2025`](ConceptMap-mii-cm-onko-atc-transitions-2025.md) | Folgeanpassungen |
| 2025 → 2026 | [`mii-cm-onko-atc-transitions-2026`](ConceptMap-mii-cm-onko-atc-transitions-2026.md) | Folgeanpassungen |

**Kodierungsempfehlung**: Verwenden Sie den ATC-Code, der zum Therapiezeitpunkt gültig war, und geben Sie `coding.version` an. Bei Unsicherheit kann alternativ der UNII-Code verwendet werden.

**Beispiel — Imatinib über einen ATC-Versionswechsel hinweg:** [mii-exa-onko-medikation-imatinib-atc-version-transition](MedicationStatement-mii-exa-onko-medikation-imatinib-atc-version-transition.md)

#### Post-hoc Annotation von Freitext

DIZ **dürfen** historische Freitext-Medikationsdaten nachträglich auf ATC-Codes mappen, wenn:

1. **Provenance dokumentiert**wird (nachträgliche Kodierung kennzeichnen)
1. **Aktuelle ATC-Codes**verwendet werden (nicht historische)
1. **Originaltext erhalten**bleibt in`medicationCodeableConcept.text`

-------

### UNII-Substanzen

> Name, Status, Version und Expansion des UNII-ValueSets sind auf der Artefaktseite [`mii-vs-onko-systemische-therapie-substanzen-unii`](ValueSet-mii-vs-onko-systemische-therapie-substanzen-unii.md) dargestellt.

**Beispiel — Substanz nur mit UNII-Code (Iberdomid):** [mii-exa-onko-medikation-iberdomide-unii](MedicationStatement-mii-exa-onko-medikation-iberdomide-unii.md)

#### Substanzen ohne verfügbare Codes

Die folgenden oBDS-Einträge haben weder ATC- noch UNII-Codes:

* **EmboCept, Embozene, Hepasphere**: Embolisations-Mikrosphären
* **GcMAF**: Gc protein-derived macrophage activating factor
* **G-CSF**: Granulocyte colony-stimulating factor (generische Bezeichnung)
* **Studienmedikament**: Generische Platzhalter-Bezeichnung

→ Verwenden Sie `Coding.text` mit Freitext.

**Neu verfügbar:** **Dinatriumfolinat** ist nun als **LEUCOVORIN SODIUM** (UNII: 4MXU9LJS4Q) im UNII ValueSet und als **Natriumfolinat** (ATC: V03AF06) in den ATC ValueSets verfügbar.

-------

### Terminologie-Binding in Profilen

**Procedure (Protokoll)**:

```
* usedCode from MII_VS_Onko_Systemische_Therapie_Protokolle (extensible)

```

**MedicationStatement (Substanz)**:

```
* medicationCodeableConcept from MII_VS_Onko_Systemische_Therapie_Substanzen (extensible)

```

