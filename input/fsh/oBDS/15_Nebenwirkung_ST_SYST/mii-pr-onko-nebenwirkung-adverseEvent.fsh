Profile: MII_PR_Onko_Nebenwirkung_Adverse_Event
Parent: AdverseEvent
Id: mii-pr-onko-nebenwirkung-adverse-event
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


// Hier wird entweder die Bezeichnung von CTCAE Grad oder die MedDRA Code genutzt
* event 1..1 MS
* event.coding 1..* MS
* event from mii-vs-onko-nebenwirkung-art
* event.coding.system 1..1 MS
* event.coding.code 1..1 MS
* event.coding.version MS
* event.text MS
* insert Translation(event.coding.code ^short, de-DE, Art der Nebenwirkung)
* insert Translation(event.coding.code ^definition, de-DE, Art der Nebenwirkung nach CTCAE / MedDRA gemäß 15.2 oBDS 2021.)
* insert Translation(event.coding.version ^short, de-DE, CTCAE-Version)
* insert Translation(event.coding.version ^definition, de-DE, Verion der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021.)

// Hier wird CTCAE Grad genutzt
* severity 1..1 MS
* severity from mii-vs-onko-nebenwirkung-ctcae-grad
* severity.coding MS
* severity.coding.system 1..1 MS
* severity.coding.code 1..1 MS
* severity.text MS
* insert Translation(severity.coding ^short, de-DE, Schweregrad der Nebenwirkung nach CTCAE )
* insert Translation(outcome.coding ^definition, de-DE, Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021.)

// Die Referenz zu Procedure/MedicationStatement
* suspectEntity 1..* MS
* suspectEntity.instance MS 
* suspectEntity.instance only Reference(Procedure or MedicationStatement) // add Refernce to Systemic and radiation therapy

Mapping: FHIR-oBDS-AdverseEvents
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Nebenwirkung_Adverse_Event
* severity -> "15.1" "Nebenwirkungen nach CTCAE-Grad"
* event.coding.code -> "15.2" "Nebenwirkungen nach CTCAE Art"
* event.coding.version -> "15.3" "Nebenwirkungen nach CTCAE Version"
