Extension: MII_EX_Onko_Histology_Morphology_Behavior_ICDO3
Id: mii-ex-onko-histology-morphology-behavior-icdo3
Title: "MII EX Onko Histology Morphology Behavior ICDO3"
Description: "Extension zur Erfassung von ICDO3 da Morphology nicht als Condition.code. Orientiert sich an mcode-stu3.0."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Condition"

* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_Histology_Morphology_Behavior_ICDO3 (required)
* valueCodeableConcept.coding.system 1..1
* valueCodeableConcept.coding.system = $ICDO3 (exactly)
* valueCodeableConcept.coding.code 1..1
* valueCodeableConcept.text MS
