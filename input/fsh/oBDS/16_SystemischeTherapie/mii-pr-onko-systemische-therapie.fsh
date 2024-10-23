Profile: MII_PR_Onko_Systemische_Therapie
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure
Id: mii-pr-onko-systemische-therapie
Title: "MII PR Onkologie Systemische Therapie"
Description: "Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* encounter 0..1 MS

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t
* meta.profile 0..* MS
// Intention der systemischen Therapie
* extension contains mii-ex-onko-systemische-therapie-intention named Intention 1..1 // hier ggfs. refactoring
* extension[Intention] MS
* insert Translation(extension[Intention] ^short, de-DE, Intention der systemischen oder abwartenden Therapie )
* insert Translation(extension[Intention] ^definition, de-DE, Intention der systemischen oder abwartenden Therapie gemäß 16.1 oBDS 2021. )


// Systemische Therapie Stellung zu operativer Therapie
* extension contains mii-ex-onko-systemische-therapie-stellung-zur-op named StellungZurOp 0.. // hier ggfs Refactoren auf ein gemeinsames Code System mit unterschiedlicheN Value Sets
* extension[StellungZurOp] MS
* insert Translation(extension[StellungZurOp] ^short, de-DE, Stellung der systemischen Therapie zu einer Operation )
* insert Translation(extension[StellungZurOp] ^definition, de-DE, Stellung der systemischen Therapie zu einer Operation gemäß 16.2 oBDS 2021. )


* code 1..1  
* code ^definition = "Enthält den Code, der neben der oBDS-spezifischen Kodierungden optional mit Codings für OPS und SNOMED annotiert werden kann"
* code ^comment = "Primäre Befüllung aus den oBDS / Tumordokumentatiosndaten. Beim Zusammenführen mit Daten aus KIS und anderen Quellen können hier ebenfalls OPS- und SNOMED-CT-Codings hinterlegt werden"

* code.coding contains
        systemische_therapie_art 0..1
* code.coding[systemische_therapie_art] from mii-vs-onko-systemische-therapie-art
* code.coding[systemische_therapie_art].code 1..1
* code.coding[systemische_therapie_art].system 1..1
* insert Translation(code.coding[systemische_therapie_art] ^short, de-DE,  )
* insert Translation(code.coding[systemische_therapie_art] ^definition, de-DE, Art der systemischen oder abwartenden Therapie gemäß 16.3 oBDS 2021. )
// Die Translation-Labels für OPS und SNOMED werden im MII-Basismodul Prozedur verwaltet

// Systemische Therapie Beginn und  Ende--> ggfs. dupliziert im MedicationStatement oder MedicationAdministration
* performed[x] MS
* performed[x] only Period // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performedPeriod.start 1..1 MS
* performedPeriod.end 0..1 MS
* insert Translation(performedPeriod.start ^short, de-DE, Startdatum der systemischen oder abwartenden Therapie )
* insert Translation(performedPeriod.start ^definition, de-DE, Startdatum der systemischen oder abwartenden Therapie gemäß 16.6 oBDS 2021. )
* insert Translation(performedPeriod.end ^short, de-DE, Enddatum der systemischen oder abwartenden Therapie )
* insert Translation(performedPeriod.end ^definition, de-DE, Enddatum der systemischen oder abwartenden Therapie - wenn vorhanden -  gemäß 16.8 oBDS 2021. )

// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or Condition)

// Referenz auf mehrere Observations / Medications möglich
* partOf MS

* subject 1..1 MS
* subject only Reference(Patient)

// Systemische Therapie Ende Grund
* outcome MS
* outcome 0..1
* outcome from MII_VS_Onko_Systemische_Therapie_Ende_Grund (required)
* outcome.coding.code MS
* outcome.coding.system MS
* insert Translation(outcome.coding ^short, de-DE, Grund für Ende der systemischen oder abwartenden Therapie )
* insert Translation(outcome.coding ^definition, de-DE, Grund für Ende der systemischen oder abwartenden Therapie gemäß 16.7 oBDS 2021. )



Mapping: FHIR-oBDS-Systemische_Therapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Systemische_Therapie
* -> "16" "Systemische Therapie"
* extension[Intention].valueCodeableConcept.coding.code -> "16.1" "Intention der systemischen Therapie"
* extension[StellungZurOp].valueCodeableConcept.coding.code -> "16.2" "Systemische Therapie Stellung zu operativer Therapie"
* code.coding.code -> "16.3" "Art der systemischen oder abwartenden Therapie"
* performed[x].start -> "16.6" "Systemische Therapie Beginn"
* performed[x].end -> "16.8" "Systemische Therapie Ende"
* outcome.coding.code -> "16.7" "Systemische Therapie Ende Grund"

