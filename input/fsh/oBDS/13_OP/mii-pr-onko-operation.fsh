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
// OP-Prozedur 
* code MS // eventuell doppelt weil in MII Prozedur-Ressource schon definiert
* code.coding[ops] 1..1 MS // hier auch potentiel 1..*, weil mehrere Sachen gemacht werden können? geht das überhaupt, oder muss man da slicen?
 
* complication MS
// * complication from $mii-vs-onko-operation-komplikation // quatsch, weil wir slices machen müssen
* complication ^slicing.discriminator.type = #pattern
* complication ^slicing.discriminator.path = "$this"
* complication ^slicing.rules = #open
* complication contains 
    compl_obds 0..* and
    compl_icd10 0..*
* complication[compl_obds] MS
* complication[compl_obds].coding from $mii-vs-onko-operation-komplikation
* complication[compl_obds].system = $mii-cs-onko-operation-komplikation
* complication[compl_obds].code 1.. MS

* complication[compl_icd10] MS 
* complication[compl_icd10] from http://fhir.de/ValueSet/bfarm/icd-10-gm // binding auf ICD10-GM Value Set
* complication[compl_icd10] only http://fhir.de/StructureDefinition/CodingICD10GM // optional? , erlaubt ausschließlich die Nutzung einer validen offiziellen ICD-10GM Code FHIR Ressource
* complication[compl_icd10].system = $ICD10GM // schreibt canonical ICD10 GM-FHIR-URI in system
* complication[compl_icd10].code 1..
//Mapping: FHIR-to-oBDS Operation
//Id: 


// Intention der OP
// OPS Code
// OPS Version
// Komplikationen über oBDS Valueset, nicht enthaltene über ICD-10
