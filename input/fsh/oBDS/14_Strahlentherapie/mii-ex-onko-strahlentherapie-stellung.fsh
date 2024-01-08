Extension: MII_EX_Onko_Strahlentherapie_Stellung
Id: mii-ex-onko-strahlentherapie-stellung
Title: "MII EX Onko Strahlentherapie Stellung"
Description: "Strahlentherapie Stellung zur OP"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 0..
* value[x] only CodeableConcept
* value[x] from MII_VS_Onko_Strahlentherapie_Stellung (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-strahlentherapie-stellung (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS