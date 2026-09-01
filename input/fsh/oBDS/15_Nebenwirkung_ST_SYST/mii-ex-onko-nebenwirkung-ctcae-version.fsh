// CTCAE-Katalogversion (oBDS 15.3) als Extension am AdverseEvent.
Extension: MII_EX_Onko_Nebenwirkung_CTCAE_Version
Id: mii-ex-onko-nebenwirkung-ctcae-version
Title: "MII EX Onkologie Nebenwirkung CTCAE-Version"
Description: "Version des CTCAE-Katalogs, aus dem die Nebenwirkungsart stammt (oBDS 15.3). Nicht zu verwechseln mit der MedDRA-Version in event.coding[meddra].version: Die CTCAE fuehrt ihre Terme mit MedDRA-Codes, CTCAE v4.03 basiert auf MedDRA v12.0."
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-nebenwirkung-ctcae-version"
* ^context[+].type = #element
* ^context[=].expression = "AdverseEvent"
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from MII_VS_Onko_Nebenwirkung_CTCAE_Version (required)
