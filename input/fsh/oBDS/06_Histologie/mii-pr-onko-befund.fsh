Profile: MII_PR_Onko_Befund
Parent: DiagnosticReport
Id: mii-pr-onko-befund
Title: "MII PR Onkologie Befund"
Description: "Histologie: Befund. Vollständiger Befundbericht des Pathologen."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

* basedOn 0..* MS
* basedOn only Reference(CarePlan)
* code MS
* code ^short = "Pathology report code"
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains pathology-report 1..1 MS
* code.coding[pathology-report] = $LOINC#60568-3 
* code.coding[pathology-report].system 1.. MS 
* code.coding[pathology-report].code 1.. MS
* subject 1.. MS
* subject only Reference(Patient)
* conclusion 1.. MS

Mapping: FHIR-oBDS-Histologie-Befund
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Befund
* conclusion -> "6.11" "Befund"