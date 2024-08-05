Profile: MII_PR_Onko_Therapieempfehlung_Medikation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Id: mii-pr-onko-therapieempfehlung-Mmedikation
Title: "MII PR Onkologie Therapieempfehlung Medikation"
Description: "Dieses Profil beschreibt eine Medikations-Tumorempfehlung"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

* identifier MS
* status MS


* intent MS
* intent = #proposal


* subject MS
* subject 1..1
* subject only Reference(Patient)

// Spezifikation der Therapeiempfehlung, als PZN (für Arzneimittel) und/oder ATC-DE (für Wirkstoffe)
* medication[x] MS
* medication[x] 1..1
* medicationCodeableConcept MS
* medicationCodeableConcept 1..*
// zusätzlich SNOMED-Codierung von Wirkstoffklassen erlauben? 

// Therapieplanung Datum
* authoredOn 1..1 MS

// die Referenz zu Tumorerkrankung
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose)

// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInfo MS

*

Mapping: FHIR-oBDS-Therapieplanung-Medikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Therapieempfehlung_Medikation