Extension: MII_EX_Onko_Operation_Intention
Id: mii-ex-onko-operation-intention
Title: "MII EX Onko Operation Intention"
Description: "Intention der Operation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"
* value[x] 1..
* value[x] only CodeableConcept
* value[x] from MII_VS_Onko_Operation_Intention (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-operation-intention (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS