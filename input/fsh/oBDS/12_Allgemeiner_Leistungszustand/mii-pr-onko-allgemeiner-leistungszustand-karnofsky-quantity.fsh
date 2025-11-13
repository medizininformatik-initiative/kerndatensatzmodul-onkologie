// TRIAL USE PROFILE - Version 2026
// This profile is offered alongside the standard CodeableConcept profile to gather
// implementation experience with Quantity-based Karnofsky modeling.
//
// Advantages:
// - Supports comparisons (>, <, >=, <=) enabling queries like "all patients with Karnofsky < 60%"
// - Better for calculations, trending, and analytics
// - More aligned with FHIR score modeling guidelines (Basisprofile DE)
// - Reference ranges provide clinical interpretation (ECOG equivalents)
//
// Both this profile and the CodeableConcept variant validate against the same
// ObservationDefinition (see below), giving implementers flexibility while ensuring
// semantic consistency.

Profile: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky_Quantity
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand-karnofsky-quantity
Title: "MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky (Quantity - Trial Use v2026)"
Description: """
**Status: TRIAL USE in Version 2026**

Experimentelles Profil für die Version 2026: Beschreibung des allgemeinen Leistungszustandes
nach Karnofsky als Quantity mit Reference Ranges.

Dieses Profil wird parallel zum Standard-CodeableConcept-Profil (mii-pr-onko-allgemeiner-leistungszustand-karnofsky)
angeboten, um Implementierungserfahrungen zu sammeln. Feedback von Implementierern während der
v2026-Nutzung wird verwendet, um zu entscheiden, ob das Profil in v2027+ zum Standard wird
oder angepasst werden muss.

**Vorteile der Quantity-Modellierung:**
- Unterstützung von Vergleichsoperatoren (>, <, >=, <=) für Queries
- Bessere Analysemöglichkeiten und Trenddarstellung
- Ausrichtung an FHIR Score-Modellierungsrichtlinien der Basisprofile DE
- Reference Ranges mit ECOG-Äquivalenten für klinische Interpretation

**Validierung:**
Beide Profile (CodeableConcept und Quantity) validieren gegen die gleiche
ObservationDefinition (ObsDef-Karnofsky-Performance-Status), die beide
Datentypen als permittedDataType erlaubt.
"""
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = true
* ^version = "2026.0.0-trial"
* ^date = "2025-11-05"
* ^purpose = """
Sammeln von Implementierungserfahrungen mit Quantity-basierter Karnofsky-Modellierung
während v2026. Basierend auf Feedback wird entschieden, ob dieser Ansatz in zukünftigen
Versionen zum Standard wird, als Alternative bestehen bleibt, oder angepasst wird.
"""

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* effective[x] 1..1 MS
* effective[x] only dateTime

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..1 MS and
    loinc 0..* MS
* code.coding[snomed] = $SCT#761869008  //|Karnofsky Performance Status score (observable entity)|
* code.coding[snomed].system 1.. MS
* code.coding[snomed].code 1.. MS
* code.coding[loinc] = $LNC#89243-0 //Karnofsky Performance Status score
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

// Using Quantity instead of CodeableConcept
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "%" (exactly)
* valueQuantity.system 1..1 MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code = #% (exactly)

// Constraints for valid Karnofsky values (0-100 in steps of 10)
* valueQuantity.value obeys karnofsky-valid-value

* valueQuantity ^short = "Leistungszustand nach Karnofsky"
* valueQuantity ^definition = "Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021. Als Quantity modelliert zur Unterstützung von Vergleichen und Berechnungen."

// Reference Ranges with ECOG equivalents
// These provide clinical interpretation and map to ECOG performance status
* referenceRange MS
* referenceRange ^short = "ECOG-Äquivalente Interpretationsbereiche"
* referenceRange ^definition = "Referenzbereiche mit ECOG Performance Status Äquivalenten für klinische Interpretation"
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.type MS
* referenceRange.text MS

