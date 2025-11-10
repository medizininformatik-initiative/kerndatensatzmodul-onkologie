---
parent:
topic: AllgemeinerLeistungszustandObservation
---

## {{page-title}}

### Kontext

**Status: TRIAL USE in Version 2026**

Diese Seite dokumentiert experimentelle, Quantity-basierte Profile für die Erfassung des allgemeinen Leistungszustandes sowie die zugehörigen ObservationDefinitions. Diese Profile werden parallel zu den Standard-CodeableConcept-Profilen in Version 2026 angeboten, um Implementierungserfahrungen zu sammeln.

### Motivation für Quantity-basierte Modellierung

Die Quantity-basierten Profile bieten mehrere Vorteile gegenüber der CodeableConcept-Modellierung:

**Technische Vorteile:**
- **Vergleichsoperatoren**: Unterstützung von Queries wie `Observation?value-quantity=gt2` (alle Patienten mit ECOG > 2)
- **Berechnungen**: Mittelwert, Median, Trendanalysen über Zeitverläufe
- **Natürliche Skala**: ECOG als Integer 0-4, Karnofsky als Prozent 0-100% ohne Unit-Ambiguität
- **Reference Ranges**: Strukturierte klinische Interpretation mit Äquivalenzmappings

**Ausrichtung an Standards:**
- Entspricht den FHIR Score-Modellierungsrichtlinien der Basisprofile DE
- Beide Datentypen (CodeableConcept und Quantity) sind in den ObservationDefinitions als `permittedDataType` erlaubt

### Feedback-Prozess

Basierend auf Implementierungserfahrungen während v2026 wird entschieden:
- Wird das Profil in v2027+ zum Standard?
- Bleibt es als parallele Alternative bestehen?
- Sind Anpassungen erforderlich?

Implementierer werden gebeten, Feedback zu teilen bezüglich:
- Implementierungsaufwand
- Nutzen der Vergleichsoperatoren in der Praxis
- Erfahrungen mit Reference Ranges
- Interoperabilität mit bestehenden Systemen

---

## ECOG Performance Status (Quantity) - Trial Use

### Profil

**URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity`

**Status**: Experimental (Trial Use v2026)

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity'
select
    Name: name, Status: status, Version: version, Experimental: experimental, Canonical: url, Basis: baseDefinition
```

### Beschreibung

Dieses Profil beschreibt den allgemeinen Leistungszustand eines Patienten nach ECOG als Quantity (Integer 0-4) statt als CodeableConcept.

**Datentyp**: `valueQuantity` mit UCUM Unit `{score}` und Wert 0-4

**Vorteile**:
- Direkte numerische Vergleiche: `WHERE valueQuantity.value >= 2`
- Trendanalysen: Verschlechterung/Verbesserung über Zeit quantifizierbar
- Reference Ranges mit Karnofsky-Äquivalenten für klinische Interpretation

**ECOG-Karnofsky Mapping** (gemäß oBDS 12.1):
- ECOG 0 = Karnofsky 90-100%: Normale Aktivität ohne Einschränkung
- ECOG 1 = Karnofsky 70-80%: Symptome, aber gehfähig; leichte Arbeit möglich
- ECOG 2 = Karnofsky 50-60%: Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht
- ECOG 3 = Karnofsky 30-40%: Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden
- ECOG 4 = Karnofsky 10-20%: Vollständig pflegebedürftig, keine Selbstversorgung möglich

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity}}</tab>
</tabs>

---

### Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity'
    for differential.element
    where mapping.identity='oBDS'
    select
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

### Beispiele

**Einzelmessung: ECOG 2**

{{json:Example-ECOG-Quantity-2}}

**Verlaufsbeobachtung: Verschlechterung von ECOG 1 auf ECOG 3**

Dieses Beispiel demonstriert, wie Quantity-Werte direkte Vergleiche ermöglichen:

{{json:Example-ECOG-Comparison-Set}}

---

## Karnofsky Performance Status (Quantity) - Trial Use

### Profil

**URL**: `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity`

**Status**: Experimental (Trial Use v2026)

@```
from
    StructureDefinition
where
    url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity'
select
    Name: name, Status: status, Version: version, Experimental: experimental, Canonical: url, Basis: baseDefinition
```

### Beschreibung

Dieses Profil beschreibt den allgemeinen Leistungszustand eines Patienten nach Karnofsky als Quantity (Prozent 0-100%) statt als CodeableConcept.

**Datentyp**: `valueQuantity` mit UCUM Unit `%` und Werten 0, 10, 20, ..., 100

**Vorteile**:
- Direkte numerische Vergleiche: `WHERE valueQuantity.value < 60`
- Trendanalysen: Prozentwert-Änderungen über Zeit quantifizierbar
- Reference Ranges mit ECOG-Äquivalenten für klinische Interpretation

