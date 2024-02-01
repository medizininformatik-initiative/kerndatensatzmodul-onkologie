Profile: MII_PR_Onko_Weitere_Klassifikationen
Parent: Observation
Id: mii-pr-onko-weitere-klassifikationen
Title: "MII PR Onkologie Weitere Klassifikationen"
Description: "Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// 9.1 Hämatoonkologische und sonstige Klassifikationen Datum 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS

// 9.2 Hämatoonkologische und sonstige Klassifikationen Name 
* code MS
* code 1..1
* code.text MS
* code.text 1..1
* code.coding.code 1..1

// 9.3 Hämatoonkologische und sonstige Klassifikationen Einstufung 
* value[x] 0..1 MS

Mapping: FHIR-oBDS-Weitere-Klassifikationen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Weitere_Klassifikationen
* -> "09" "Weitere Klassifikationen"
* effectiveDateTime -> "09.1" "Hämatoonkologische und sonstige Klassifikationen Datum" 
* code.text -> "09.2" "Hämatoonkologische und sonstige Klassifikationen Name"
* value[x] -> "09.3" "Hämatoonkologische und sonstige Klassifikationen Einstufung"