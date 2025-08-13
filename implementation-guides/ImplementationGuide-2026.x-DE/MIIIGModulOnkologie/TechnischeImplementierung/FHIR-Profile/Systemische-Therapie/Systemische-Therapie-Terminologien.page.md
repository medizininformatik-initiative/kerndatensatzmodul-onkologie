---
parent: 
topic: SystemischeTherapieTerminologien
---

## {{page-title}}

Diese Seite dokumentiert die Terminologien für systemische Therapien in der Onkologie, einschließlich Therapieprotokolle und ATC-Substanzcodes.

### Therapieprotokolle

Das MII CodeSystem für systemische Therapieprotokolle umfasst 96 standardisierte Protokolle basierend auf dem oBDS Umsetzungsleitfaden:

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

#### Protokoll-Beispiele

Auswahl häufig verwendeter onkologischer Therapieprotokolle:

- **FOLFOX**: Folinsäure, Fluorouracil, Oxaliplatin
- **R-CHOP**: Rituximab, Cyclophosphamid, Doxorubicin, Vincristin, Prednisolon  
- **AC**: Cyclophosphamid, Doxorubicin
- **BEACOPP**: Bleomycin, Etoposid, Doxorubicin, Cyclophosphamid, Vincristin, Procarbazin, Prednisolon
- **ICE**: Ifosfamid, Carboplatin, Etoposid

#### Neue Protokolle beantragen

Nicht enthaltene Protokolle können trotzdem dokumentiert werden - hier ist jedoch eine Harmonisierung über die Standorte entscheidend. Neue Protokolle sind daher bitte unter [GitHub Issues](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues) einzureichen.

### ATC-Substanzen

#### Aktuelle ATC-Codes (Haupt-ValueSet)

Validierte ATC-Codes für systemische Therapiesubstanzen:

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

#### ATC-Code Transitionen

Die deutsche ATC-Klassifikation wird jährlich aktualisiert, wobei Substanzen neue Codes erhalten können. Dies stellt besondere Herausforderungen für die retrospektive Dokumentation dar.

##### Beispiel: Quizartinib

Quizartinib ist ein FLT3-Inhibitor zur Behandlung der akuten myeloischen Leukämie (AML), der einen ATC-Code-Wechsel durchlaufen hat:

- **Bis 31.12.2020**: ATC-Code `L01XE52` (Proteinkinase-Inhibitoren)
- **Ab 01.01.2021**: ATC-Code `L01EX11` (Andere antineoplastische Mittel - Proteinkinase-Inhibitoren)

**Kodierungsempfehlung:**

Für die korrekte Kodierung ist der Therapiezeitpunkt entscheidend:

1. **Patient behandelt vor 2021**: 
   ```
   * medicationCodeableConcept.coding[atcClassDe] = $atc-de#L01XE52 "Quizartinib"
   ```

2. **Patient behandelt ab 2021**:
   ```
   * medicationCodeableConcept.coding[atcClassDe] = $atc-de#L01EX11 "Quizartinib"
   ```

**Implementierungshinweis:** Bei Unsicherheit über den korrekten historischen ATC-Code kann alternativ der UNII-Code verwendet werden: `$UNII#H4GXR80IZE "QUIZARTINIB"`

##### Weitere Beispiele für ATC-Transitionen

Neben Quizartinib haben weitere onkologische Substanzen ATC-Code-Änderungen erfahren:

- **Abemaciclib**: L01XE50 → L01EF03 (ab 2021)
- **Acalabrutinib**: L01XE51 → L01EL02 (ab 2021)
- **Adalimumab**: L04AA17 → L04AB04 (ab 2008)

Diese Beispiele unterstreichen die Wichtigkeit der zeitgerechten Kodierung. Die jahresspezifischen ValueSets unterstützen Implementierer bei der korrekten historischen Validierung.

#### Post-hoc Mapping von Freitext zu ATC-Codes

