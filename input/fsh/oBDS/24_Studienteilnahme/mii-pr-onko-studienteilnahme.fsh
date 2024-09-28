Profile: MII_PR_Onko_Studienteilnahme
Parent: Observation
Id: mii-pr-onko-studienteilnahme
Title: "MII PR Onkologie Studienteilnahme"
Description: "Dieses Profil beschreibt Studienteilnahmen in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1 
* code ^definition = "SCTID: 70709491003 | Enrollment in clinical trial (procedure)"
* code ^short = "Studienteilnahme laut oBDS"
* code.coding = $SCT#70709491003 

// 24.1 Studienteilnahme Status
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from mii-vs-onko-studienteilnahme (required)
* valueCodeableConcept.coding.system = $mii-cs-onko-studienteilnahme
* valueCodeableConcept.coding.code 1.. MS

// Studienteilnahme Datum
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS

Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"