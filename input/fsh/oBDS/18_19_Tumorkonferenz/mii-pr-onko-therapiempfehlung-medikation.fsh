Profile: MII_PR_Onko_Therapieempfehlung_Medikation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationRequest
Id: mii-pr-onko-therapieempfehlung-medikation
Title: "MII PR Onkologie Therapieempfehlung Medikation"
Description: "Dieses Profil beschreibt eine Medikations-Tumorempfehlung"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfileUK
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* identifier MS
* status MS


* intent MS
* intent ^short = "proposal | option"
* intent ^definition = "Verwenden Sie 'proposal' für eigenständige Therapieempfehlungen. Verwenden Sie 'option' wenn die MedicationRequest Teil einer RequestGroup ist (z.B. Kombinationstherapie)."


* subject MS
* subject 1..1
* subject only Reference(Patient)

// Spezifikation der Therapeiempfehlung, als PZN (für Arzneimittel) und/oder ATC-DE (für Wirkstoffe)
* medication[x] MS
* medication[x] 1..1
* medicationCodeableConcept MS
* medicationCodeableConcept 1..1
* medicationCodeableConcept.coding MS
* medicationCodeableConcept.coding 1..*



// zusätzlich SNOMED-Codierung von Wirkstoffklassen erlauben? 

// Therapieplanung Datum
* authoredOn 1..1 MS

// die Referenz zu Tumorerkrankung und weiteren Befunden
* reasonReference 1..* MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or Condition or Observation)
* reasonReference ^slicing.discriminator.type = #profile
* reasonReference ^slicing.discriminator.path = "$this.resolve()"
* reasonReference ^slicing.rules = #open
* reasonReference ^slicing.ordered = false
* reasonReference contains Primaertumor 1..1 MS
* reasonReference[Primaertumor] only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* reasonReference[Primaertumor] ^short = "Tumorerkrankung (Pflicht)"
* reasonReference[Primaertumor] ^definition = "Referenz auf die Primärtumor-Diagnose, auf die sich diese Therapieempfehlung bezieht."

// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInformation MS

Mapping: FHIR-oBDS-Therapieplanung-Medikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Therapieempfehlung_Medikation