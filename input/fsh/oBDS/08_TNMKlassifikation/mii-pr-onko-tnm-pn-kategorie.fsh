Profile: MII_PR_Onko_TNM_Pn_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-pn-kategorie
Title: "MII PR Onkologie TNM Pn-Kategorie"
Description: "TNM-Klassifikation: TNM Pn-Kategorie. Perineuralinvasion."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* status MS
* code MS
* code = $SCT#371513001
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter MS
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
* valueCodeableConcept from MII_VS_Onko_TNM_Pn_Kategorie_Werte (required)
* valueCodeableConcept ^short = "TNM Pn-Kategorie"
* valueCodeableConcept ^definition = "Perineuralinvasion."
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

// Referenz zu Verlauf-Observation
* derivedFrom 0..1 MS
* derivedFrom only Reference(MII_PR_Onko_Verlauf)

Mapping: FHIR-oBDS-TNM_Pn_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_Pn_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.15" "TNM Pn-Kategorie"
