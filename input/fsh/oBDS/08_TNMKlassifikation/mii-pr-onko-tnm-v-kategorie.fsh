Profile: MII_PR_Onko_TNM_V_Kategorie
Parent: Observation
Id: mii-pr-onko-tnm-v-kategorie
Title: "MII PR Onkologie TNM V-Kategorie"
Description: "TNM-Klassifikation: TNM V-Kategorie. Veneninvasion."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* code MS
* code = $SCT#371493002
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* insert Translation(effectiveDateTime ^short, de-DE, TNM-Datum )
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der TNM-Klassifikation nach 8.1 oBDS 2021 )

* method MS
* method ^short = "TNM Version"
* method ^definition = "Gibt an, nach welcher Version des TNM klassifiziert wurde."
* method from mii-vs-onko-tnm-version (required)
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_V_Kategorie_Werte (required)
* valueCodeableConcept ^short = "TNM V-Kategorie"
* valueCodeableConcept ^definition = "Veneninvasion."
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* insert Translation(valueCodeableConcept.coding ^short, de-DE, TNM V-Kategorie )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, TNM Veneninvasion nach 8.14 oBDS 2021 )

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-TNM_V_Kategorie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_V_Kategorie
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.14" "TNM V-Kategorie"
