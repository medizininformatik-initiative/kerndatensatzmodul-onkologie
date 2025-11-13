// TRIAL USE PROFILE - Version 2026
// This profile is offered alongside the standard CodeableConcept profile to gather
// implementation experience with Quantity-based ECOG modeling.
//
// Advantages:
// - Supports comparisons (>, <, >=, <=) enabling queries like "all patients with ECOG >= 2"
// - Better for calculations, trending, and analytics (mean ECOG, change over time)
// - More aligned with FHIR score modeling guidelines (Basisprofile DE)
// - Natural integer scale (0-4) without unit ambiguity
// - Reference ranges provide clinical interpretation with Karnofsky equivalents
//
// Both this profile and the CodeableConcept variant validate against the same
// ObservationDefinition (see ObsDef-ECOG-Performance-Status), giving implementers
// flexibility while ensuring semantic consistency.

Profile: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand-ecog-quantity
Title: "MII PR Onkologie Allgemeiner Leistungszustand ECOG (Quantity - Trial Use v2026)"
Description: """
**Status: TRIAL USE in Version 2026**

Experimentelles Profil für die Version 2026: Beschreibung des allgemeinen Leistungszustandes
nach ECOG als Quantity (Integer 0-4).

Dieses Profil wird parallel zum Standard-CodeableConcept-Profil (mii-pr-onko-allgemeiner-leistungszustand-ecog)
angeboten, um Implementierungserfahrungen zu sammeln. Feedback von Implementierern während der
v2026-Nutzung wird verwendet, um zu entscheiden, ob das Profil in v2027+ zum Standard wird
oder angepasst werden muss.

**Vorteile der Quantity-Modellierung:**
- Unterstützung von Vergleichsoperatoren (>, <, >=, <=) für Queries
- Bessere Analysemöglichkeiten: Median, Mittelwert, Trendanalysen
- Natürliche Integer-Skala (0, 1, 2, 3, 4) ohne Unit-Ambiguität
- Ausrichtung an FHIR Score-Modellierungsrichtlinien der Basisprofile DE
- Reference Ranges mit Karnofsky-Äquivalenten für klinische Interpretation

**Validierung:**
Beide Profile (CodeableConcept und Quantity) validieren gegen die gleiche
ObservationDefinition (ObsDef-ECOG-Performance-Status), die beide
Datentypen als permittedDataType erlaubt.
"""
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* ^experimental = true
* ^version = "2026.0.0-trial"
* ^date = "2025-11-05"
* ^purpose = """
Sammeln von Implementierungserfahrungen mit Quantity-basierter ECOG-Modellierung
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
* code.coding[snomed] = $SCT#423740007  //|Eastern Cooperative Oncology Group performance status (observable entity)|
* code.coding[snomed].system 1.. MS
* code.coding[snomed].code 1.. MS
* code.coding[loinc] = $LNC#89262-0 // ECOG Performance Status score
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

// Using Quantity with dimensionless unit (score)
* value[x] 1..1 MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.value 1..1 MS
* valueQuantity.unit 1..1 MS
* valueQuantity.unit = "{score}" (exactly)
* valueQuantity.system 1..1 MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.code 1..1 MS
* valueQuantity.code = #{score} (exactly)

// Constraints for valid ECOG values (0-4 integers)
* valueQuantity.value obeys ecog-valid-value

* valueQuantity ^short = "Leistungszustand nach ECOG"
* valueQuantity ^definition = "Leistungszustand nach ECOG 0-4 gemäß 12.1 oBDS 2021. Als Quantity modelliert zur Unterstützung von Vergleichen und Berechnungen."

// Reference Ranges with Karnofsky equivalents
// These provide clinical interpretation and map to Karnofsky performance status
* referenceRange MS
* referenceRange ^short = "Karnofsky-Äquivalente Interpretationsbereiche"
* referenceRange ^definition = "Referenzbereiche mit Karnofsky Performance Status Äquivalenten für klinische Interpretation"
* referenceRange.low MS
* referenceRange.high MS
* referenceRange.type MS
* referenceRange.text MS

// ECOG to Karnofsky mapping (according to oBDS 12.1):
// ECOG 0 = Karnofsky 90-100%
// ECOG 1 = Karnofsky 70-80%
// ECOG 2 = Karnofsky 50-60%
// ECOG 3 = Karnofsky 30-40%
// ECOG 4 = Karnofsky 10-20%
// ECOG 5 (death) = Karnofsky 0% (not typically recorded)

Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand-ECOG-Quantity
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
* -> "12" "Allgemeiner Leistungszustand"
* valueQuantity.value -> "12.1" "Allgemeiner Leistungszustand (als ECOG Score 0-4)"

// Invariant for valid ECOG values
Invariant: ecog-valid-value
Description: "ECOG value must be an integer between 0 and 4"
Expression: "value >= 0.0 and value <= 4.0 and (value - value.floor()) = 0.0"
Severity: #error

// Example demonstrating usage
Instance: Example-ECOG-Quantity-2
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
Usage: #example
Title: "Beispiel: ECOG 2 als Quantity"
Description: "Beispiel für ECOG Performance Status 2 mit valueQuantity und Reference Ranges für Karnofsky-Äquivalente"
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-11-05"
* code.coding[snomed] = $SCT#423740007 "Eastern Cooperative Oncology Group performance status (observable entity)"
* code.coding[loinc] = $LNC#89262-0 "ECOG Performance Status score"
* valueQuantity.value = 2
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}

// Reference ranges showing Karnofsky equivalents
* referenceRange[+].low.value = 0
* referenceRange[=].low.unit = "{score}"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #{score}
* referenceRange[=].high.value = 0
* referenceRange[=].high.unit = "{score}"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #{score}
* referenceRange[=].text = "ECOG 0 (Karnofsky 90-100%): Normale Aktivität ohne Einschränkung"

* referenceRange[+].low.value = 1
* referenceRange[=].low.unit = "{score}"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #{score}
* referenceRange[=].high.value = 1
* referenceRange[=].high.unit = "{score}"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #{score}
* referenceRange[=].text = "ECOG 1 (Karnofsky 70-80%): Symptome, aber gehfähig; leichte Arbeit möglich"

* referenceRange[+].low.value = 2
* referenceRange[=].low.unit = "{score}"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #{score}
* referenceRange[=].high.value = 2
* referenceRange[=].high.unit = "{score}"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #{score}
* referenceRange[=].text = "ECOG 2 (Karnofsky 50-60%): Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht"

* referenceRange[+].low.value = 3
* referenceRange[=].low.unit = "{score}"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #{score}
* referenceRange[=].high.value = 3
* referenceRange[=].high.unit = "{score}"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #{score}
* referenceRange[=].text = "ECOG 3 (Karnofsky 30-40%): Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden"

* referenceRange[+].low.value = 4
* referenceRange[=].low.unit = "{score}"
* referenceRange[=].low.system = $UCUM
* referenceRange[=].low.code = #{score}
* referenceRange[=].high.value = 4
* referenceRange[=].high.unit = "{score}"
* referenceRange[=].high.system = $UCUM
* referenceRange[=].high.code = #{score}
* referenceRange[=].text = "ECOG 4 (Karnofsky 10-20%): Vollständig pflegebedürftig, keine Selbstversorgung möglich"

// Comparison example: Shows how quantities enable comparisons
Instance: Example-ECOG-Comparison-Set
InstanceOf: Bundle
Usage: #example
Title: "Beispiel: ECOG Verlauf - Vergleichbarkeit durch Quantity"
Description: "Demonstriert wie valueQuantity Vergleiche ermöglicht: Patient verschlechtert sich von ECOG 1 auf ECOG 3"
* type = #collection
* entry[+].resource = Example-ECOG-Baseline
* entry[+].resource = Example-ECOG-Followup

Instance: Example-ECOG-Baseline
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-10-01"
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* valueQuantity.value = 1
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* note.text = "Baseline: ECOG 1 - Patient ist symptomatisch aber gehfähig (Karnofsky 70-80%)"

Instance: Example-ECOG-Followup
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG_Quantity
Usage: #example
* status = #final
* subject = Reference(Patient/example)
* effectiveDateTime = "2025-11-05"
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* valueQuantity.value = 3
* valueQuantity.unit = "{score}"
* valueQuantity.system = $UCUM
* valueQuantity.code = #{score}
* note.text = "Follow-up: ECOG 3 - Verschlechterung um 2 Punkte (Karnofsky 30-40%). Mit Quantity: valueQuantity.value > previousValue ermöglicht direkte Vergleiche."
