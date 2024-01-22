Extension: MII_EX_Onko_Strahlentherapie_Applikationsart
Id: mii-ex-onko-strahlentherapie-applikationsart
Title: "MII EX Onko Strahlentherapie Applikationsart"
Description: "Art der Strahlentherapie Applikation"
* ^url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-applikationsart"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"

* value[x] 1..
* value[x] only CodeableConcept
* value[x] from MII_VS_Onko_Strahlentherapie_Applikationsart (required)
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-strahlentherapie-applikationsart (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept.text MS