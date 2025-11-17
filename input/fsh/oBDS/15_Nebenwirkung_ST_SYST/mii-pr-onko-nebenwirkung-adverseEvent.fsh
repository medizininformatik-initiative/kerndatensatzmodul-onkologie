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
* event.coding 0..* MS
* event.coding ^slicing.discriminator.type = #pattern
* event.coding ^slicing.discriminator.path = "system"
* event.coding ^slicing.rules = #open
* event.coding contains meddra 0..1 MS
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code 1..1 MS
* event.coding[meddra].version MS
* event.coding from mii-vs-onko-nebenwirkung-art (required)
* event.coding.code 0..1 MS
* event.coding.system 1..1 MS
* event.coding.version MS
* event.text 0..1 MS
* insert Label(event.coding.code, Art der Nebenwirkung, Art der Nebenwirkung nach CTCAE / MedDRA.  Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde)
* insert Translation(event.coding.code ^short, de-DE, Art der Nebenwirkung)
* insert Translation(event.coding.code ^definition, de-DE, Art der Nebenwirkung nach CTCAE / MedDRA . Abweichend von 15.2 oBDS 2021 kann dieses Feld leer sein falls eine Nebenwirkung des Schweregrads 1 oder 2 vorliegt und keine spezifische Art der Nebenwirkung dokumentiert wurde)
* insert Label(event.coding.version, CTCAE-Version, Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021.)
* insert Translation(event.coding.version ^short, de-DE, CTCAE-Version)
* insert Translation(event.coding.version ^definition, de-DE, Version der für Art der Nebenwirkung verwendeten CTCAE-Klassifikation gemäß 15.3 oBDS 2021.)

// Hier wird CTCAE Grad genutzt
* seriousness 1..1 MS
* seriousness from mii-vs-onko-nebenwirkung-ctcae-grad
* seriousness.coding MS
* seriousness.coding.system 1..1 MS
* seriousness.coding.code 1..1 MS
* seriousness.text MS
* insert Label(seriousness.coding, Schweregrad der Nebenwirkung nach CTCAE , Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021.)
* insert Translation(seriousness.coding ^short, de-DE, Schweregrad der Nebenwirkung nach CTCAE )
* insert Translation(seriousness.coding ^definition, de-DE, Schweregrad der Nebenwirkung nach CTCAE gemäß 15.1 oBDS 2021.)

// Die Referenz zu Procedure/MedicationStatement
* suspectEntity 1..* MS
* suspectEntity.instance MS
* suspectEntity.instance only Reference(Procedure or MedicationStatement) // add Refernce to Systemic and radiation therapy

Mapping: FHIR-oBDS-AdverseEvents
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Nebenwirkung_Adverse_Event
* seriousness -> "15.1" "Nebenwirkungen nach CTCAE-Grad"
* event.coding.code -> "15.2" "Nebenwirkungen nach CTCAE Art"
* event.coding.version -> "15.3" "Nebenwirkungen nach CTCAE Version"
