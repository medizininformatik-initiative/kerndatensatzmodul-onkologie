Profile: MII_PR_Onko_KRK_Abstand_Aboral
Parent: Observation
Id: mii-pr-onko-krk-abstand-aboral
Title: "MII PR Onkologie Abstand Aboral"
Description: "Dieses Profil beschreibt den minimalen Abstand des Tumorrandes zur aboralen Dissektionlinie im Kolorektalen Karzinom"
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
* code ^definition = "Minimaler Abstand des Tumors zum aboralen ('analseitigen') Resektionsrand in mm gemäß oBDS 2021 KR2 - makroskopisch oder mikroskopisch"
* code ^short = "Minimaler Abstand Tumorrand aboral - makroskopisch oder mikroskopisch"
* code.coding from MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral (extensible)


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

* insert Label (valueQuantity, Minimaler Abstand Tumorrand aboral, Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand in mm. gemäß oBDS 2021 KR2 )
* insert Translation(valueQuantity ^short, de-DE, Minimaler Abstand Tumorrand aboral )
* insert Translation(valueQuantity ^definition, de-DE, Minimaler Abstand des aboralen Tumorrandes zum aboralen Resektionsrand in mm. gemäß oBDS 2021 KR2)

// P3 Datum der Stanzen
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Untersuchung, Datum der Untersuchung )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Untersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Untersuchung)


