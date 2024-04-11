Profile: MII_PR_Onko_Strahlentherapie
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
Id: mii-pr-onko-strahlentherapie
Title: "MII PR Onkologie Strahlentherapie"
Description: "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532153/Strahlentherapie+ST+Typ
* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


// Intention der Strahlentherapie 
* extension contains mii-ex-onko-strahlentherapie-intention named Intention 1..1 
* extension[Intention] MS

// Strahlentherapie Stellung zu operativer Therapie
* extension contains MII_EX_Onko_Strahlentherapie_Stellung named Stellung 0.. 
* extension[Stellung] MS 

* extension contains mii-ex-onko-strahlentherapie-bestrahlung named Bestrahlung 1..
* extension[Bestrahlung] MS
* extension[Bestrahlung] 1..*


// Strahlentherapie Beginn und Ende
* performed[x] MS
* performed[x] only Period //  wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performed[x].start 1..1 MS 
* performed[x].end 0..1 MS

// Strahlentherapie Ende Grund
* outcome MS
* outcome 0..1
* outcome.coding from MII_VS_Onko_Strahlentherapie_Ende_Grund (required)

// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS 
* reasonReference only Reference(Condition)

// Referenz auf letzte Verlaufsobservation zur zeitlichen und inhaltlichen Kopplung
* partOf MS
* partOf only Reference(Observation)



Mapping: FHIR-oBDS-Strahlentherapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Strahlentherapie
* -> "14" "Strahlentherapie"
* extension[Intention].valueCodeableConcept.coding.code -> "14.1" "Intention der Strahlentherapie"
* extension[Stellung].valueCodeableConcept.coding.code -> "14.2" "Strahlentherapie Stellung zu operativer Therapie" 
* extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding.code -> "14.3" "Strahlentherapie Zielgebiet" 
* extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding.code -> "14.4" "Strahlentherapie Seite Zielgebiet" 
* performed[x].start -> "14.5" "Strahlentherapie Beginn"
* performed[x].end -> "14.6" "Strahlentherapie Ende"
* extension[Bestrahlung].extension[Applikationsart].valueCodeableConcept.coding.code -> "14.7" "Strahlentherapie Applikationsart"
* extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding.code -> "14.8" "Strahlentherapie Strahlenart"
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value -> "14.9" "Strahlentherapie Gesamtdosis"
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value -> "14.10" "Strahlentherapie Einzeldosis pro Tag"
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"

* extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding.code -> "14.12" "Strahlentherapie Boost"
* outcome.coding.code -> "14.13" "Strahlentherapie Ende Grund"
