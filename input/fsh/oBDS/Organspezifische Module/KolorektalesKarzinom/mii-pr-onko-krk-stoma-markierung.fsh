Profile: MII_PR_Onko_KRK_Stoma_Markierung
Parent: $mii-procedure
Id: mii-pr-onko-krk-stoma-markierung
Title: "MII PR Onkologie KRK Stoma-Markierung"
Description: "Dieses Profil beschreibt die präoperative Markierung der geplanten Stoma-Position beim Kolorektalen Karzinom"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* status MS
* statusReason MS
* statusReason from MII_VS_Onko_KRK_Stoma_Status_Reason (extensible)

* category MS
* category 1..1
* category.coding MS
* category.coding = $SCT#387713003 "Surgical procedure"

* code MS
* code 1..1 
* code ^definition = "Markierung der Position einer geplanten Stoma-Anlage"
* code ^short = "Stoma-Markierung"
* code.coding MS
* code.coding = $SCT#225134005 "Marking position of planned stoma site (procedure)"

* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* performed[x] MS
* performed[x] only dateTime
* performedDateTime MS
* insert Label(performedDateTime, Datum der Stoma-Markierung, Datum der präoperativen Stoma-Markierung)
* insert Translation(performedDateTime ^short, de-DE, Datum der Stoma-Markierung)
* insert Translation(performedDateTime ^definition, de-DE, Datum der präoperativen Markierung der geplanten Stoma-Position)




Mapping: FHIR-oBDS-KRK-Stoma-Markierung
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_Stoma_Markierung
* -> "KR7" "Rektum: Präoperative Anzeichnung der Stomaposition"
* status -> "KR7" "Status der präoperativen Stoma-Markierung"
* statusReason -> "KR7 (Komponente)" "Grund für den Markierungsstatus; keine eigene oBDS-Feldnummer"
* performedDateTime -> "KR7" "Datum der Stoma-Markierung"
