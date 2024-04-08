Extension: MII_EX_Onko_TNM_ITC_Suffix
Id: mii-ex-onko-tnm-itc-suffix
Title: "MII EX Onkologie TNM ITC Suffix"
Description: "Die Extension verleiht TNM N- und M-Kategorien isolierte Tumorzellen (ITC) Suffixe."
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-itc-suffix"
* ^context.type = #element
* ^context.expression = "CodeableConcept"
* value[x] only CodeableConcept
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS