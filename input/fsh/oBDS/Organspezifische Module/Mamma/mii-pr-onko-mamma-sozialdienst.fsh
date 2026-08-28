Profile: MII_PR_Onko_Mamma_Sozialdienst
Id: mii-pr-onko-mamma-sozialdienst
Parent: MII_PR_Onko_Operation
Title: "MII PR Onkologie Präoperative Drahtmarkierung Mamma"
Description: "Das vorliegende Profil beschreibt eine radiologisch durchgeführte Markierung von Tumorgewebe mittels  der Brust. Dabei können verschiedene Methoden gewählt werden. Die  "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* status MS
* code MS
* code 1..1 
* code ^definition = "Sozialdienstkontakt zur Unterstützung der Patientin bei der Bewältigung der Erkrankung, nach oBDS-Definition M9"
* code ^short = "Sozialdienstkontakt"
* code.coding = $SCT#306238000 "Referral to Social Services (procedure)"
* performedDateTime MS
* performedDateTime 1..1
* performedDateTime ^definition = "Datum des Kontakts mit dem Sozialdienst"
* performedDateTime ^short = "Datum"



Mapping: FHIR-oBDS-MammaSozialdienst
Id: oBDS-Organ
Title: "Mapping FHIR zu oBDS (organspezifisches Zusatzmodul)"
Source: MII_PR_Onko_Mamma_Sozialdienst
* -> "M9 (XSD: Modul_Allgemein.Sozialdienstkontakt)" "Datum des Sozialdienstkontaktes"
* performedDateTime -> "M9 (XSD: Modul_Allgemein.Sozialdienstkontakt)" "Datum des Kontakts mit dem Sozialdienst"
