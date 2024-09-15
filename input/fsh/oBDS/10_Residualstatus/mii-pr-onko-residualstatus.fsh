Profile: MII_PR_Onko_Residualstatus
Parent: Observation 
Id: mii-pr-onko-residualstatus
Title: "MII PR Onkologie Residualstatus"
Description: "Umfang eines Residualtumors nach einer Therapie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
// Beurteilung des lokalen Residualstatus nach Abschluss der Operation 
// Moved into Procedure.outcome in OP 
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

// Referenz auf Procedure/ Operation, die Specimen erzeugt (Biopsie, Exzision) 
* partOf MS
* partOf 0..1

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)

// Gesamtbeurteilung des Residualstatus 
* code MS
* code.coding 1..* MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 and
    snomed 0..1
* code.coding[loinc] MS
* code.coding[loinc] = $LOINC#84892-9
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#445200009
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from mii-vs-onko-gesamtbeurteilung-residualstatus (required)
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* valueCodeableConcept.coding.system = $mii-cs-onko-residualstatus


Mapping: FHIR-oBDS-Residualstatus
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Residualstatus
* -> "10" "Residualstatus"
* valueCodeableConcept.coding.code -> "10.2" "Gesamtbeurteilung des Residualstatus" 