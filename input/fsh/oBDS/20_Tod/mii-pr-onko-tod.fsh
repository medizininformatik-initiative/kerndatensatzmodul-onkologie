Profile: MII_PR_Onko_Tod
Parent: Observation
Id: mii-pr-onko-tod
Title: "MII PR Onkologie Tod"
Description: "Tumorbedingter Tod"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS


* code MS
* code.coding = $SCT#184305005

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Translation(effectiveDateTime ^short, de-DE, Sterbedatum )
* insert Translation(effectiveDateTime ^definition, de-DE, Sterbedatum gemäß 20.1 oBDS 2021   )


* interpretation MS
* interpretation.coding from mii-vs-onko-tod
* interpretation.coding.code 0..1 MS
* interpretation.coding.system 0..1 MS
* interpretation.coding.system = $mii-cs-onko-tod
* insert Translation(interpretation.coding ^short, de-DE, Tod tumorbedingt )
* insert Translation(interpretation.coding ^definition, de-DE, Tod tumorbedingt gemäß 20.2 oBDS 2021   )

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 0..1
* valueCodeableConcept from http://fhir.de/ValueSet/bfarm/icd-10-gm
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.system = $ICD10GM
* valueCodeableConcept.coding.version 1.. MS
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Todesursache ICD-10)
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Todesursache ICD-10 gemäß 20.3 oBDS 2021   )


// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

Mapping: FHIR-oBDS-Tod
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tod
* effectiveDateTime -> "20.1" "Sterbedatum"
* interpretation.coding.code -> "20.2" "Tod tumorbedingt"
* valueCodeableConcept.coding.code -> "20.3" "Todesursache ICD "
* valueCodeableConcept.coding.version -> "20.4" "Todesursache ICD-Version "