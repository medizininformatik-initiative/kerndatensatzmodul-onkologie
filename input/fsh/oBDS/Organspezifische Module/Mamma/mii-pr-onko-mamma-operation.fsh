Profile: MII_PR_Onko_Mamma_Operation
Id: mii-pr-onko-mamma-operation
Parent: MII_PR_Onko_Operation
Title: "MII PR Onkologie Mamma Operation"
Description: "Das vorliegende Profil beschreibt operative Eingriffe an der Brust im Rahmen der Mammakarzinom-Behandlung. Es erweitert das allgemeine Operationsprofil um Mamma-spezifische Aspekte und ermöglicht die detaillierte Erfassung von brustchirurgischen Verfahren."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* status MS
* code MS
* code 1..1 
* code ^definition = "Operation der Brust, z.B. Exzision eines Tumors, Entfernung eines Lymphknotens"
* code ^short = "Operation der Brust"
* code.coding[ops] from mii-vs-onko-mamma-operation-ops (required)
* code.coding[sct] from mii-vs-onko-mamma-operation-sct (required)

* partOf MS

* partOf only Reference(MII_PR_Onko_Operation) 

* usedCode MS
* usedCode only CodeableConcept
* usedCode 0..*
* usedCode.coding MS
* usedCode.coding ^slicing.discriminator.type = #value
* usedCode.coding ^slicing.discriminator.path = "code"
* usedCode.coding ^slicing.rules = #open
* usedCode.coding ^slicing.description = "Slicing für die intraoperative Verwendung von z.B. Drahtmarkierungen, Markierungsclips oder Seed-Markierungen. Hier existiert noch kein vollständiges ValueSet"



/*
Mapping: FHIR-oBDS-MammaOperation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Mamma_Operation
* -> "13" "Operation"
* code.coding[ops].code -> "13.3" "OPS - Mamma-spezifische Operationen"
* code.coding[sct].code -> "13.3" "SNOMED CT - Mamma-spezifische Operationen"
* usedCode.coding -> "13.6" "Intraoperative Hilfsmittel und Markierungen"
* performedDateTime -> "13.2" "OP Datum"

*/