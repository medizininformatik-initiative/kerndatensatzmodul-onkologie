Profile: MII_PR_Onko_TNM_Klassifikation
Parent: Observation
Id: mii-pr-onko-tnm-klassifikation
Title: "MII PR Onkologie TNM-Klassifikation"
Description: "TNM-Klassifikation: Grouper-Profil für Komponenten der TNM-Klassifikation."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* status MS
* code MS
* code from mii-vs-onko-tnm-klassifikation-typ (required)
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
* hasMember MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_UICC_Stadium (required)
* valueCodeableConcept ^short = "UICC Stadium"
* valueCodeableConcept ^definition = "Stadium nach aktuell gültiger TNM-Klassifikation."
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

// Referenz zu Verlauf-Observation
* derivedFrom 0..1 MS
* derivedFrom only Reference(MII_PR_Onko_Verlauf)

Mapping: FHIR-oBDS-TNM-Klassifikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_Klassifikation
* effectiveDateTime -> "8.1" "TNM Datum"
* method -> "8.2" "TNM Version"
* valueCodeableConcept.coding.code -> "8.17" "UICC Stadium"
