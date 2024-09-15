Extension: MII_EX_Onko_Systemische_Therapie_Stellung_Zur_Op
Id: mii-ex-onko-systemische-therapie-stellung-zur-op
Title: "MII EX Onko Systemische Therapie Stellung zur OP"
Description: "Systemische Therapie Stellung zur OP"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellung-zur-op"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 0..
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_Systemische_Therapie_Stellung (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-therapie-stellung (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS