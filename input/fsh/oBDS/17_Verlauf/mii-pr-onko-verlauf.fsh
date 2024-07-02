Profile: MII_PR_Onko_Verlauf
Parent: Observation
Id: mii-pr-onko-verlauf
Title: "MII PR Onkologie Verlauf"
Description: "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS

// siehe Kodierrichtlinien hier : https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung
* identifier MS

* subject MS
* subject 1..1
* subject only Reference(Patient)

* code MS
// * code 1..1  erst wieder reinschalten 
// * code.coding = SNOMED/LOINC Beurteilung
* code.coding = $SCT#396432002 "Status of regression of tumor (observable entity)"
* value[x] MS
* value[x] 0..1
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_Verlauf_Gesamtbeurteilung
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS

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
* component[Tumor_Verlauf].code.coding = $SCT#277062004 "Status des Residualtumors"
* component[Tumor_Verlauf].value[x] only CodeableConcept
* component[Tumor_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-primaertumor (required)
* component[Tumor_Verlauf].valueCodeableConcept.coding.system MS
* component[Tumor_Verlauf].valueCodeableConcept.coding.code MS

* component[Lymphknoten_Verlauf] MS 
* component[Lymphknoten_Verlauf].code.coding = $SCT#399656008 "Status of tumor metastasis to regional lymph nodes (observable entity)"
* component[Lymphknoten_Verlauf].value[x] only CodeableConcept
* component[Lymphknoten_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-gesamtbeurteilung (required)
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.system MS
* component[Lymphknoten_Verlauf].valueCodeableConcept.coding.code MS

* component[Fernmetastasen_Verlauf] MS
* component[Fernmetastasen_Verlauf].code.coding = $SCT#399608002 "Status of distant metastasis (observable entity)"
* component[Fernmetastasen_Verlauf].value[x] only CodeableConcept
* component[Fernmetastasen_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-fernmetastasen (required)
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.system MS
* component[Fernmetastasen_Verlauf].valueCodeableConcept.coding.code MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)


Mapping: FHIR-oBDS-Verlauf
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Verlauf
* code.coding.code -> "17.2" "Gesamtbeurteilung des Tumorstatus"
* effectiveDateTime -> "17.1" "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
* component[Tumor_Verlauf].code.coding.code -> "17.3" "Tumorstatus Primärtumor"
* component[Lymphknoten_Verlauf].code.coding.code -> "17.4" "Tumorstatus Lymphknoten"
* component[Fernmetastasen_Verlauf].code.coding.code -> "17.5" "Tumorstatus Fernmetastasen"
