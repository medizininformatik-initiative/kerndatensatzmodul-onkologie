Profile: MII_PR_Onko_Mamma_Menopausenstatus
Id: mii-pr-onko-mamma-menopause-status
Parent: Observation
Title: "MII PR Onkologie Menopausenstatus Mamma"
Description: "Dieses Profil beschreibt den (prätherapeutischen) Menopausenstatus einer Patientin mit Mamma-Karzinom in der Onkologie"
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
* code ^definition = "Prätherapeutischer Menopausenstatus einer Patientin mit Mamma-Karzinom"
* code ^short = "Status der Menopause"
* code.coding = $SCT#161712005 "Menopause, function (observable entity)"  // no LOINC code available


// M1 Menopausenstatus


* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from mii-vs-onko-mamma-menopause-status (extensible)
* valueCodeableConcept.coding.code 1.. MS

/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/