**Karnofsky-ECOG Mapping** (gemäß oBDS 12.1):
- Karnofsky 90-100% = ECOG 0: Normale Aktivität ohne Einschränkung
- Karnofsky 70-80% = ECOG 1: Symptome, aber gehfähig; leichte Arbeit möglich
- Karnofsky 50-60% = ECOG 2: Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht
- Karnofsky 30-40% = ECOG 3: Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden
- Karnofsky 10-20% = ECOG 4: Vollständig pflegebedürftig, keine Selbstversorgung möglich
- Karnofsky 0% = ECOG 5: Tod

### Inhalt

<tabs>
  <tab title="Darstellung">{{tree:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity, buttons}}</tab>
  <tab title="Beschreibung">
        @```
        from
	        StructureDefinition
        where
	        url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity'
        select
	        Beschreibung: description
        with
            no header
        ```
        @```
        from
            StructureDefinition
        where
            url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity'
        for
            differential.element
            where
                mustSupport = true
            select Feldname: id, Kurzbeschreibung: short, Hinweise: comment
        ```
  </tab>
  <tab title="XML">{{xml:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity}}</tab>
  <tab title="JSON">{{json:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity}}</tab>
  <tab title="Link">{{link:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity}}</tab>
</tabs>

---

### Mapping [Einheitlicher onkologischer Basisdatensatz (oBDS)](https://basisdatensatz.de/basisdatensatz) zu FHIR

@```
from StructureDefinition
where url = 'https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity'
    for differential.element
    where mapping.identity='oBDS'
    select
        oBDS: mapping.map,
        Definition: mapping.comment,
        FHIR: path
```

---

### Beispiele

**Einzelmessung: Karnofsky 80%**

{{json:Example-Karnofsky-Quantity-80}}

**Verlaufsbeobachtung: Verschlechterung von 90% auf 60%**

Dieses Beispiel demonstriert, wie Quantity-Werte direkte Vergleiche ermöglichen:

{{json:Example-Karnofsky-Comparison-Set}}

---

## ObservationDefinitions

### Überblick

Die ObservationDefinitions definieren die kanonischen Spezifikationen für ECOG und Karnofsky Performance Status Beobachtungen. Sie ermöglichen die Validierung von Observations gegen eine zentrale Definition und stellen sicher, dass sowohl CodeableConcept- als auch Quantity-basierte Profile semantisch konsistent sind.

**Schlüsselfunktionen**:
- Definition erlaubter Datentypen (`permittedDataType`: CodeableConcept UND Quantity)
- Spezifikation gültiger CodeSysteme und ValueSets
- Definition quantitativer Details (Units, Bereiche)
- Bereitstellung von Referenzbereichen mit klinischer Interpretation
- Ermöglichung der Validierung von Observations gegen kanonische Spezifikation

### ObservationDefinition: ECOG Performance Status

**Canonical URL**: `http://example.org/fhir/ObservationDefinition/ObsDef-ECOG-Performance-Status`

Diese ObservationDefinition validiert beide ECOG-Profile:
- `mii-pr-onko-allgemeiner-leistungszustand-ecog` (CodeableConcept)
- `mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity` (Quantity)

**Unterstützte Datentypen**:
- `CodeableConcept`: Codes 0-4 aus dem ECOG ValueSet
- `Quantity`: Integer 0-4 mit Unit `{score}` (UCUM)

**Kodierung**:
- SNOMED CT: 423740007 "Eastern Cooperative Oncology Group performance status (observable entity)"
- LOINC: 89262-0 "ECOG Performance Status score"

**Qualifizierte Intervalle mit Karnofsky-Äquivalenten**:

Die ObservationDefinition enthält `qualifiedInterval` Einträge, die jeden ECOG-Wert mit seinem Karnofsky-Äquivalent verbinden:

<tabs>
  <tab title="Darstellung">{{tree:ObsDef-ECOG-Performance-Status, buttons}}</tab>
  <tab title="JSON">{{json:ObsDef-ECOG-Performance-Status}}</tab>
  <tab title="XML">{{xml:ObsDef-ECOG-Performance-Status}}</tab>
</tabs>

---

### ObservationDefinition: Karnofsky Performance Status

**Canonical URL**: `http://example.org/fhir/ObservationDefinition/ObsDef-Karnofsky-Performance-Status`

Diese ObservationDefinition validiert beide Karnofsky-Profile:
- `mii-pr-onko-allgemeiner-leistungszustand-karnofsky` (CodeableConcept)
- `mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity` (Quantity)

**Unterstützte Datentypen**:
- `CodeableConcept`: Codes 0%-100% aus dem Karnofsky ValueSet
- `Quantity`: 0-100 in Schritten von 10 mit Unit `%` (UCUM)

**Kodierung**:
- SNOMED CT: 761869008 "Karnofsky Performance Status score (observable entity)"
- LOINC: 89243-0 "Karnofsky Performance Status score"

**Qualifizierte Intervalle mit ECOG-Äquivalenten**:

