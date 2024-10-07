Profile: MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten
Parent: Observation
Id: mii-pr-onko-anzahl-befallene-sentinel-lymphknoten
Title: "MII PR Onkologie Anzahl der befallenen Sentinel-Lymphknoten"
Description: "Histologie: Anzahl der befallenen Sentinel-Lymphknoten. Gibt an, wie viele Sentinel-Lymphknoten befallen sind."
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
* code.coding[loinc] = $LOINC#92832-5
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#1264491009
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS
* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #1
* valueQuantity.code ^comment = "The mandatory system is UCUM."
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.value 1.. MS


// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-Histologie-Anzahl-Befallene-Sentinel-Lymphknoten
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Anzahl_Befallene_Sentinel_Lymphknoten
* valueQuantity.value -> "6.10" "Anzahl der befallenen Sentinel-Lymphknoten"