// Karnofsky to ECOG mapping (according to oBDS 12.1):
// ECOG 0 equivalent: Karnofsky 90-100%
// ECOG 1 equivalent: Karnofsky 70-80%
// ECOG 2 equivalent: Karnofsky 50-60%
// ECOG 3 equivalent: Karnofsky 30-40%
// ECOG 4 equivalent: Karnofsky 10-20%
// ECOG 5 equivalent: Karnofsky 0%

Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand-Karnofsky-Quantity
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky_Quantity
* -> "12" "Allgemeiner Leistungszustand"
* valueQuantity.value -> "12.1" "Allgemeiner Leistungszustand (als Prozentwert 0-100)"

// Invariant for valid Karnofsky values
Invariant: karnofsky-valid-value
Description: "Karnofsky value must be between 0 and 100 in steps of 10"
Expression: "value >= 0.0 and value <= 100.0 and (value mod 10.0) = 0.0"
Severity: #error

// Example demonstrating usage
Instance: Example-Karnofsky-Quantity-80
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky_Quantity
Usage: #example
Title: "Beispiel: Karnofsky 80% als Quantity"
Description: "Beispiel für Karnofsky Performance Status 80% mit valueQuantity und Reference Ranges für ECOG-Äquivalente"
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-11-05"
* code.coding[snomed] = $SCT#761869008 "Karnofsky Performance Status score (observable entity)"
* code.coding[loinc] = $LNC#89243-0 "Karnofsky Performance Status score"
* valueQuantity.value = 80
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%

// Reference ranges showing ECOG equivalents (according to oBDS 12.1)
* referenceRange[+].low.value = 90
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 100
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 0: Normale Aktivität ohne Einschränkung"

* referenceRange[+].low.value = 70
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 80
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 1: Symptome, aber gehfähig; leichte Arbeit möglich"
* referenceRange[=].appliesTo = $SCT#373066001 "Patient currently being treated (finding)"

* referenceRange[+].low.value = 50
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 60
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 2: Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht"

* referenceRange[+].low.value = 30
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 40
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 3: Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden"

* referenceRange[+].low.value = 10
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 20
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 4: Vollständig pflegebedürftig, keine Selbstversorgung möglich"

* referenceRange[+].low.value = 0
* referenceRange[=].low.unit = "%"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #%
* referenceRange[=].high.value = 0
* referenceRange[=].high.unit = "%"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #%
* referenceRange[=].text = "ECOG 5: Tod"

// Comparison example: Shows how quantities enable comparisons
Instance: Example-Karnofsky-Comparison-Set
InstanceOf: Bundle
Usage: #example
Title: "Beispiel: Karnofsky Verlauf - Vergleichbarkeit durch Quantity"
Description: "Demonstriert wie valueQuantity Vergleiche ermöglicht: Patient verschlechtert sich von 90% auf 60%"
* type = #collection
* entry[+].fullUrl = "http://example.org/Observation/Example-Karnofsky-Baseline"
* entry[=].resource = Example-Karnofsky-Baseline
* entry[+].fullUrl = "http://example.org/Observation/Example-Karnofsky-Followup"
* entry[=].resource = Example-Karnofsky-Followup

Instance: Example-Karnofsky-Baseline
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky_Quantity
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-10-01"
* code.coding[snomed] = $SCT#761869008
* code.coding[loinc] = $LNC#89243-0
* valueQuantity.value = 90
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%
* note.text = "Baseline: ECOG 1 Äquivalent - Patient ist symptomatisch aber gehfähig"

Instance: Example-Karnofsky-Followup
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky_Quantity
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-11-05"
* code.coding[snomed] = $SCT#761869008
* code.coding[loinc] = $LNC#89243-0
* valueQuantity.value = 60
* valueQuantity.unit = "%"
* valueQuantity.system = $UCUM
* valueQuantity.code = #%
* note.text = "Follow-up: ECOG 2 Äquivalent - Verschlechterung um 30 Prozentpunkte. Mit Quantity: valueQuantity.value < previousValue ermöglicht direkte Vergleiche."
