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
* extension contains mii-ex-onko-systemische-therapie-intention named Intention 1..1 
* extension[Intention] MS
* insert Label(extension[Intention].valueCodeableConcept.coding, Intention der systemischen oder abwartenden Therapie, Intention der systemischen oder abwartenden Therapie gemäß 16.1 oBDS 2021.)
* insert Translation(extension[Intention].valueCodeableConcept.coding ^short, de-DE, Intention der systemischen oder abwartenden Therapie )
* insert Translation(extension[Intention].valueCodeableConcept.coding ^definition, de-DE, Intention der systemischen oder abwartenden Therapie gemäß 16.1 oBDS 2021. )


// Systemische Therapie Stellung zu operativer Therapie
* extension contains mii-ex-onko-systemische-therapie-stellungzurop named StellungZurOp 0.. 
* extension[StellungZurOp] MS
* insert Label(extension[StellungZurOp].valueCodeableConcept.coding, Stellung der systemischen Therapie zu einer Operation, Stellung der systemischen Therapie zu einer Operation gemäß 16.2 oBDS 2021.)
* insert Translation(extension[StellungZurOp].valueCodeableConcept.coding ^short, de-DE, Stellung der systemischen Therapie zu einer Operation )
* insert Translation(extension[StellungZurOp].valueCodeableConcept.coding ^definition, de-DE, Stellung der systemischen Therapie zu einer Operation gemäß 16.2 oBDS 2021. )


* code 1..1  
* code ^definition = "Enthält den Code, der neben der oBDS-spezifischen Kodierungden optional mit Codings für OPS und SNOMED annotiert werden kann"
* code ^comment = "Primäre Befüllung aus den oBDS / Tumordokumentatiosndaten. Beim Zusammenführen mit Daten aus KIS und anderen Quellen können hier ebenfalls OPS- und SNOMED-CT-Codings hinterlegt werden"

* code.coding contains
        systemische_therapie_art 0..1
* code.coding[systemische_therapie_art] from mii-vs-onko-systemische-therapie-art
* code.coding[systemische_therapie_art].code 1..1
* code.coding[systemische_therapie_art].system 1..1
* insert Label(code.coding[systemische_therapie_art], Art der systemischen oder abwartenden Therapie, Art der systemischen oder abwartenden Therapie gemäß 16.3 oBDS 2021.)
* insert Translation(code.coding[systemische_therapie_art] ^short, de-DE, Art der systemischen oder abwartenden Therapie )
* insert Translation(code.coding[systemische_therapie_art] ^definition, de-DE, Art der systemischen oder abwartenden Therapie gemäß 16.3 oBDS 2021. )
// Die Translation-Labels für OPS und SNOMED werden im MII-Basismodul Prozedur verwaltet

// Systemische Therapie Protokoll
* usedCode 0..* MS
* usedCode from mii-vs-onko-systemische-therapie-protokolle (extensible)
* usedCode.coding.code 1..1 MS
* usedCode.coding.system 1..1 MS
* insert Label(usedCode.coding, Protokoll der systemischen Therapie, Protokoll der systemischen Therapie gemäß oBDS Umsetzungsleitfaden.)
* insert Translation(usedCode.coding ^short, de-DE, Protokoll der systemischen Therapie)
* insert Translation(usedCode.coding ^definition, de-DE, Protokoll der systemischen Therapie gemäß oBDS Umsetzungsleitfaden mit Substanzkombinationen.)

// Systemische Therapie Beginn und  Ende--> ggfs. dupliziert im MedicationStatement oder MedicationAdministration
* performed[x] MS
* performed[x] only Period // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performedPeriod.start 1..1 MS
* performedPeriod.end 0..1 MS
* insert Label(performedPeriod.start, Startdatum der systemischen oder abwartenden Therapie, Startdatum der systemischen oder abwartenden Therapie gemäß 16.6 oBDS 2021.)
* insert Translation(performedPeriod.start ^short, de-DE, Startdatum der systemischen oder abwartenden Therapie )
* insert Translation(performedPeriod.start ^definition, de-DE, Startdatum der systemischen oder abwartenden Therapie gemäß 16.6 oBDS 2021. )
* insert Label(performedPeriod.end, Enddatum der systemischen oder abwartenden Therapie, Enddatum der systemischen oder abwartenden Therapie gemäß 16.8 oBDS 2021.)
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
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* insert Label(outcome.coding, Grund für Ende der systemischen oder abwartenden Therapie, Grund für Ende der systemischen oder abwartenden Therapie gemäß 16.7 oBDS 2021.)
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
* usedCode.coding.code -> "16.4" "Protokoll der systemischen Therapie"
* performed[x].start -> "16.6" "Systemische Therapie Beginn"
* performed[x].end -> "16.8" "Systemische Therapie Ende"
* outcome.coding.code -> "16.7" "Systemische Therapie Ende Grund"

