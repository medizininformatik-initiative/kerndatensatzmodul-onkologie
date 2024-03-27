Profile: MII_PR_Onko_Tumorkonferenz
Parent: CarePlan
Id: mii-pr-onko-tumorkonferenz
Title: "MII PR Onkologie Tumorkonferenz"
Description: "Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* identifier MS
* status MS
* intent MS

* subject MS
* subject 1..1
* subject only Reference(Patient)

* category 1..1 MS 
* category.coding from mii-vs-onko-therapieplanung-typ
* category.coding 1..* MS
* category.coding.system = $mii-cs-onko-therapieplanung-typ
* category.coding.system 1..1 MS
* category.coding.code 1..1 MS

// Therapieplanung Datum
* created 1..1 MS

// die Referenz zu Tumorerkrankung
* addresses MS

// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInfo MS

// Ist Melder/Ersteller gewünscht? --> Erstmal werden die Daten in den DIZen erstellt. Es wird gerade diskutiert, die von der MII generierten Daten in die Metadaten-Tags zu packen
* contributor MS //würde ich daher rausnehmen

* activity 0..* MS
* activity.detail 1..1 MS
* activity.detail.code 1..1 MS
* activity.detail.code.coding from mii-vs-onko-therapieempfehlung-typ
* activity.detail.code.coding.system = $mii-cs-onko-therapie-typ
* activity.detail.code.coding.system 1..1 MS
* activity.detail.code.coding.code 1..1 MS

* activity.detail.status MS

* activity.detail.statusReason MS
* activity.detail.statusReason.coding from mii-vs-onko-therapieabweichung
* activity.detail.statusReason.coding MS
* activity.detail.statusReason.coding.system = $mii-cs-onko-therapieabweichung
* activity.detail.statusReason.coding.code MS

Mapping: FHIR-oBDS-Therapieplanung-Tumorkonferenz
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumorkonferenz
* created -> "18.1" "Tumorkonferenz Therapieplanung Datum"
* category.coding.code -> "18.2" "Tumorkonferenz Therapieplanung Typ"
* activity.detail.code.coding.code -> "19.1" "Tumorkonferenz Therapieempfehlung Typ"
* activity.detail.status -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
* activity.detail.statusReason.coding -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"