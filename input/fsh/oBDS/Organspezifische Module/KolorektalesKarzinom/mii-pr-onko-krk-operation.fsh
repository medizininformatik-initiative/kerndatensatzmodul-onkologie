Profile: MII_PR_Onko_KRK_Operation
Id: mii-pr-onko-krk-operation
Parent: MII_PR_Onko_Operation
Title: "MII PR Onkologie Präoperative Drahtmarkierung Mamma"
Description: "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die  "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* category MS
* status MS
* code MS
* code 1..1 
* code ^definition = "Operation der Brust, z.B. Exzision eines Tumors, Entfernung eines Lymphknotens"
* code ^short = "Operation der Brust"
* code.coding MS // OPS-2025 Code einfach, oder 
//* code.coding[sct] from mii-vs-onko-mamma-operationen (extensible)

* partOf MS
* partOf only Reference(MII_PR_Onko_Operation) 
* usedCode MS
* usedCode only CodeableConcept
* usedCode 0..*
* usedCode.coding MS
* usedCode.coding ^slicing.discriminator.type = #value
* usedCode.coding ^slicing.discriminator.path = "code"
* usedCode.coding ^slicing.rules = #open
* usedCode.coding ^slicing.description = "Slicing für die intraoperative Verwendung von z.B. Drahtmarkierungen, Markierungsclips oder Seed-Markierungen"


/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/