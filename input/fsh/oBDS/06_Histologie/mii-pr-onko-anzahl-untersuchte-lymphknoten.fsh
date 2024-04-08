Profile: MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
Parent: Observation
Id: mii-pr-onko-anzahl-untersuchte-lymphknoten
Title: "MII PR Onkologie Anzahl der untersuchten Lymphknoten"
Description: "Histologie: Anzahl der untersuchten Lymphknoten. Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel)."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
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
* code.coding[loinc] = $LOINC#21894-1
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#444025001
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1 MS
* subject only Reference(Patient)
* encounter MS
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

Mapping: FHIR-oBDS-Histologie-Anzahl-Untersuchte-Lymphknoten
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Anzahl_Untersuchte_Lymphknoten
* valueQuantity.value -> "6.7" "Anzahl der untersuchten Lymphknoten"