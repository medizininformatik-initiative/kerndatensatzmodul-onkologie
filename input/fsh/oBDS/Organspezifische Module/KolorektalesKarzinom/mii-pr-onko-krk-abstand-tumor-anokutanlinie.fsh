Profile: MII_PR_Onko_KRK_Abstand_Anokutan
Parent: Observation
Id: mii-pr-onko-krk-abstand-anokutan
Title: "MII PR Onkologie Abstand Anokutan"
Description: "Dieses Profil beschreibt den Abstand des Tumorunterrandes zur Anokutanlinie im Kolorektalen Karzinom"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


* code MS
* code 1..1 
* code ^definition = "Höhe des Sitzes des Rektumkarzinoms ab Anokutanlinie in cm. Basierend auf dem oBDS-Modul Kolorektales Karzinom."
* code ^short = "Rektum: Abstand des Tumorunterrandes zur Anokutanlinie"
* code.coding = $LNC#33748-5 "Distance from anal verge"


* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #cm
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.unit = "cm"
* valueQuantity.value 1.. MS

* insert Label (valueQuantity, Abstand des Tumorunterrandes zur Anokutanlinie, Abstand des Tumorunterrandes zur Anokutanlinie in cm nach oBDS 2021 KR1 )
* insert Translation(valueQuantity ^short, de-DE, Abstand des Tumorunterrandes zur Anokutanlinie )
* insert Translation(valueQuantity ^definition, de-DE, Abstand des Tumorunterrandes zur Anokutanlinie in cm nach oBDS 2021 KR1 )

// Datum der Untersuchung
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Untersuchung, Datum der Untersuchung )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Untersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Untersuchung)



Mapping: FHIR-oBDS-KRK-Abstand-Anokutan
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_Abstand_Anokutan
* -> "KR1" "Rektum: Abstand des Tumorunterrandes zur Anokutanlinie"
* valueQuantity.value -> "KR1" "Abstand des Tumorunterrandes zur Anokutanlinie in cm"
* effectiveDateTime -> "KR1" "Datum der Untersuchung"
