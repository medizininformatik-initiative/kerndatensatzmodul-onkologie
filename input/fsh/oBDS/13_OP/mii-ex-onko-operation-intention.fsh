Extension: MII_EX_Onko_Operation_Intention
Id: mii-ex-onko-operation-intention
Title: "MII EX Onko Operation Intention"
Description: "Intention der Operation im Rahmen des oBDS"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-operation-intention (exactly)
* valueCodeableConcept.coding.code 1.. 
* valueCodeableConcept.coding.code from MII_VS_Onko_Operation_Intention (required)
* valueCodeableConcept.text MS