Datenintegrationszentren (DIZ) stehen häufig vor der Herausforderung, historische oBDS-Daten mit Freitexteinträgen für Medikamente zu verarbeiten. Für diese Fälle gilt folgende Empfehlung:

##### Erlaubte Post-Annotation

DIZ **dürfen** Freitext-Medikationsdaten nachträglich auf ATC-Codes mappen, wenn folgende Bedingungen erfüllt sind:

1. **Provenance-Dokumentation**: Die nachträgliche Kodierung muss klar als Post-Annotation gekennzeichnet werden
2. **Verwendung aktueller Codes**: Bei Post-Annotation sollten die **aktuellen** ATC-Codes verwendet werden (nicht die historischen)
3. **Transparenz**: Die Mapping-Logik und verwendeten Referenzen müssen dokumentiert werden

#### Beispiel für Post-Annotation mit Provenance

Das folgende Beispiel zeigt, wie Quizartinib mit dem aktuellen ATC-Code annotiert wird, obwohl die Therapie 2020 stattfand:

```
Instance: mii-exa-onko-medikation-quizartinib-postannotated
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation

// Status der Medikation
* status = #completed
* subject = Reference(Patient/example)

// Kodierung mit aktuellem ATC-Code (2021+)
* medicationCodeableConcept.coding[atcClassDe] = $atc-de#L01EX11 "Quizartinib"

// Originaltext wird erhalten für Transparenz
* medicationCodeableConcept.text = "Quizartinib (Original: Freitext aus oBDS)"

// Therapiezeitraum war 2020 (historisch)
* effectivePeriod.start = "2020-09-15"
* effectivePeriod.end = "2020-12-15"
```

**Hinweis**: Die Therapie fand 2020 statt (damals Code L01XE52), wird aber mit dem aktuellen Code L01EX11 annotiert.

#### Rationale für Post-hoc Annotation

Diese pragmatische Herangehensweise ermöglicht:

- **Bessere Datenqualität**: Strukturierte Codes statt Freitext für Analysen
- **Einheitliche Kodierung**: Konsistenz über verschiedene Standorte hinweg
- **Nachvollziehbarkeit**: Originaltext bleibt erhalten, Mapping ist transparent
- **Vermeidung von Informationsverlust**: Historische Daten werden nutzbar gemacht

**Wichtig:** Die originale Freitextinformation sollte im `medicationCodeableConcept.text` Element erhalten bleiben.

#### UNII-Codes für Substanzen ohne ATC

Für Substanzen ohne ATC-Codes steht ein separates UNII-basiertes ValueSet zur Verfügung:

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

**Besondere Hinweise zu UNII-Substanzen:**
- **OLAPTESED PEGOL**: In Krebsregisterdatenbanken oft nur als "Olaptesed" dokumentiert - beide Bezeichnungen referenzieren dieselbe Substanz (UNII: MTM792B442)
- **GEBASAXTUREV vs. Coxsackievirus A21**: GEBASAXTUREV (UNII: 4B57CWT710) ist die offizielle Substanzbezeichnung für das onkolytische Virus, das auch als "Coxsackievirus A21" bezeichnet wird. Beide Begriffe referenzieren dasselbe therapeutische Agens.
- **Daromun-Suchvarianten**: Bei der Suche nach "Daromun" werden verschiedene Substanzen gefunden:
  - **DARLEUKIN** (UNII: 2OQ3OPV2F8) - Interleukin-2-basierte Immuntherapie
  - **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV) - Bifunktionales Fusionsprotein
- **Fibromun**: Bei der Suche nach "Fibromun" wird **ONFEKAFUSP ALFA** (UNII: 6HXC0O6JMV) gefunden - beide Bezeichnungen referenzieren dasselbe bifunktionale Fusionsprotein für die Immuntherapie.
- **LONCASTUXIMAB TESIRINE vs. "Ioncastuzimab tesiren"**: Der oBDS-Eintrag "Ioncastuzimab tesiren" war ein Tippfehler für **LONCASTUXIMAB TESIRINE** (UNII: 7K5O7P6QIU). Das UNII-System enthält sowohl LONCASTUXIMAB (UNII: NYM5HO7I39) als auch LONCASTUXIMAB TESIRINE (UNII: 7K5O7P6QIU) als separate Einträge - letzteres ist wahrscheinlich das Antikörper-Drug-Konjugat, das im oBDS gemeint war.
- **NIDANILIMAB vs. "Nadunolimab"**: In der oBDS-Excel-Datei als "Nadunolimab" gelistet, aber die korrekte UNII-Bezeichnung ist **NIDANILIMAB** (UNII: ND296JF21I) - beide Namen referenzieren dieselbe Immuntherapie-Substanz.
- **HUMAN PARVOVIRUS B19 vs. "Parvovirus H1"**: **HUMAN PARVOVIRUS B19** (UNII: 94N635564T) ist im UNII-System verfügbar, aber es ist unklar, ob dies identisch mit dem oBDS-Eintrag "Parvovirus H1" ist. Beide sind onkolytische Viren, könnten aber unterschiedliche Stämme oder Varianten darstellen.
- **PACLITAXEL vs. "nab-Paclitaxel"**: **PACLITAXEL** (UNII: P88XT4IS4D) ist die Standard-UNII für Paclitaxel, aber der oBDS-Eintrag bezieht sich wahrscheinlich auf "nab-Paclitaxel" (nanopartikel-albumin-gebundenes Paclitaxel). Die spezielle nab-Formulierung könnte eine separate UNII haben.
- **CYTARABINE mit Liposomen**: **CYTARABINE** (UNII: 04079A1RDZ) ist die Standard-UNII für Cytarabin, aber der oBDS-Eintrag bezieht sich auf liposomales Cytarabin. Die liposomale Formulierung könnte eine separate UNII-Bezeichnung haben.
- **DEPATUXIZUMAB**: Die UNII W984C353CG bezieht sich auf den Antikörper allein - der "mafodotin"-Teil (Toxin) ist in der UNII-Bezeichnung nicht enthalten.

**Substanzen ohne verfügbare UNII-Codes:**
Die folgenden oBDS-Einträge konnten nicht im UNII-System gefunden werden:
- **Dinatriumfolinat**: Auch nicht unter "disodium" auffindbar
- **EmboCept**: Embolisations-Mikrosphären
- **Embozene**: Embolisations-Mikrosphären  
- **GcMAF**: Gc protein-derived macrophage activating factor
- **G-CSF**: Granulocyte colony-stimulating factor (generische Bezeichnung)
- **Hepasphere**: Embolisations-Mikrosphären
- **Studienmedikament**: Generische Platzhalter-Bezeichnung

Für diese Substanzen muss `Coding.text` mit Freitext verwendet werden, da weder ATC- noch UNII-Codes verfügbar sind.

#### Historische ATC-Codes

Für die Validierung historischer Daten stehen jahr-spezifische ValueSets zur Verfügung:

- `mii-vs-onko-systemische-therapie-substanzen-2024`
- `mii-vs-onko-systemische-therapie-substanzen-2023`
- `mii-vs-onko-systemische-therapie-substanzen-2022`
- ... (weitere Jahre)

Diese ermöglichen die korrekte Validierung von ATC-Codes basierend auf dem Dokumentationszeitpunkt.

### Terminologie-Binding in Profilen

#### SystemischeTherapie (Procedure)

```
* usedCode from MII_VS_Onko_Systemische_Therapie_Protokolle (extensible)
* usedCode ^short = "Verwendetes Therapieprotokoll"
* usedCode ^definition = "Das verwendete systemische Therapieprotokoll gemäß oBDS Umsetzungsleitfaden"
```

#### SystemischeTherapie (MedicationStatement)

```
* medicationCodeableConcept from MII_VS_Onko_Systemische_Therapie_Substanzen (extensible)
* medicationCodeableConcept ^short = "ATC-Code der Substanz"
* medicationCodeableConcept ^definition = "ATC-Code der verwendeten Substanz"
```

