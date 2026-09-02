// Invariant: Wenn SNOMED CT auf valueCodeableConcept vorhanden ist,
// muss dessen Display den c/p-Präfix + UICC-Code enthalten.
// Beispiel: cp-Präfix "c" + UICC "T3" → SNOMED Display muss "cT3 " enthalten
// (trailing space verhindert false positives wie cT3a bei UICC T3)

Invariant: tnm-sct-uicc-konsistenz
Description: "Wenn ein SNOMED CT Code auf valueCodeableConcept vorhanden ist, muss dessen Display den c/p-Präfix und den UICC-Code enthalten (z.B. 'cT3' bei Präfix 'c' und Code 'T3')."
Severity: #error
Expression: "valueCodeableConcept.coding.where(system = 'http://snomed.info/sct').empty() or valueCodeableConcept.coding.where(system = 'http://snomed.info/sct').display.contains(iif(code.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').exists(), code.extension('https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code.first(), '') + valueCodeableConcept.coding.where(system = 'https://www.uicc.org/resources/tnm').code.first() + ' ')"
