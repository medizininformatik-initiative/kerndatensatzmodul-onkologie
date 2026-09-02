Extension: MII_EX_Onko_TNM_cp_Praefix
Id: mii-ex-onko-tnm-cp-praefix
Title: "MII EX Onkologie TNM c/p Präfix"
Description: "Die Extension verleiht einer TNM T-, N- oder M-Kategorie ein c, p oder u Präfix zur Angabe der Klassifikationsmethode: 'c' = klinische Klassifikation (basierend auf klinischen Angaben), 'p' = pathologische Klassifikation (basierend auf pathohistologischer Untersuchung), 'u' = Ultraschall-basierte Klassifikation."
* insert PR_CS_VS_Version
* insert OnkoCRMIExtension
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* ^context.type = #element
* ^context.expression = "CodeableConcept"
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_cp_Praefix (required)
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS