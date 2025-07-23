Profile: MII_PR_Onko_KRK_Anastomoseninsuffizienz
Parent: Observation
Id: mii-pr-onko-krk-anastomoseninsuffizienz
Title: "MII PR Onkologie KRK Anastomoseninsuffizienz"
Description: "Dieses Profil beschreibt die Bewertung der Anastomoseninsuffizienz nach einer Operation beim Kolorektalen Karzinom"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_KRK_Operation)

* code MS
* code 1..1 
* code ^definition = "Bewertung der Anastomoseninsuffizienz nach kolorektaler Operation"
* code ^short = "Anastomoseninsuffizienz"
* code.coding = $SCT#129037007 "Anastomotic leak"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from MII_VS_Onko_KRK_Anastomoseninsuffizienz (required)

* insert Label (valueCodeableConcept, Anastomoseninsuffizienz Grad, Grad der Anastomoseninsuffizienz nach oBDS)
* insert Translation(valueCodeableConcept ^short, de-DE, Anastomoseninsuffizienz Grad)
* insert Translation(valueCodeableConcept ^definition, de-DE, Grad der Anastomoseninsuffizienz nach oBDS)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Bewertung, Datum der Bewertung der Anastomoseninsuffizienz)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Bewertung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Bewertung der Anastomoseninsuffizienz)

Mapping: FHIR-oBDS-KRK-Anastomoseninsuffizienz
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_Anastomoseninsuffizienz
* -> "KR-Anastomose" "Anastomoseninsuffizienz"
* valueCodeableConcept.coding.code -> "KR-Anastomose" "Bewertung der Anastomoseninsuffizienz"
* effectiveDateTime -> "KR-Anastomose" "Datum der Bewertung"