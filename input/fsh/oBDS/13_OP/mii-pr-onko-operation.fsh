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

//Mapping: FHIR-to-oBDS Operation
//Id: 


// Intention der OP
// OPS Code
// OPS Version
// Komplikationen über oBDS Valueset, nicht enthaltene über ICD-10
