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
* code.coding[ops] 0..1 MS
* code.coding[ops] from mii-vs-onko-mamma-operation-ops (required)
* code.coding[sct] 0..1 MS
* code.coding[sct] from mii-vs-onko-mamma-operation-sct (required)

* partOf MS

* partOf only Reference(MII_PR_Onko_Operation) 
* performed[x] MS
* performedDateTime 0..1 MS

* usedCode MS
* usedCode only CodeableConcept
* usedCode 0..*
* usedCode ^slicing.discriminator.type = #pattern
* usedCode ^slicing.discriminator.path = "$this"
* usedCode ^slicing.rules = #open
* usedCode contains
    IntraoperativesImaging 0..* MS and
    PraeoperativeMarkierung 0..* MS

* usedCode[IntraoperativesImaging] ^short = "Intraoperatives Präparateröntgen/Sonografie"
* usedCode[IntraoperativesImaging] ^definition = "Bildgebende Verfahren zur intraoperativen Beurteilung des Resektats (Mammografie, Sonografie, etc.)"
* usedCode[IntraoperativesImaging].coding from MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat (extensible)

* usedCode[PraeoperativeMarkierung] ^short = "Präoperative Markierung"
* usedCode[PraeoperativeMarkierung] ^definition = "Modalität der präoperativen Markierung (Drahtmarkierung, Markierungsclips, Seed-Markierung)"
* usedCode[PraeoperativeMarkierung].coding from MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet (extensible)

/*
Some error, likely due to mapping duplication of the parent profile. Not necessary here. 
Mapping: FHIR-oBDS-MammaOperation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Mamma_Operation
* -> "13" "Operation"
* code.coding[ops].code -> "13.3" "OPS - Mamma-spezifische Operationen"
* code.coding[sct].code -> "13.3" "SNOMED CT - Mamma-spezifische Operationen"
* usedCode[IntraoperativesImaging].coding.code -> "M6" "Intraoperatives Präparatröntgen/Sonografie"
* usedCode[PraeoperativeMarkierung].coding.code -> "M5" "Präoperative Drahtmarkierung durch Bildgebung gesteuert"
* performedDateTime -> "13.2" "OP Datum"

*/