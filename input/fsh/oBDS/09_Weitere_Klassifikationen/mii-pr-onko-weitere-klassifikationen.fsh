Profile: MII_PR_Onko_Weitere_Klassifikationen
Parent: Observation
Id: mii-pr-onko-weitere-klassifikationen
Title: "MII PR Onkologie Weitere Klassifikationen"
Description: "Weitere Tumor Staging Klassifikation neben TMN (Hämatoonkologische und sonstige Klassifikationen)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS

* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

// 9.1 Hämatoonkologische und sonstige Klassifikationen Datum 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Translation(effectiveDateTime ^short, de-DE, Datum)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der weiteren Klassifikation )

// 9.2 Hämatoonkologische und sonstige Klassifikationen Name 
* code MS
* code 1..1
* code.text MS 
* code.text 1..1 
* code.text ^definition = "Hier ist der String aus dem oBDS einzuleiten"
* code.coding.code 0..1 
* code.coding.code ^definition = "Hier ist eine entsprechende Kodierung anzugeben, mit dem die Klassifikation in einem internationalen Standard (z.B. SNOMED-CT, LOINC, etc. ) semantisch annotiert werden kann" 
* insert Translation(code.text ^short, de-DE, Klassifikation Name Freitext )
* insert Translation(code.text ^definition, de-DE, Name der Klassifikation wie in Krebsregistermeldung angegeben )
* insert Translation(code.coding.code ^short, de-DE, Klassifikation Name Kodierung  )
* insert Translation(code.coding.code ^definition, de-DE, Name der Klassifikation kodiert in internationalem Standard - falls vorhanden )


// 9.3 Hämatoonkologische und sonstige Klassifikationen Einstufung 
* value[x] 0..1 MS 
* value[x] ^short = "Wert/ Einstufung in jeweiliger Klassifikation"
* value[x] ^definition = "Einstufung nach jeweiliger Klassifikation. Je nach ausgewählter Systematik kann hier eine Klassifikation/Kategorisierung, ein Puntkwert oder ein anderer Datentyp auftauchen"
* insert Translation(value[x] ^short, de-DE, Wert der weiteren Klassifikation )
* insert Translation(value[x] ^definition, de-DE, Wert in oben ausgewählter Klassifikation )


Mapping: FHIR-oBDS-Weitere-Klassifikationen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Weitere_Klassifikationen
* -> "09" "Weitere Klassifikationen"
* effectiveDateTime -> "09.1" "Hämatoonkologische und sonstige Klassifikationen Datum" 
* code.text -> "09.2" "Hämatoonkologische und sonstige Klassifikationen Name"
* value[x] -> "09.3" "Hämatoonkologische und sonstige Klassifikationen Einstufung"