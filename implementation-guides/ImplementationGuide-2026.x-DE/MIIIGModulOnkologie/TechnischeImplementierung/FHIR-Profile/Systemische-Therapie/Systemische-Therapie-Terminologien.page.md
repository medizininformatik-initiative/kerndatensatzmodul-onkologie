---
parent:
topic: SystemischeTherapieTerminologien
---

## {{page-title}}

### Übersicht

Die MII stellt **kuratierte, onkologierelevante Terminologien** für systemische Therapien bereit:

- **Therapieprotokolle**: 96 oBDS-basierte Standardprotokolle ([CodeSystem](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle))
- **ATC-Substanzen**: Haupt-ValueSet + 9 jahresspezifische ValueSets (2018–2026) + 6 Überleitungs-ConceptMaps
- **UNII-Substanzen**: Für Wirkstoffe ohne ATC-Code ([ValueSet](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii))

**Wichtig**: Die ValueSets enthalten nur onkologisch relevante Substanzen, nicht die vollständige ATC-Klassifikation.

---

### Therapieprotokolle

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle'
select
    Name: name,
    Status: status,
    Version: version,
    Anzahl_Codes: concept.count()
```

**Beispiele häufiger Protokolle**: FOLFOX, R-CHOP, AC, BEACOPP, ICE

Neue Protokolle bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einreichen.

---

### ATC: WHO-Fassung vs. amtliche deutsche Fassung (ATC-DE)

Die ATC-Klassifikation wird international vom **WHO Collaborating Centre for Drug
Statistics Methodology** (Oslo) jährlich herausgegeben. Für Deutschland gibt das
**BfArM** jährlich die **amtliche deutsche Fassung** (ATC-DE, mit definierten
Tagesdosen/DDD) heraus — sie kann in einzelnen Codes und DDD-Festlegungen von der
WHO-Fassung abweichen. **Dieses Modul verwendet ausschließlich die deutsche
Fassung** mit der System-URL `http://fhir.de/CodeSystem/bfarm/atc`; die
WHO-Fassung (`http://www.whocc.no/atc`) wird nicht verwendet.

#### Jahres-CodeSysteme und Validierung

Auf dem MII-Terminologieserver liegt die ATC-DE — wie ICD-10-GM, OPS und ICD-O —
als **getrennte CodeSystem-Ressource je Jahrgang** unter der gemeinsamen
System-URL (z. B. existiert `L01XC18` Pembrolizumab in der Ressource `|2021`,
aber nicht mehr in `|2026`). Daraus folgen dieselben Regeln wie bei ICD-O
(siehe {{pagelink:ICDOTerminologie}}):

1. **Die jahresspezifischen ValueSets pinnen ihre Codes auf den Jahrgang**
   (`…atc|2018#…`) — historische Codes validieren damit gegen die
   CodeSystem-Ressource, in der sie existieren.
2. **Instanzen SOLLEN `coding.version`** (das ATC-Jahr) **angeben**, damit
   Validierung und Auswertung den Jahrgang kennen.

---

### ATC-Substanzen

#### Haupt-ValueSet (Aktuelle Codes)

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen'
select
    Name: name,
    Status: status,
    Version: version,
    Expansion: expansion.total
```

#### Jahresspezifische ValueSets

Für die Validierung historischer Daten stehen jahresspezifische ValueSets zur Verfügung:

| Jahr | ValueSet | Canonical URL |
|------|----------|---------------|
| 2026 | mii-vs-onko-systemische-therapie-substanzen-2026 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2026) |
| 2025 | mii-vs-onko-systemische-therapie-substanzen-2025 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025) |
| 2024 | mii-vs-onko-systemische-therapie-substanzen-2024 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024) |
| 2023 | mii-vs-onko-systemische-therapie-substanzen-2023 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023) |
| 2022 | mii-vs-onko-systemische-therapie-substanzen-2022 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022) |
| 2021 | mii-vs-onko-systemische-therapie-substanzen-2021 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021) |
| 2020 | mii-vs-onko-systemische-therapie-substanzen-2020 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2020) |
| 2019 | mii-vs-onko-systemische-therapie-substanzen-2019 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2019) |
| 2018 | mii-vs-onko-systemische-therapie-substanzen-2018 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2018) |

#### Überleitungen (ATC-Transitions-ConceptMaps)

Die deutsche ATC-Klassifikation wird jährlich aktualisiert; Code-Umzüge zwischen
den Jahrgängen dokumentieren die **Transitions-ConceptMaps** — das Werkzeug für
ETL-Strecken und die Migration historischer Medikationsdaten:

| Übergang | ConceptMap | Schwerpunkt |
|---|---|---|
| 2020 → 2021 | `mii-cm-onko-atc-transitions-2021` | Kinase-Inhibitoren L01XE → L01E (z. B. Quizartinib `L01XE52` → `L01EX11`, Abemaciclib `L01XE50` → `L01EF03`) |
| 2021 → 2022 | `mii-cm-onko-atc-transitions-2022` | **Größte Reklassifikation der Onkologie**: 20 monoklonale Antikörper L01XC → L01F* (Trastuzumab, Rituximab, Pembrolizumab, Nivolumab …) |
| 2022 → 2023 | `mii-cm-onko-atc-transitions-2023` | Folgeanpassungen |
| 2023 → 2024 | `mii-cm-onko-atc-transitions-2024` | Folgeanpassungen |
| 2024 → 2025 | `mii-cm-onko-atc-transitions-2025` | Folgeanpassungen |
| 2025 → 2026 | `mii-cm-onko-atc-transitions-2026` | Folgeanpassungen |

**Kodierungsempfehlung**: Verwenden Sie den ATC-Code, der zum Therapiezeitpunkt
gültig war, und geben Sie `coding.version` an. Bei Unsicherheit kann alternativ
der UNII-Code verwendet werden.

**Beispiel — Imatinib über einen ATC-Versionswechsel hinweg:**

{{json:mii-exa-onko-medikation-imatinib-atc-version-transition}}

#### Post-hoc Annotation von Freitext

DIZ **dürfen** historische Freitext-Medikationsdaten nachträglich auf ATC-Codes mappen, wenn:

1. **Provenance dokumentiert** wird (nachträgliche Kodierung kennzeichnen)
2. **Aktuelle ATC-Codes** verwendet werden (nicht historische)
3. **Originaltext erhalten** bleibt in `medicationCodeableConcept.text`

<details>
<summary>Beispiel: Post-Annotation</summary>

```fsh
Instance: mii-exa-onko-medikation-quizartinib-postannotated
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation

