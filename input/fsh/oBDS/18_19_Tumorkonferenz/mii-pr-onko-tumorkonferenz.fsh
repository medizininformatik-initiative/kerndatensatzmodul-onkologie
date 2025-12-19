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
* insert Label(category.coding, Art der Tumorkonferenz / Therapieplanung, Art der Tumorkonferenz / Therapieplanung gemäß 18.2 oBDS 2021. )
* insert Translation(category.coding ^short, de-DE, Art der Tumorkonferenz / Therapieplanung )
* insert Translation(category.coding ^definition, de-DE, Art der Tumorkonferenz / Therapieplanung gemäß 18.2 oBDS 2021. )

// Therapieplanung Datum
* created 1..1 MS
* insert Label(created,Datum der Tumorkonferenz / Therapieplanung, Datum der Tumorkonferenz / Therapieplanung gemäß 18.1 oBDS 2021. )
* insert Translation(created ^short, de-DE, Datum der Tumorkonferenz / Therapieplanung )
* insert Translation(created  ^definition, de-DE, Datum der Tumorkonferenz / Therapieplanung gemäß 18.1 oBDS 2021. )

// die Referenz zu Tumorerkrankung
* addresses MS
* addresses only Reference(MII_PR_Onko_Diagnose_Primaertumor)
// Referenz zu relevanten Verlaufs-Stagings oder anderen Observationen
* supportingInfo MS

* activity 0..* MS

// Activity slicing: support both oBDS standard and extended molecular recommendations
* activity ^slicing.discriminator[0].type = #exists
* activity ^slicing.discriminator[0].path = "detail"
// Additional discriminator for child profiles (e.g., MTB) to differentiate by referenced profile
* activity ^slicing.discriminator[1].type = #profile
* activity ^slicing.discriminator[1].path = "reference.resolve()"
* activity ^slicing.rules = #open
* activity ^short = "Therapy recommendations - either oBDS standard categorization or extended molecular protocols"

// Slice 1: Standard oBDS therapy planning (19.1 field mapping)
* activity contains obds 0..*
* activity[obds] ^short = "Standard oBDS therapy recommendation with category only"
* activity[obds] ^definition = "Standard tumor board recommendation using oBDS 19.1 therapy type categorization"
* activity[obds].detail 1..1 MS
* activity[obds].detail.code 1..1 MS
* activity[obds].detail.code from mii-vs-onko-therapieempfehlung-typ
* activity[obds].detail.code.coding.system = $mii-cs-onko-therapie-typ
* activity[obds].detail.code.coding.system 1..1 MS
* activity[obds].detail.code.coding.code 1..1 MS
* insert Label(activity[obds].detail.code.coding, Typ der Therapieempfehlung, Typ der Therapieempfehlung der Tumorkonferenz gemäß 19.1 oBDS 2021.)
* insert Translation(activity[obds].detail.code.coding ^short, de-DE, Typ der Therapieempfehlung  )
* insert Translation(activity[obds].detail.code.coding ^definition, de-DE, Typ der Therapieempfehlung der Tumorkonferenz gemäß 19.1 oBDS 2021. )
* activity[obds].detail obeys tumorkonferenz-empfehlung-entscheidung-patient
* activity[obds].detail.status MS
* activity[obds].detail.statusReason MS
* activity[obds].detail.statusReason from mii-vs-onko-therapieabweichung
* activity[obds].detail.statusReason.coding MS
* activity[obds].detail.statusReason.coding.system = $mii-cs-onko-therapieabweichung
* activity[obds].detail.statusReason.coding.code MS
* insert Label(activity[obds].detail.status, Status der Therapieempfehlung, Status der Therapieempfehlung nach HL7 FHIR CarePlanActivityStatus | not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error |)
* insert Translation(activity[obds].detail.status ^short, de-DE, Status der Therapieempfehlung )
* insert Translation(activity[obds].detail.status ^definition, de-DE, Status der Therapieempfehlung nach HL7 FHIR CarePlanActivityStatus | not-started | scheduled | in-progress | on-hold | completed | cancelled | stopped | unknown | entered-in-error |   )
* insert Label(activity[obds].detail.statusReason, Therapieabweichung aufgrund Patientenwunsch der Therapieempfehlung, wenn Therapieabweichung - z.B. status = cancelled - Aussage ob dies durch Patientenwunsch erfolgt ist gemäß 19.2 oBDS 2021.)
* insert Translation(activity[obds].detail.statusReason ^short, de-DE, Therapieabweichung aufgrund Patientenwunsch der Therapieempfehlung )
* insert Translation(activity[obds].detail.statusReason ^definition, de-DE, wenn Therapieabweichung - z.B. status = cancelled - Aussage ob dies durch Patientenwunsch erfolgt ist gemäß 19.2 oBDS 2021. )
* activity[obds].reference 0..0  // Disabled to avoid FHIR invariant cpl-3

// Slice 2: Extended molecular recommendations (beyond oBDS requirements)
* activity contains extended 0..*
* activity[extended] ^short = "Extended molecular tumor board recommendation with detailed protocols"
* activity[extended] ^definition = "Detailed molecular tumor board recommendation using RequestGroup for structured multi-agent protocols and specific medication choices"
* activity[extended].reference 1..1 MS
* activity[extended].reference only Reference(MII_PR_Onko_Therapieempfehlung_Kombinationstherapie or MedicationRequest or ServiceRequest)
* activity[extended].reference ^short = "Detailed therapy recommendation - RequestGroup, MedicationRequest, or ServiceRequest"
* activity[extended].reference ^definition = "Reference to detailed therapy recommendations: RequestGroup for complex multi-agent protocols, MedicationRequest for specific medication orders, or ServiceRequest for therapy referrals (surgery, radiation, etc.)"
* activity[extended].detail 0..0  // Disabled to avoid FHIR invariant cpl-3
* activity[extended].progress MS
* activity[extended].progress ^short = "Progress notes for recommendation implementation"


Mapping: FHIR-oBDS-Therapieplanung-Tumorkonferenz
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumorkonferenz
* created -> "18.1" "Tumorkonferenz Therapieplanung Datum"
* category.coding.code -> "18.2" "Tumorkonferenz Therapieplanung Typ"
* activity[obds].detail.code.coding.code -> "19.1" "Tumorkonferenz Therapieempfehlung Typ"
* activity[obds].detail.status -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
* activity[obds].detail.statusReason.coding -> "19.2" "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
* activity[extended].reference -> "RequestGroup with 19.1" "Tumorkonferenz Therapieempfehlung Typ and specific agents"