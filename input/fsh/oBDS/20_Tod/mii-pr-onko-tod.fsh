Profile: MII_PR_Onko_Tod
Parent: Observation
Id: mii-pr-onko-tod
Title: "MII PR Onkologie Tod"
Description: "Tumorbedingter Tod"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* code MS
* code.coding = $SCT#184305005

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS

* interpretation MS
* interpretation.coding from $mii-vs-onko-tod
* interpretation.coding.code 1.. MS
* interpretation.coding.system 1.. MS
* interpretation.coding.system = $mii-cs-onko-tod

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..
* valueCodeableConcept from http://fhir.de/ValueSet/bfarm/icd-10-gm 
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.system = $ICD10GM 
* valueCodeableConcept.coding.version 1.. MS


Mapping: FHIR-oBDS-Tod
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tod
* effectiveDateTime -> "20.1" "Sterbedatum"
* interpretation.coding.code -> "20.2" "Tod tumorbedingt"
* valueCodeableConcept.coding.code -> "20.3" "Todesursache ICD "
* valueCodeableConcept.coding.version -> "20.4" "Todesursache ICD-Version "