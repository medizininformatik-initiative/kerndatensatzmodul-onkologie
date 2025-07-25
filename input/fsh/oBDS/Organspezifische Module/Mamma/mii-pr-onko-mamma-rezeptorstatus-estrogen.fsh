Profile: MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen
Id: mii-pr-onko-mamma-rezeptorstatus-estrogen
Parent: Observation
Title: "MII PR Onkologie Rezeptorstatus Estrogen"
Description: "Dieses Profil beschreibt den diagnostischen Estrogen-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1 
* code ^definition = "Rezeptorstatus Estrogen, abgeleitet aus der Immunhistochemie der Mamma-Biopsie oder des Mamma-Exzisionspräparates, basierend auf Zahl der positiven Zellen und Färbeintensität"
* code ^short = "Rezeptorstatus Estrogen"
* code.coding = $LNC#40556-3 "Estrogen receptor Ag [Presence] in Tissue by Immune stain" 


// M2 Menopausenstatus


* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slicing für die unterschiedliche Definition von Rezeptorstatus im oBDS und in den S3-Leitlinien"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding contains DefinitionOBDS 0..1 MS and DefinitionLeitlinie 0..1 MS
* valueCodeableConcept.coding[DefinitionOBDS] from mii-vs-onko-mamma-rezeptorstatus-obds (extensible)
* valueCodeableConcept.coding[DefinitionLeitlinie] from mii-vs-onko-mamma-rezeptorstatus-leitlinie (extensible)

* valueCodeableConcept.coding.code 1.. MS

* component MS
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice for Receptor Status Estrogen primary data observations"
* component ^slicing.ordered = false
 
* component contains AnteilPositiveZellen 0..1 MS and Faerbeintensitaet 0..1 MS
* component[AnteilPositiveZellen].code.coding = $SCT#1234804006 "Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* component[AnteilPositiveZellen].value[x] MS
* component[AnteilPositiveZellen].value[x] only Quantity
* component[AnteilPositiveZellen].valueQuantity MS
* component[AnteilPositiveZellen].valueQuantity 0..1
* component[AnteilPositiveZellen].valueQuantity.unit = "%" 
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[AnteilPositiveZellen].valueQuantity.code = #%
* component[AnteilPositiveZellen].valueQuantity.value 0..1 MS
* component[AnteilPositiveZellen].interpretation MS 

* component[Faerbeintensitaet].code.coding = $SCT#1236874005 "Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* component[Faerbeintensitaet].value[x] MS
* component[Faerbeintensitaet].value[x] only CodeableConcept
* component[Faerbeintensitaet].valueCodeableConcept MS
* component[Faerbeintensitaet].valueCodeableConcept 0..1
* component[Faerbeintensitaet].valueCodeableConcept from http://loinc.org/vs/LL4358-9 (extensible) //Weak, Moderate, Strong
