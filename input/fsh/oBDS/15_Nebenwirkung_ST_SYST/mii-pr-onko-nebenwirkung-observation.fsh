Profile: MII_PR_Onko_Nebenwirkung
Parent: $mii-symptom-observation
Id: mii-pr-onko-nebenwirkung
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* partOf 1..1 MS
* partOf only Reference(Procedure)
* category MS
* category.coding = $observation-category#therapy

* code ^fixedCodeableConcept = $SCT#711434002 "Common Terminology Criteria for Adverse Events (assessment scale)"

* effective[x] only dateTime or Period
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS
* effectivePeriod.start 0..1 MS

* component 1..* MS
* component.code.coding from $mii-vs-onko-nebenwirkung-ctcae-grad (required)
* component.code.coding ^fixedCoding.system = $mii-cs-onko-nebenwirkung-ctcae-grad

//Die Nebenwirkung kann mit MEDDRA code oder Bezeichnung von CTCAE Grad dargestellt werden
* component.value[x] only CodeableConcept or string

//Mehrere Nebenwirkungen können gleichzeitig auftauchen
//Die Nebenwirkungen können gleichen CTCAE Grad haben
* component.valueString MS
* component.valueCodeableConcept MS
* component.valueCodeableConcept from $mii-vs-onko-nebenwirkung-art
* component.valueCodeableConcept.coding ^fixedCoding.system = $hl7-meddra-de
* component.valueCodeableConcept.coding 1..* MS
* component.valueCodeableConcept.coding.code 1..1 MS
* component.valueCodeableConcept.coding.version 1..1 MS
