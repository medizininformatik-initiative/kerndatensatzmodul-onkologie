Profile: MII_PR_Onko_Tumorkonferenz
Parent: CarePlan
Id: mii-pr-onko-tumorkonferenz
Title: "MII PR Onkologie Tumorkonferenz"
Description: "Dieses Profil beschreibt die Tumorkonferenz und die Therapieempfehlungen"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* intent MS
* intent = #plan
* subject MS
* subject 1..1
* subject only Reference(Patient)

* category 1..1 MS 
* category.coding from mii-vs-onko-therapieplanung-typ
* category.coding 1..* MS
* category.coding.system = $mii-cs-onko-therapieplanung-typ
* category.coding.system 1..1 MS
* category.coding.code 1..1 MS
* insert Translation(category.coding ^short, de-DE, Art der Tumorkonferenz / Therapieplanung )
* insert Translation(category.coding ^definition, de-DE, Art der Tumorkonferenz / Therapieplanung gemäß 18.2 oBDS 2021. )

// Therapieplanung Datum
* created 1..1 MS
* insert Translation(created ^short, de-DE, Datum der Tumorkonferenz / Therapieplanung )
* insert Translation(created  ^definition, de-DE, Datum der Tumorkonferenz / Therapieplanung gemäß 18.1 oBDS 2021. )

// die Referenz zu Tumorerkrankung
* addresses MS
* addresses only Reference(MII_PR_Onko_Diagnose_Primaertumor)
// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInfo MS

* activity 0..* MS
* activity.detail 1..1 MS
* activity.detail.code 1..1 MS
* activity.detail.code from mii-vs-onko-therapieempfehlung-typ
* activity.detail.code.coding.system = $mii-cs-onko-therapie-typ
* activity.detail.code.coding.system 1..1 MS
* activity.detail.code.coding.code 1..1 MS
* insert Translation(activity.detail.code ^short, de-DE, Typ der Therapieempfehlung )
* insert Translation(activity.detail.code ^definition, de-DE, Typ der Therapieempfehlung der Tumorkonferenz gemäß 19.1 oBDS 2021. )

* activity.detail obeys tumorkonferenz-empfehlung-entscheidung-patient
* activity.detail.status MS
* activity.detail.statusReason MS
* activity.detail.statusReason from mii-vs-onko-therapieabweichung
* activity.detail.statusReason.coding MS
* activity.detail.statusReason.coding.system = $mii-cs-onko-therapieabweichung
* activity.detail.statusReason.coding.code MS
* insert Translation(activity.detail.status ^short, de-DE, Status der Therapieempfehlung )
* insert Translation(activity.detail.status ^definition, de-DE, Status der Therapieempfehlung nach HL7 FHIR CarePlanActivityStatus | not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error |   )
* insert Translation(activity.detail.statusReason ^short, de-DE, Therapieabweichung aufgrund Patientenwunsch der Therapieempfehlung )
* insert Translation(activity.detail.statusReason ^definition, de-DE, wenn Therapieabweichung - z.B. status = cancelled - Aussage ob dies durch Patientenwunsch erfolgt ist gemäß 19.2 oBDS 2021. )


Mapping: FHIR-oBDS-Therapieplanung-Tumorkonferenz
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumorkonferenz
* created -> "18.1" "Tumorkonferenz Therapieplanung Datum"
* category.coding.code -> "18.2" "Tumorkonferenz Therapieplanung Typ"
* activity.detail.code.coding.code -> "19.1" "Tumorkonferenz Therapieempfehlung Typ"
* activity.detail.status -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
* activity.detail.statusReason.coding -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"