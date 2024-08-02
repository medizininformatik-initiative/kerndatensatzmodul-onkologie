// Histologic Tumor Grade
Profile: MII_PR_Onko_Grading
Parent: Observation
Id: mii-pr-onko-grading
Title: "MII PR Onkologie Grading"
Description: "Histologie: Tumor Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

* category MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains laboratory 1..*
* category[laboratory] MS
* category[laboratory] = $observation-category#laboratory
* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] MS
* code.coding[loinc] = $LOINC#33732-9
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#371469007
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS
* value[x] 1..1 MS 
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept from mii-vs-onko-grading (required)
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)


Mapping: FHIR-oBDS-Histologie-Grading
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Grading
* valueCodeableConcept.coding.code -> "6.6" "Grading"