Die ObservationDefinition enthält `qualifiedInterval` Einträge, die Karnofsky-Bereiche mit ihren ECOG-Äquivalenten verbinden:

<tabs>
  <tab title="Darstellung">{{tree:ObsDef-Karnofsky-Performance-Status, buttons}}</tab>
  <tab title="JSON">{{json:ObsDef-Karnofsky-Performance-Status}}</tab>
  <tab title="XML">{{xml:ObsDef-Karnofsky-Performance-Status}}</tab>
</tabs>

---

## Suchparameter

Folgende Suchparameter sind für die Quantity-basierten Profile relevant:

1. **`_id`** - MUSS unterstützt werden:
   ```
   GET [base]/Observation?_id=1234
   ```

2. **`_profile`** - MUSS unterstützt werden:
   ```
   GET [base]/Observation?_profile=https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity
   ```

3. **`code`** - MUSS unterstützt werden:
   ```
   GET [base]/Observation?code=http://snomed.info/sct|423740007
   ```

4. **`subject`** - MUSS unterstützt werden:
   ```
   GET [base]/Observation?subject=Patient/example
   ```

5. **`value-quantity`** - MUSS unterstützt werden (besonderer Vorteil der Quantity-Profile):
   ```
   GET [base]/Observation?value-quantity=2
   GET [base]/Observation?value-quantity=gt2
   GET [base]/Observation?value-quantity=le1
   GET [base]/Observation?code=http://snomed.info/sct|423740007&value-quantity=ge3
   ```

6. **`combo-value-quantity`** - SOLLTE unterstützt werden:
   ```
   GET [base]/Observation?combo-value-quantity=gt2
   ```

---

## Vergleich: CodeableConcept vs. Quantity

| Aspekt | CodeableConcept | Quantity (Trial Use) |
|--------|----------------|----------------------|
| **Datentyp** | `valueCodeableConcept` | `valueQuantity` |
| **ECOG Werte** | Codes aus ValueSet | Integer 0-4 mit Unit `{score}` |
| **Karnofsky Werte** | Codes aus ValueSet | 0-100 mit Unit `%` |
| **Vergleiche** | Nur Gleichheit | `>`, `<`, `>=`, `<=`, `=` |
| **Berechnungen** | Nicht möglich | Mittelwert, Median, Trends |
| **Queries** | `value-concept=...` | `value-quantity=gt2` |
| **Interpretation** | Über Display-Text | Über Reference Ranges |
| **Status** | Standard (active) | Trial Use (experimental) |
| **ObsDef** | permittedDataType | permittedDataType |

---

## Implementierungshinweise

### Wahl zwischen CodeableConcept und Quantity

**CodeableConcept wählen, wenn**:
- Kompatibilität mit bestehenden Systemen prioritär ist
- Nur Gleichheitsvergleiche benötigt werden
- Codes explizit bevorzugt werden

**Quantity wählen, wenn**:
- Numerische Analysen und Trends wichtig sind
- Vergleichsoperatoren in Queries benötigt werden
- Reference Ranges für klinische Interpretation gewünscht sind
- Ausrichtung an FHIR Score-Modellierungsrichtlinien angestrebt wird

### Validierung

Beide Profile validieren gegen die gleichen ObservationDefinitions:
- `ObsDef-ECOG-Performance-Status`
- `ObsDef-Karnofsky-Performance-Status`

Diese definieren beide Datentypen als `permittedDataType`, wodurch Flexibilität bei semantischer Konsistenz gewährleistet wird.

### Konversion zwischen Profilen

Bei Bedarf können Observations zwischen CodeableConcept und Quantity konvertiert werden:

**ECOG**:
- Code "0" ↔ Quantity 0 {score}
- Code "1" ↔ Quantity 1 {score}
- Code "2" ↔ Quantity 2 {score}
- Code "3" ↔ Quantity 3 {score}
- Code "4" ↔ Quantity 4 {score}

**Karnofsky**:
- Code "0" ↔ Quantity 0 %
- Code "10" ↔ Quantity 10 %
- Code "20" ↔ Quantity 20 %
- ... (in Schritten von 10)
- Code "100" ↔ Quantity 100 %

---

## Feedback

Implementierer werden gebeten, Feedback während der Trial Use Phase zu teilen:

**Was hat gut funktioniert?**
- Waren die Vergleichsoperatoren nützlich?
- Haben Reference Ranges die klinische Interpretation verbessert?
- War die Implementierung unkompliziert?

**Was könnte verbessert werden?**
- Gab es Interoperabilitätsprobleme?
- Waren Constraints zu strikt oder zu locker?
- Fehlen wichtige Features?

**Entscheidung für v2027+**:
Basierend auf dem Feedback wird entschieden, ob die Quantity-Profile:
1. Zum neuen Standard werden
2. Als parallele Alternative bestehen bleiben
3. Angepasst werden müssen
4. Eingestellt werden sollten

---
