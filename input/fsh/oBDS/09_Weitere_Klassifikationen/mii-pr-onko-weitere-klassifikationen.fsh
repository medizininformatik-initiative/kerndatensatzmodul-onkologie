Profile: MII_PR_Onko_Weitere_Klassifikationen
Parent: Observation
Id: mii-pr-onko-weitere-klassifikationen
Title: "MII PR Onkologie Weitere Klassifikationen"
Description: "Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS

* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)

// 9.1 Hämatoonkologische und sonstige Klassifikationen Datum 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS

// 9.2 Hämatoonkologische und sonstige Klassifikationen Name 
* code MS
* code 1..1
* code.text MS // hier ist der String aus dem oBDS einzuleiten
* code.text 1..1
* code.coding.code 0..1 // hier ist ein entsprechender Code anzugeben, mit dem die Klassifikation in einem internationalen Standard semantisch annotiert werden kann 

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