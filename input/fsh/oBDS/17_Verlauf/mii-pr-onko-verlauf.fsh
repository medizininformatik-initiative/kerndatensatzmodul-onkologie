Profile: MII_PR_Onko_Verlauf
Parent: Observation
Id: mii-pr-onko-verlauf
Title: "MII PR Onkologie Verlauf"
Description: "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* identifier MS

* subject MS
* subject only Reference(Patient)

* category 1..1 MS
* category.coding from $mii-vs-onko-therapieplanung-typ
* category.coding ^fixedCoding.system = $mii-cs-onko-therapieplanung-typ

// Therapieplanung Datum
* code MS
* component MS
* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"
* component contains 
    Tumor_Verlauf 0..1 and 
    Lymphknoten_Verlauf 0..1 and 
    Fernmetastasen_Verlauf 0..1
* component[Tumor_Verlauf] MS 
* component[Tumor_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-primaertumor
* component[Lymphknoten_Verlauf] MS 
* component[Lymphknoten_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-lymphknoten
* component[Fernmetastasen_Verlauf] MS
* component[Fernmetastasen_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-fernmetastasen


Mapping: FHIR-oBDS-Verlauf
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Verlauf
* code.coding.code -> "17.2" "Gesamtbeurteilung des Tumorstatus"
* effectiveDateTime -> "17.1" "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
* component[Tumor_Verlauf] -> "17.3" "Tumorstatus Primärtumor"
* component[Lymphknoten_Verlauf] -> "17.4" "Tumorstatus Lymphknoten"
* component[Fernmetastasen_Verlauf] -> "17.5" "Tumorstatus Fernmetastasen"
