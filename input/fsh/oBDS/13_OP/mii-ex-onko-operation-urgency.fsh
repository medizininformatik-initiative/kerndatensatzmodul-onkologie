Extension: MII_EX_Onko_Operation_Urgency
Id: mii-ex-onko-operation-urgency
Title: "MII EX Onko Operation Urgency"
Description: "Modalität der Eingriffsdurchführung (Art des Eingriffs) im Rahmen des oBDS (KR6)"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-urgency"
* insert PR_CS_VS_Version
* insert Publisher
* ^context.type = #element
* ^context.expression = "Procedure"
* value[x] 1..
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system 1..
* valueCodeableConcept.coding.system = $mii-cs-onko-operation-urgency (exactly)
* valueCodeableConcept.coding.code 1..
* valueCodeableConcept from MII_VS_Onko_Operation_Urgency (required)
* valueCodeableConcept.text MS

Mapping: FHIR-oBDS-Operation-Urgency
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_EX_Onko_Operation_Urgency
* valueCodeableConcept -> "KR6" "Art des Eingriffs (Modalität der Eingriffsdurchführung: E=Elektiveingriff, N=Notfalleingriff, U=Unbekannt)"