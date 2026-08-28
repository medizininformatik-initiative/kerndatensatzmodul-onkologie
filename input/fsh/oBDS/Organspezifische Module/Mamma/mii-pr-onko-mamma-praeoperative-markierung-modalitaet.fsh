Profile: MII_PR_Onko_Mamma_Praeoperative_Markierung
Id: mii-pr-onko-mamma-praeoperative-markierung
Parent: Procedure
Title: "MII PR Onkologie Präoperative Markierung Mamma"
Description: "Das vorliegende Profil beschreibt eine präoperativ durchgeführte Markierung von Tumorgewebe in der Brust. Dabei können verschiedene Markierungsmodalitäten gewählt werden, wie z.B. Drahtmarkierungen, Seed-Markierungen oder andere Lokalisationstechniken."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


* status MS
* code MS
* code 1..1 
* code ^definition = "Präoperative Markierung von Tumorgewebe in der Brust zur exakten Lokalisation während der Operation"
* code ^short = "Präoperative Tumormarkierung"
* code.coding MS 
* code.coding from  mii-vs-onko-mamma-praeoperative-markierung-modalitaet (extensible)

* partOf MS
* partOf only Reference(MII_PR_Onko_Operation) 




Mapping: FHIR-oBDS-PraeoperativeMarkierung
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Mamma_Praeoperative_Markierung
* -> "M5" "Präoperative Drahtmarkierung durch Bildgebung gesteuert"
* code.coding -> "M5 (Komponente)" "Modalität der präoperativen Markierung; keine eigene oBDS-Feldnummer"
* performedDateTime -> "M5" "Datum der präoperativen Markierung"