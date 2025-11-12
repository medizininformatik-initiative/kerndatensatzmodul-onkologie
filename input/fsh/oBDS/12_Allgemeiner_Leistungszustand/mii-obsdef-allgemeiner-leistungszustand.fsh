// ObservationDefinitions for Performance Status Scores
//
// These define the canonical specifications for ECOG and Karnofsky performance status
// assessments. Both CodeableConcept and Quantity profile variants validate against
// these definitions, giving implementers flexibility while ensuring semantic consistency.
//
// Key functions:
// - Define permitted data types (CodeableConcept AND Quantity)
// - Specify valid code systems and value sets
// - Define quantitative details (units, ranges)
// - Provide reference ranges with clinical interpretation
// - Enable validation of observations against canonical specification

Instance: ObsDef-ECOG-Performance-Status
InstanceOf: ObservationDefinition
Usage: #definition
Title: "ObservationDefinition: ECOG Performance Status"
Description: """
Canonical definition for ECOG (Eastern Cooperative Oncology Group) Performance Status observations.

Supports both CodeableConcept (codes 0-4) and Quantity (integer 0-4) representations,
allowing implementers to choose based on their use case while ensuring consistent validation.

ECOG to Karnofsky mapping (according to oBDS 12.1):
- ECOG 0 = Karnofsky 90-100%: Normale Aktivität ohne Einschränkung
- ECOG 1 = Karnofsky 70-80%: Symptome, aber gehfähig; leichte Arbeit möglich
- ECOG 2 = Karnofsky 50-60%: Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht
- ECOG 3 = Karnofsky 30-40%: Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden
- ECOG 4 = Karnofsky 10-20%: Vollständig pflegebedürftig, keine Selbstversorgung möglich
"""
* code = $SCT#423740007 "Eastern Cooperative Oncology Group performance status (observable entity)"
* code.coding[+] = $LNC#89262-0 "ECOG Performance Status score"

// Support both CodeableConcept and Quantity
* permittedDataType[+] = #CodeableConcept
* permittedDataType[+] = #Quantity

// For CodeableConcept: valid codes from ECOG ValueSet
* validCodedValueSet = Reference(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog)

// For Quantity: dimensionless score 0-4
* quantitativeDetails.unit = $UCUM#{score}
* quantitativeDetails.customaryUnit = $UCUM#{score}

// Qualified intervals with Karnofsky equivalents (according to oBDS 12.1)
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #{score}
* qualifiedInterval[=].range.high.value = 0
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #{score}
* qualifiedInterval[=].condition = "ECOG 0 (Karnofsky 90-100%): Normale Aktivität ohne Einschränkung"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 1
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #{score}
* qualifiedInterval[=].range.high.value = 1
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #{score}
* qualifiedInterval[=].condition = "ECOG 1 (Karnofsky 70-80%): Symptome, aber gehfähig; leichte Arbeit möglich"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 2
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #{score}
* qualifiedInterval[=].range.high.value = 2
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #{score}
* qualifiedInterval[=].condition = "ECOG 2 (Karnofsky 50-60%): Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 3
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #{score}
* qualifiedInterval[=].range.high.value = 3
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #{score}
* qualifiedInterval[=].condition = "ECOG 3 (Karnofsky 30-40%): Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 4
* qualifiedInterval[=].range.low.unit = "{score}"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #{score}
* qualifiedInterval[=].range.high.value = 4
* qualifiedInterval[=].range.high.unit = "{score}"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #{score}
* qualifiedInterval[=].condition = "ECOG 4 (Karnofsky 10-20%): Vollständig pflegebedürftig, keine Selbstversorgung möglich"


Instance: ObsDef-Karnofsky-Performance-Status
InstanceOf: ObservationDefinition
Usage: #definition
Title: "ObservationDefinition: Karnofsky Performance Status"
Description: """
Canonical definition for Karnofsky Performance Status observations.

Supports both CodeableConcept (codes 0%, 10%, ..., 100%) and Quantity (0-100 with unit %)
representations, allowing implementers to choose based on their use case while ensuring
consistent validation.

Karnofsky to ECOG mapping (according to oBDS 12.1):
- Karnofsky 90-100% = ECOG 0: Normale Aktivität ohne Einschränkung
- Karnofsky 70-80% = ECOG 1: Symptome, aber gehfähig; leichte Arbeit möglich
- Karnofsky 50-60% = ECOG 2: Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht
- Karnofsky 30-40% = ECOG 3: Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden
- Karnofsky 10-20% = ECOG 4: Vollständig pflegebedürftig, keine Selbstversorgung möglich
- Karnofsky 0% = ECOG 5: Tod
"""
* code = $SCT#761869008 "Karnofsky Performance Status score (observable entity)"
* code.coding[+] = $LNC#89243-0 "Karnofsky Performance Status score"

// Support both CodeableConcept and Quantity
* permittedDataType[+] = #CodeableConcept
* permittedDataType[+] = #Quantity

// For CodeableConcept: valid codes from Karnofsky ValueSet
* validCodedValueSet = Reference(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky)

// For Quantity: percentage 0-100 in steps of 10
* quantitativeDetails.unit = $UCUM#%
* quantitativeDetails.customaryUnit = $UCUM#%

// Qualified intervals with ECOG equivalents (according to oBDS 12.1)
* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 90
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 100
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 90-100% (ECOG 0): Normale Aktivität ohne Einschränkung"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 70
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 80
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 70-80% (ECOG 1): Symptome, aber gehfähig; leichte Arbeit möglich"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 50
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 60
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 50-60% (ECOG 2): Gehfähig, Selbstversorgung, nicht arbeitsfähig; >50% Wachzeit aufrecht"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 30
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 40
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 30-40% (ECOG 3): Begrenzte Selbstversorgung; ≥50% an Bett/Stuhl gebunden"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 10
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 20
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 10-20% (ECOG 4): Vollständig pflegebedürftig, keine Selbstversorgung möglich"

* qualifiedInterval[+].category = #reference
* qualifiedInterval[=].range.low.value = 0
* qualifiedInterval[=].range.low.unit = "%"
* qualifiedInterval[=].range.low.system = $UCUM
* qualifiedInterval[=].range.low.code = #%
* qualifiedInterval[=].range.high.value = 0
* qualifiedInterval[=].range.high.unit = "%"
* qualifiedInterval[=].range.high.system = $UCUM
* qualifiedInterval[=].range.high.code = #%
* qualifiedInterval[=].condition = "Karnofsky 0% (ECOG 5): Tod"
