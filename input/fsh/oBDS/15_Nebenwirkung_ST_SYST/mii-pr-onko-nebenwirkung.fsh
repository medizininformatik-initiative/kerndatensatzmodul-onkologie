Profile: MII_PR_Onko_Nebenwirkung
Parent: Observation
Id: mii-pr-onko-nebenwirkung
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* identifier MS

// oder setzt zu 1..1?
* partOf MS
* partOf only Reference(Procedure)
* status MS
* category MS
* category.coding = $observation-category#therapy

* code 1..1 MS
// oder nutzt ein generisches Snomed code: Late effect of medical and surgical care complication (disorder) | Procedure related finding (finding)
* code from $mii-cs-onko-nebenwirkung-origination (preferred)

* subject 1..1 MS
* subject only Reference(Patient)

* effective[x] only dateTime or Period
* effectiveDateTime 0..1 MS
* effectivePeriod 0..1 MS
* effectivePeriod.start 0..1 MS

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding.system 1..1 MS
* valueCodeableConcept.coding.code 1..1 MS
* valueCodeableConcept.coding.code from $mii-vs-onko-nebenwirkung-ctcae-grad
// aus die Beschreibung https://basisdatensatz.de/feld/207/nebenwirkungen-nach-ctcae-version ist die Notwendigkeit des Felders unklar
// In der Katalog für CTCAE (https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15533115/Nebenwirkungen+CTCAE) steht Version 4 -> als Festwert?
* valueCodeableConcept.coding.version 0..1 MS

* component MS
* component.code.coding = $SCT#263718001 "Complication"
* component.value[x] only CodeableConcept or string
* component.valueCodeableConcept 0..1 MS
// Laut Definiton, es kann mehrere Nebenwirkung geben -> Kardinalität 1..*
* component.valueCodeableConcept.coding 1.. MS
* component.valueCodeableConcept.coding.system 1..1 MS
* component.valueCodeableConcept.coding.code 1..1 MS
* component.valueCodeableConcept.coding.code from $mii-vs-onko-nebenwirkung-art
* component.valueString 0..1 MS