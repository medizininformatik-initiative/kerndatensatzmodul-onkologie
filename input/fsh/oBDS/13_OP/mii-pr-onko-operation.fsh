Profile: MII_PR_Onko_Operation
Parent: $mii-procedure 
Id: mii-pr-onko-operation
Title: "MII PR Onkologie Operation"
Description: "Operation nach OPS inklusive Intention, Datum und Komplikationen:"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
// OP-Datum

* extension contains 
    mii-ex-onko-operation-intention named Intention 1..1 and
    mii-ex-onko-operation-urgency named Urgency 0..1
* insert Label(extension[Intention], Intention der OP, Intention der OP gemäß 13.1 oBDS 2021)
* insert Translation(extension[Intention] ^short, de-DE, Intention der OP )
* insert Translation(extension[Intention] ^definition, de-DE, Intention der OP gemäß 13.1 oBDS 2021 )
* extension[Intention] MS

* insert Label(extension[Urgency], Art des Eingriffs, Modalität der Eingriffsdurchführung gemäß KR6 oBDS 2021)
* insert Translation(extension[Urgency] ^short, de-DE, Art des Eingriffs)
* insert Translation(extension[Urgency] ^definition, de-DE, Modalität der Eingriffsdurchführung - Elektiveingriff vs. Notfalleingriff - gemäß KR6 oBDS 2021)
* extension[Urgency] MS
* encounter 0..1 MS


* subject 1..1 MS
* subject only Reference(Patient)

* performed[x] MS
* performed[x] only dateTime 
// OP-Prozedur 
* code.coding[ops] 1..1 MS 
* code.coding[ops] ^definition =  "OPS-Kodierung. Nur ein Kode erlaubt, bei mehreren kodierten Prozeduren sind mehrere Einzelprozeduren anzulegen."
* insert Label(code.coding[ops], OPS-Kode der Operation, OPS-Kode der Operation gemäß 13.3 oBDS 2021)
* insert Translation(code.coding[ops] ^short, de-DE, OPS-Kode der Operation )
* insert Translation(code.coding[ops] ^definition, de-DE, OPS-Kode der Operation gemäß 13.3 oBDS 2021 )

* complication MS
* complication ^slicing.discriminator.type = #pattern
* complication ^slicing.discriminator.path = "$this"
* complication ^slicing.rules = #open
* complication contains 
    compl_obds 0..* and
    compl_icd10 0..*
* complication[compl_obds] MS
* complication[compl_obds] from mii-vs-onko-operation-komplikation
* complication[compl_obds].coding.system = $mii-cs-onko-operation-komplikation
* complication[compl_obds].coding.code 1.. MS
* insert Label(complication[compl_obds].coding, Komplikation der OP laut oBDS, Komplikation der OP gemäß 13.5 oBDS 2021)
* insert Translation(complication[compl_obds].coding ^short, de-DE, Komplikation der OP laut oBDS )
* insert Translation(complication[compl_obds].coding ^definition, de-DE, Komplikation der OP gemäß 13.5 oBDS 2021)

* complication[compl_icd10] MS 
* complication[compl_icd10] from http://fhir.de/ValueSet/bfarm/icd-10-gm 
* complication[compl_icd10].coding.system = $ICD10GM 
* complication[compl_icd10].coding.system 1..
* complication[compl_icd10].coding.code 1..
* insert Label(complication[compl_icd10].coding, Komplikation der OP Sonstige ICD-10, Komplikation der OP - soweit nicht in 13.1 oBDS 2021 enthalten - als ICD-10-GM)
* insert Translation(complication[compl_icd10].coding ^short, de-DE, Komplikation der OP Sonstige ICD-10 )
* insert Translation(complication[compl_icd10].coding ^definition, de-DE, Komplikation der OP - soweit nicht in 13.1 oBDS 2021 enthalten - als ICD-10-GM)

// Residualstatus lokal
* outcome MS
* outcome 0..1
* outcome from mii-vs-onko-beurteilung-lokaler-residualstatus (required)
* outcome.coding.system = $mii-cs-onko-residualstatus
* outcome.coding.system MS
* outcome.coding.code MS
* insert Label(outcome.coding, Lokaler Residualstatus, Lokaler Residualstatus der OP gemäß 10.1 oBDS 2021. Globaler Residualstatus wird prozedurenunabhängig als eigenständige Observation kodiert.)
* insert Translation(outcome.coding ^short, de-DE, Lokaler Residualstatus )
* insert Translation(outcome.coding ^definition, de-DE, Lokaler Residualstatus der OP gemäß 10.1 oBDS 2021. Globaler Residualstatus wird prozedurenunabhängig als eigenständige Observation kodiert. )

// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS 
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or Condition)

// Referenz auf letzte Verlaufsobservation oder Übergeordneten Prozedur zur zeitlichen und inhaltlichen Kopplung
* partOf MS
* partOf only Reference(Observation or Procedure)




Mapping: FHIR-oBDS-Operation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Operation
* -> "13" "Operation"
* extension[Intention].valueCodeableConcept.coding.code -> "13.1" "Intention der Operation"
* extension[Urgency].valueCodeableConcept.coding.code -> "KR6" "Art des Eingriffs (Modalität der Eingriffsdurchführung)"
* performedDateTime -> "13.2" "OP Datum" 
* code.coding[ops].code -> "13.3" "OPS" // OPS Code
* code.coding[ops].version -> "13.4" "OPS Version" 
* complication -> "13.5" "OP Komplikationen " // Komplikationen über oBDS Valueset, nicht enthaltene über ICD-10
* outcome -> "10.1" "Beurteilung des lokalen Residualstatus nach Abschluss der Operation" 

