Profile: MII_PR_Onko_Verlauf
Parent: Observation
Id: mii-pr-onko-verlauf
Title: "MII PR Onkologie Verlauf"
Description: "Dieses Profil beschreibt die Verlaufskontrolle und verweist ggfs. auf andere verlaufsrelevante diagnostische Maßnahmen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// siehe Kodierrichtlinien hier : https://plattform65c.atlassian.net/wiki/spaces/Dokumentat/pages/75628552/Verlaufsmeldung
* identifier MS

* subject MS
* subject 1..1
* subject only Reference(Patient)

* code MS
// * code 1..1  erst wieder reinschalten 
// * code.coding = SNOMED/LOINC Beurteilung
* value[x] MS
* value[x] 0..1
* value[x] only CodeableConcept

* valueCodeableConcept from MII_VS_Onko_Verlauf_Gesamtbeurteilung

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
* component[Tumor_Verlauf].code.coding.code = $SCT#277062004 "Status des Residualtumors"
* component[Tumor_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-primaertumor (required)
* component[Lymphknoten_Verlauf] MS 
* component[Lymphknoten_Verlauf].code.coding.code = $SCT#277060007 "Status der lymphatischen Tumorinvasion"
* component[Lymphknoten_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-lymphknoten (required)
* component[Fernmetastasen_Verlauf] MS
* component[Fernmetastasen_Verlauf].code.coding.code = $SCT#260874000 "Status der Metastasen"
* component[Fernmetastasen_Verlauf].valueCodeableConcept from mii-vs-onko-verlauf-fernmetastasen (required)


Mapping: FHIR-oBDS-Verlauf
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Verlauf
* code.coding.code -> "17.2" "Gesamtbeurteilung des Tumorstatus"
* effectiveDateTime -> "17.1" "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat."
* component[Tumor_Verlauf].code.coding.code -> "17.3" "Tumorstatus Primärtumor"
* component[Lymphknoten_Verlauf].code.coding.code -> "17.4" "Tumorstatus Lymphknoten"
* component[Fernmetastasen_Verlauf].code.coding.code -> "17.5" "Tumorstatus Fernmetastasen"
