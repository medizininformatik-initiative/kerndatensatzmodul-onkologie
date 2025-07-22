Profile: MII_PR_Onko_Mamma_Intraoperatives_Imaging_Specimen
Id: mii-pr-onko-mamma-intraoperatives-imaging-specimen
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

* status MS
* code MS
* code 1..1 
* code ^definition = "Prätherapeutischer Menopausenstatus einer Patientin mit Mamma-Karzinom"
* code ^short = "Status der Menopause"
* code.coding MS // OPS-2025 Code einfach, oder 


* partOf MS
* partOf only Reference(MII_PR_Onko_Operation) 


/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/