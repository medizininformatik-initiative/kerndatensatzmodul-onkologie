Profile: MII_PR_Onko_Operation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
Id: mii-pr-onko-operation
Title: "MII PR Onkologie Operation"
Description: "Operation nach OPS inklusive Intention, Datum und Komplikationen:"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
// OP-Datum

* extension contains mii-ex-onko-operation-intention named Intention 1..1
* extension[Intention] MS
* encounter 0..1 MS


* subject 1..1 MS
* subject only Reference(Patient)

* performed[x] MS
* performed[x] only dateTime 
// OP-Prozedur 
* code.coding[ops] 1..1 MS // hier auch potentiel 1..*, weil mehrere Sachen gemacht werden können? --> geht nicht wegen MII Prozedur-Binding
 
* complication MS
* complication ^slicing.discriminator.type = #pattern
* complication ^slicing.discriminator.path = "$this"
* complication ^slicing.rules = #open
* complication contains 
    compl_obds 0..* and
    compl_icd10 0..*
* complication[compl_obds] MS
* complication[compl_obds] from mii-vs-onko-operation-komplikation
* complication[compl_obds].coding.system = $mii-cs-onko-operation-komplikation
* complication[compl_obds].coding.code 1.. MS

* complication[compl_icd10] MS 
* complication[compl_icd10] from http://fhir.de/ValueSet/bfarm/icd-10-gm 
* complication[compl_icd10].coding.system = $ICD10GM 
* complication[compl_icd10].coding.system 1..
* complication[compl_icd10].coding.code 1..

// Residualstatus lokal
* outcome MS
* outcome 0..1
* outcome from mii-vs-onko-beurteilung-lokaler-residualstatus (required)
* outcome.coding.system = $mii-cs-onko-residualstatus
* outcome.coding.system MS
* outcome.coding.code MS




// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS 
* reasonReference only Reference(MII_PR_Onko_Diagnose or Condition)

// Referenz auf letzte Verlaufsobservation zur zeitlichen und inhaltlichen Kopplung
* partOf MS
* partOf only Reference(Observation)




Mapping: FHIR-oBDS-Operation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Operation
* -> "13" "Operation"
* extension[Intention].valueCodeableConcept.coding.code -> "13.1" "Intention der Operation"
* performedDateTime -> "13.2" "OP Datum" 
* code.coding[ops].code -> "13.3" "OPS" // OPS Code
* code.coding[ops].version -> "13.4" "OPS Version" 
* complication -> "13.5" "OP Komplikationen " // Komplikationen über oBDS Valueset, nicht enthaltene über ICD-10
* outcome -> "10.1" "Beurteilung des lokalen Residualstatus nach Abschluss der Operation" 

