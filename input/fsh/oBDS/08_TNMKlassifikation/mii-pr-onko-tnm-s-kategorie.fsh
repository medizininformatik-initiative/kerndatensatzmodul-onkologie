Profile: MII_PR_Onko_TNM_S_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-s-kategorie
Title: "MII PR Onkologie TNM S-Kategorie"
Description: "TNM-Klassifikation: TNM S-Kategorie. Serumtumormarker."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* code MS
* code = $SCT#399424006
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* method MS
* method ^short = "TNM Version"
* method ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method from mii-vs-onko-tnm-version (required)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_S_Kategorie_Werte (required)
* valueCodeableConcept ^short = "TNM S-Kategorie"
* valueCodeableConcept ^definition = "Serumtumormarker."
* valueCodeableConcept ^comment = "Nach aktuellem TNM: derzeit nur beim Hodentumor."
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS


// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-TNM_S_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_S_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.16" "TNM S-Kategorie"
