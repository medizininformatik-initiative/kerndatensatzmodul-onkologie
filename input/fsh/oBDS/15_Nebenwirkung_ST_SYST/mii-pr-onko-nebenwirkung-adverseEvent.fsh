Profile: MII_PR_Onko_Nebenwirkung_Adverse_Event
Parent: AdverseEvent
Id: mii-pr-onko-nebenwirkung-adverse-event
Title: "MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie"
Description: "Dieses Profil beschreibt die Nebenwirkung von Strahlentherapie und systemische Therapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Hier wird entweder die Bezeichnung von CTCAE Grad (als String) oder die MEDDRA Code genutzt
* event 1..1 MS
* event.coding 1..* MS
* event.coding from $mii-vs-onko-nebenwirkung-art
* event.coding.system 1..1 MS
* event.text MS

// Hier wird CTCAE Grad genutzt
* severity 1..1 MS
* severity.coding from $mii-vs-onko-nebenwirkung-ctcae-grad-adverse-event

* subject only Reference(Patient)

// Hier ist für die Referenz zu Procedure/MedicationStatement
* suspectEntity 1..* MS
* suspectEntity.instance MS
