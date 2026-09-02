Extension: MII_EX_Onko_TNM_SN_Suffix
Id: mii-ex-onko-tnm-sn-suffix
Title: "MII EX Onkologie TNM SN Suffix"
Description: "Die Extension verleiht der TNM N-Kategorie das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix."
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-sn-suffix"
* ^context.type = #element
* ^context.expression = "CodeableConcept"
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_SN_Suffix (required)
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS