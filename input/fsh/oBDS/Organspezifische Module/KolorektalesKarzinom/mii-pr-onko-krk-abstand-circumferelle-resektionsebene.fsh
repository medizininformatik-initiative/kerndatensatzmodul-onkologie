Profile: MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene
Parent: Observation
Id: mii-pr-onko-krk-abstand-circumferelle-resektionsebene
Title: "MII PR Onkologie Abstand Circumferelle Resektionsebene"
Description: "Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur circumferellen Dissektionlinie beim Kolorektalen Karzinom"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


* code MS
* code 1..1 
* code ^definition = "Minimaler Abstand des Tumorrandes zum circumferellen Resektionsrand in mm., gemäß oBDS 2021 KR3 - makroskopisch oder mikroskopisch"
* code ^short = "Minimaler Abstand Tumorrand circumferell - makroskopisch oder mikroskopisch"
* code.coding from MII_VS_Onko_KRK_Abstand_Circumferelle_Resektionsrand (extensible)
// mikroskopisch 

* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #mm
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.unit = "mm"
* valueQuantity.value 1.. MS

* insert Label (valueQuantity, Minimaler Abstand Tumorrand circumferentiell, Minimaler Abstand des Tumorrandes zur circumferentiellen Resektionsebene in mm. gemäß oBDS 2021 KR3 )
* insert Translation(valueQuantity ^short, de-DE, Minimaler Abstand Tumorrand circumferell )
* insert Translation(valueQuantity ^definition, de-DE, Minimaler Abstand des Tumorrandes zur circumferentiellen Resektionsebene in mm. gemäß oBDS 2021 KR3)

// Datum der Untersuchung
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Untersuchung, Datum der Untersuchung )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Untersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Untersuchung)



Mapping: FHIR-oBDS-KRK-Abstand-Circumferell
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_Abstand_Circumferelle_Resektionsebene
* -> "KR3" "Rektum: Abstand zur circumferentiellen Resektionsebene"
* valueQuantity.value -> "KR3" "Minimaler Abstand des Tumorrandes zur circumferentiellen Resektionsebene in mm"
* effectiveDateTime -> "KR3" "Datum der Untersuchung"
