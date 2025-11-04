Profile: MII_PR_Onko_Prostata_PSA
Parent: Observation // labor würde hier auch gehen, aber tatsächlich hat Labor kardinalität 1..* auf identifier etc, und daher nur passend, wenn 
Id: mii-pr-onko-prostate-psa
Title: "MII PR Onkologie PSA-Wert"
Description: "Dieses Profil beschreibt den PSA-Wert sowohl beim Monitoring als auch in der Verlaufskontrolle in der Onkologie"
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
* code ^definition = "PSA-Wert wie im oBDS definiert. Der PSA-Wert ist ein Tumormarker, der bei der Diagnostik und Verlaufskontrolle von Prostatakrebs verwendet wird. Er wird in ng/ml gemessen. Bei Vorliegen kann dieser Datenpunkt auch durch eine Observation aus dem Labormodul abgebildet werden. "
* code ^short = "PSA-Wert"
* code.coding from MII_VS_Onko_Prostata_PSA_LOINC

* specimen 0..1



* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity 1..1
* valueQuantity.unit = "ng/ml"
* valueQuantity.system = "http://unitsofmeasure.org"
* valueQuantity.code = #ng/mL
* valueQuantity.value 1..1
* insert Label(valueQuantity, PSA-Wert, PSA-Wert aus Blut/Plasma in ng/ml)
* insert Translation(valueQuantity ^short, de-DE, PSA-Wert )
* insert Translation(valueQuantity ^definition, de-DE, PSA-Wert aus Blut/Plasma in ng/ml)



/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/