Profile: MII_PR_Onko_Studienteilnahme
Parent: Observation
Id: mii-pr-onko-studienteilnahme
Title: "MII PR Onkologie Studienteilnahme"
Description: "Dieses Profil beschreibt Studienteilnahmen in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus ^slicing.discriminator.type = #type
* focus ^slicing.discriminator.path = "$this.resolve()"
* focus ^slicing.rules = #open
* focus contains
    primaertumor 0..1 MS and
    studie 0..1 MS
* focus[primaertumor] only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* focus[primaertumor] ^short = "Referenz zum Primärtumor"
* focus[primaertumor] ^definition = "Referenz zur Primärtumordiagnose, auf die sich die Studienteilnahme bezieht"
* focus[studie] only Reference(ResearchStudy)
* focus[studie] ^short = "Referenz zur Studie"
* focus[studie] ^definition = "Referenz zur konkreten Studie (ResearchStudy), an der der Patient teilnimmt"

* code MS
* code 1..1 
* code ^definition = "SCTID: 709491003 | Enrollment in clinical trial (procedure)"
* code ^short = "Studienteilnahme laut oBDS"
* code.coding = $SCT#709491003 

// 24.1 Studienteilnahme Status
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from mii-vs-onko-studienteilnahme (required)
* valueCodeableConcept.coding.system = $mii-cs-onko-studienteilnahme
* valueCodeableConcept.coding.code 1.. MS
* insert Label(valueCodeableConcept.coding, Studienteilnahme, Studienteilnahme gemäß 24.1 oBDS 2021)
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Studienteilnahme )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Studienteilnahme gemäß 24.1 oBDS 2021   )

// Studienteilnahme Datum
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Studienteilnahme Datum, Studienteilnahme Datum gemäß 24.2 oBDS 2021)
* insert Translation(effectiveDateTime ^short, de-DE, Studienteilnahme Datum)
* insert Translation(effectiveDateTime ^definition, de-DE, Studienteilnahme Datum gemäß 24.2 oBDS 2021)

Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"