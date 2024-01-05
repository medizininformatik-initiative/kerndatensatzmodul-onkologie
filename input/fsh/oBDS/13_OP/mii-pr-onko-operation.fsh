Profile: MII-PR-Onko-Operation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure // müssen wir das noch irgendwo manuell hinzufügen
Id: mii-pr-onko-operation
Title: "MII PR Onkologie Operation"
Description: "Operation nach OPS inklusive Intention, Datum und Komplikationen:"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
// OP-Datum
* performed[performedDateTime] MS // required? 
* code MS // eventuell doppelt weil in MII Prozedur schon definiert
* code.coding[ops] 1..1 MS
* complication MS
// * complication from $mii-vs-onko-operation-komplikation // quatsch, weil wir slices machen müssen
* complication ^slicing.discriminator.type = #pattern
* complication ^slicing.discriminator.path = "$this"
* complication ^slicing.rules = #open
* complication contains 
    compl_obds 0..* 
    //and
    //compl_icd10 0..*
* complication[compl_obds] MS
* complication[compl_obds].coding from $mii-vs-onko-operation-komplikation
* complication[compl_obds].system = $mii-cs-onko-operation-komplikation
* complication[compl_obds].code 1.. MS
//* code.coding[compl_icd10] from 
//* code.coding[compl_icd10].system = $ICD10GM
//* code.coding[compl_icd10].code 1..
//Mapping: FHIR-to-oBDS Operation
//Id: 


// Intention der OP
// OPS Code
// OPS Version
// Komplikationen über oBDS Valueset, nicht enthaltene über ICD-10
