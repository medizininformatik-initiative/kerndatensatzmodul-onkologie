Profile: MII_PR_Onko_Befund
Parent: DiagnosticReport
Id: mii-pr-onko-befund
Title: "MII PR Onkologie Befund"
Description: "Histologie: Befund. Vollständiger Befundbericht des Pathologen."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* basedOn 0..* MS
// Error @ DiagnosticReport.basedOn[0] (line 22, col6): Slicing cannot be evaluated: Could not match discriminator ($this) for slice DiagnosticReport.basedOn:tumorkonferenz in profile https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-befund|2025.0.4 - the discriminator [$this] does not have fixed value, binding or existence assertions {SLICING_CANNOT_BE_EVALUATED}
// * basedOn ^slicing.discriminator.type = #pattern
// * basedOn ^slicing.discriminator.path = "$this"
// * basedOn ^slicing.rules = #open
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this.resolve()"
* basedOn ^slicing.rules = #open

* basedOn contains 
    tumorkonferenz 0..1 MS
* basedOn[tumorkonferenz] only Reference(MII_PR_Onko_Tumorkonferenz)
* specimen 0..* MS 
* specimen only Reference(MII_PR_Onko_Specimen or Specimen)
* code MS
* code ^short = "Pathology report code" 
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains pathology-report 1..1 MS
* code.coding[pathology-report] = $LOINC#22034-3 
* code.coding[pathology-report].system 1.. MS 
* code.coding[pathology-report].code 1.. MS
* subject 1.. MS
* subject only Reference(Patient)
* conclusion 1.. MS
// conclusion.value is not an element
//* insert Label (conclusion.value, Befund als Freitext, Befund als Freitext nach 6.11 oBDS 2021)
//* insert Translation(conclusion.value ^short, de-DE, Befund als Freitext)
//* insert Translation(conclusion.value ^definition, de-DE, Befund als Freitext nach 6.11 oBDS 2021 )
* insert Label(conclusion, Befund als Freitext, Befund als Freitext nach 6.11 oBDS 2021)
* insert Translation(conclusion ^short, de-DE, Befund als Freitext)
* insert Translation(conclusion ^definition, de-DE, Befund als Freitext nach 6.11 oBDS 2021)


Mapping: FHIR-oBDS-Histologie-Befund
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Befund
* conclusion -> "6.11" "Befund"