* status = #completed
* subject = Reference(Patient/example)
* medicationCodeableConcept.coding[atcClassDe] = $atc-de#L01EX11 "Quizartinib"
* medicationCodeableConcept.text = "Quizartinib (Original: Freitext aus oBDS)"
* effectivePeriod.start = "2020-09-15"  // Therapie vor Code-Änderung
* effectivePeriod.end = "2020-12-15"
```

</details>

---

### UNII-Substanzen

@```
from
    ValueSet
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii'
select
    Name: name,
    Status: status,
    Version: version,
    Expansion: expansion.total
```

**Beispiel — Substanz nur mit UNII-Code (Iberdomid):**

{{json:mii-exa-onko-medikation-iberdomide-unii}}

#### Substanzen ohne verfügbare Codes

Die folgenden oBDS-Einträge haben weder ATC- noch UNII-Codes:

- **EmboCept, Embozene, Hepasphere**: Embolisations-Mikrosphären
- **GcMAF**: Gc protein-derived macrophage activating factor
- **G-CSF**: Granulocyte colony-stimulating factor (generische Bezeichnung)
- **Studienmedikament**: Generische Platzhalter-Bezeichnung

→ Verwenden Sie `Coding.text` mit Freitext.

**Neu verfügbar:** **Dinatriumfolinat** ist nun als **LEUCOVORIN SODIUM** (UNII: 4MXU9LJS4Q) im UNII ValueSet und als **Natriumfolinat** (ATC: V03AF06) in den ATC ValueSets verfügbar.

<details>
<summary>Besondere Hinweise zu UNII-Substanzen (Klicken zum Aufklappen)</summary>

- **OLAPTESED PEGOL** (UNII: MTM792B442): Oft nur als "Olaptesed" dokumentiert
- **GEBASAXTUREV** (UNII: 4B57CWT710): Auch bekannt als "Coxsackievirus A21"
- **Daromun**: Entspricht **DARLEUKIN** (UNII: 2OQ3OPV2F8) oder **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV)
- **Fibromun**: Entspricht **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV)
- **LONCASTUXIMAB TESIRINE** (UNII: 7K5O7P6QIU): oBDS-Tippfehler "Ioncastuzimab tesiren"
- **NIDANILIMAB** (UNII: ND296JF21I): In oBDS als "Nadunolimab" gelistet
- **HUMAN PARVOVIRUS B19** (UNII: 94N635564T): Möglicherweise nicht identisch mit "Parvovirus H1"
- **PACLITAXEL** (UNII: P88XT4IS4D): oBDS meint wahrscheinlich "nab-Paclitaxel" (separate UNII möglich)
- **CYTARABINE** (UNII: 04079A1RDZ): oBDS meint wahrscheinlich liposomale Formulierung
- **DEPATUXIZUMAB** (UNII: W984C353CG): Ohne "mafodotin"-Teil (Toxin)

</details>

---

### Terminologie-Binding in Profilen

**Procedure (Protokoll)**:
```fsh
* usedCode from MII_VS_Onko_Systemische_Therapie_Protokolle (extensible)
```

**MedicationStatement (Substanz)**:
```fsh
* medicationCodeableConcept from MII_VS_Onko_Systemische_Therapie_Substanzen (extensible)
```
