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
// GH #232: Ziel ist das Studien-Profil des KDS-Moduls Medizinisches
// Forschungsvorhaben (Paket kerndatensatz.studie); der generische
// ResearchStudy-Typ bleibt als Fallback zulässig, solange Standorte das
// Modul nicht führen.
* focus[studie] only Reference(https://www.medizininformatik-initiative.de/fhir/modul-studie/StructureDefinition/mii-pr-studie-studie or ResearchStudy)
* focus[studie] ^short = "Referenz zur Studie (KDS-Modul Medizinisches Forschungsvorhaben)"
* focus[studie] ^definition = "Referenz zur konkreten Studie, an der die Patientin oder der Patient teilnimmt. SOLL auf das Profil MII_PR_Studie_Studie des KDS-Moduls Medizinisches Forschungsvorhaben verweisen; eine generische ResearchStudy-Ressource ist zulässig, wenn das Modul am Standort nicht geführt wird."
* insert Translation(focus[studie] ^short, de-DE, Referenz zur Studie - KDS-Modul Medizinisches Forschungsvorhaben)

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