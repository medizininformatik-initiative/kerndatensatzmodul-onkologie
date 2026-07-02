### Übersicht

Die MII stellt **kuratierte, onkologierelevante Terminologien** für systemische Therapien bereit:

- **Therapieprotokolle**: 96 oBDS-basierte Standardprotokolle ([CodeSystem](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle))
- **ATC-Substanzen**: Haupt-ValueSet + 8 jahresspezifische ValueSets (2018-2025)
- **UNII-Substanzen**: Für Wirkstoffe ohne ATC-Code ([ValueSet](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii))

**Wichtig**: Die ValueSets enthalten nur onkologisch relevante Substanzen, nicht die vollständige ATC-Klassifikation.

---

### Therapieprotokolle

**Beispiele häufiger Protokolle**: FOLFOX, R-CHOP, AC, BEACOPP, ICE

Neue Protokolle bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einreichen.

---

### ATC-Substanzen

#### Haupt-ValueSet (Aktuelle Codes)

#### Jahresspezifische ValueSets

Für die Validierung historischer Daten stehen jahresspezifische ValueSets zur Verfügung:

| Jahr | ValueSet | Canonical URL |
|------|----------|---------------|
| 2025 | mii-vs-onko-systemische-therapie-substanzen-2025 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2025) |
| 2024 | mii-vs-onko-systemische-therapie-substanzen-2024 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024) |
| 2023 | mii-vs-onko-systemische-therapie-substanzen-2023 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2023) |
| 2022 | mii-vs-onko-systemische-therapie-substanzen-2022 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2022) |
| 2021 | mii-vs-onko-systemische-therapie-substanzen-2021 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2021) |
| 2020 | mii-vs-onko-systemische-therapie-substanzen-2020 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2020) |
| 2019 | mii-vs-onko-systemische-therapie-substanzen-2019 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2019) |
| 2018 | mii-vs-onko-systemische-therapie-substanzen-2018 | [Link](https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2018) |

#### ATC-Code Transitionen

Die deutsche ATC-Klassifikation wird jährlich aktualisiert. **Beispiel Quizartinib** (FLT3-Inhibitor):

- **Bis 31.12.2020**: `L01XE52`
- **Ab 01.01.2021**: `L01EX11`

**Kodierungsempfehlung**: Verwenden Sie den ATC-Code, der zum Therapiezeitpunkt gültig war. Bei Unsicherheit kann alternativ der UNII-Code verwendet werden.

Weitere Beispiele: Abemaciclib (L01XE50 → L01EF03), Acalabrutinib (L01XE51 → L01EL02).

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
