Profile: MII_PR_Onko_Tumorgroesse
Parent: Observation
Id: mii-pr-onko-tumorgroesse
Title: "MII PR Onkologie Tumorgröße"
Description: "Tumorgröße in mm. Gibt die Größe des Tumors in der größten Dimension an. Basierend auf dem oBDS-Modul Mamma. "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS

* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 1..* and
    snomed 0..*
* code.coding[loinc] MS
* code.coding[loinc] = $LNC#21889-1 "Size Tumor"
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#371479009 "Tumor size, largest dimension (observable entity)"
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS
* effectiveDateTime ^short = "Datum der Messung"
* effectiveDateTime ^definition = "Datum der Messung der Tumorgröße in mm. Bei Bildgebung Datum der Bildgebung, bei Pathologie Datum der histologischen Untersuchung. Dieser Datenpunkt ist nicht im oBDS enthalten, weil er sich dort aus dem Kontext der MammaCa-Untersuchung ergibt" 
* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #mm
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.unit = "mm"
* valueQuantity.value 1.. MS

* insert Label (valueQuantity, Tumorgröße in mm, Tumorgröße in größter Dimension in mm )
* insert Translation(valueQuantity ^short, de-DE, Tumorgröße in mm )
* insert Translation(valueQuantity ^definition, de-DE, Tumorgröße in größter Dimension in mm )

* bodySite MS
* bodySite only CodeableConcept
* bodySite.coding MS
* method MS
* method only CodeableConcept

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

Mapping: FHIR-oBDS-Mamma-Tumorgroesse
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumorgroesse
* valueQuantity.value -> "M7" "Tumorgröße Invasives Karzinom (Maximaler Durchmesser des invasiven Karzinoms in mm)"
* valueQuantity.value -> "M8" "Tumorgröße DCIS (Maximaler Durchmesser des DCIS in mm, wenn keine invasive Komponente vorhanden)"
* code -> "M7" "Tumorgröße Invasives Karzinom"
* code -> "M8" "Tumorgröße DCIS"