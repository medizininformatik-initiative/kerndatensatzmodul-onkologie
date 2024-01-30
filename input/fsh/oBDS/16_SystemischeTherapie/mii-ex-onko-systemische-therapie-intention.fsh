input/fsh/oBDS/14_Strahlentherapie/mii-ex-onko-strahlentherapie-stellung.fshExtension: MII_EX_Onko_Strahlentherapie_Intention
Id: mii-ex-onko-systemische-therapie-intention
Title: "MII EX Onko Systemische Therapie Intention"
Description: "Systemische Therapie Intention"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MII_VS_Onko_SystemischeTherapie_Intention (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-systemische-therapie-intention (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS