Extension: MII_EX_Onko_Strahlentherapie_StellungZurOp
Id: mii-ex-onko-strahlentherapie-stellungzurop
Title: "MII EX Onko Strahlentherapie Stellung zur OP"
Description: "Strahlentherapie Stellung zur OP"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellungzurop"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 0..
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_Strahlentherapie_StellungZurOp (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-therapie-stellungzurop (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS