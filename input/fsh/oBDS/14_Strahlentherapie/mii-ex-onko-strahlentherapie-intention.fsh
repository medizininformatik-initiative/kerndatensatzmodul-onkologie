Extension: MII_EX_Onko_Strahlentherapie_Intention
Id: mii-ex-onko-strahlentherapie-intention
Title: "MII EX Onko Strahlentherapie Intention"
Description: "Strahlentherapie Intention"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 1..1
* value[x] only CodeableConcept
* value[x] from MII_VS_Onko_Strahlentherapie_Intention (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-strahlentherapie-intention (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS