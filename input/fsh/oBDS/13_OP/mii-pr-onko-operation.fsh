Profile: MII-PR-Onko-Operation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Id: mii-pr-onko-operation
Title: "MII PR Onkologie Operation"
Description: "Operation nach OPS inklusive Intention, Datum und Komplikationen:"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
// OP-Datum
* performed[performedDateTime] MS // required? 
* code.coding[ops] 1..1 


// Intention der OP
// OPS Code
// OPS Version
// Komplikationen
