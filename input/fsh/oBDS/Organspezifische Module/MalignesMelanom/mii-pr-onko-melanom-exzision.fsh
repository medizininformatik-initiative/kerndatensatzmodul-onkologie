Profile: MII_PR_Onko_Melanom_Exzision
Parent: MII_PR_Onko_Operation
Id: mii-pr-onko-melanom-exzision
Title: "MII PR Onko Melanom Exzision"
Description: "Melanom-spezifische Exzision. Dieses Profil spezialisiert die allgemeine onkologische Operation für Melanom-Exzisionen mit einem präferierten ValueSet basierend auf SNOMED CT Codes für Hautexzisionen."
* insert PR_CS_VS_Version
* insert Publisher

* code.coding[sct] 1..1 MS
* code.coding[sct] from MII_VS_Onko_Melanom_Exzision_SNOMEDCT (required)
* code.coding[sct] ^short = "SNOMED CT Code für Melanom-Exzision"
* code.coding[sct] ^definition = "SNOMED CT Code für die spezifische Melanom-Exzision. Bevorzugt werden Codes für Hautexzisionen und Melanom-spezifische Eingriffe."

Mapping: FHIR-oBDS-MelanomExzision
Id: oBDS-Organ
Title: "Mapping FHIR zu oBDS (organspezifisches Zusatzmodul)"
Source: MII_PR_Onko_Melanom_Exzision
* -> "kein oBDS-Modulfeld" "Operative Therapie über oBDS Kapitel 13 (OP) und OPS; MM1 (Sicherheitsabstand) wird am Exzidat bestimmt"
