Profile: MII_PR_Onko_Prostata_Operation
Parent: MII_PR_Onko_Operation
Id: mii-pr-onko-prostata-operation
Title: "MII PR Onko Prostata Operation"
Description: "Prostata-spezifische Operation. Dieses Profil spezialisiert die allgemeine onkologische Operation für Prostata-spezifische Eingriffe mit einem präferierten ValueSet basierend auf SNOMED CT 118877007 und dessen Kindern."
* insert PR_CS_VS_Version
* insert Publisher

* code.coding[sct] 1..1 MS
* code.coding[sct] from MII_VS_Onko_Prostata_Operation_SNOMEDCT (required)
* code.coding[sct] ^short = "SNOMED CT Code für Prostata-Operation"
* code.coding[sct] ^definition = "SNOMED CT Code für die spezifische Prostata-Operation. Bevorzugt werden Codes aus der Hierarchie 118877007 |Procedure on prostate (procedure)|"