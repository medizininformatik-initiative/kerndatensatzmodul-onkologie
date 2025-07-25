Profile: MII_PR_Onko_Therapieempfehlung_Operation
Parent: ServiceRequest
Id: mii-pr-onko-therapieempfehlung-operation
Title: "MII PR Onkologie Therapieempfehlung Operation"
Description: "Dieses Profil beschreibt eine Empfehlung für eine Operation im Rahmen der Tumorkonferenz"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* identifier MS
* status MS


* intent MS
* intent = #proposal


* subject MS
* subject 1..1
* subject only Reference(Patient)

// Spezifikation der Empfehlung als Operation
* category MS





// Therapieplanung Datum
* authoredOn 1..1 MS

// die Referenz zu Tumorerkrankung
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInfo MS

Mapping: FHIR-oBDS-Therapieplanung-Operation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Therapieempfehlung_Operation