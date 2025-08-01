Profile: MII_PR_Onko_Tumorkonferenz_Detailed_Recommendations
Parent: CarePlan
Id: mii-pr-onko-tumorkonferenz-detailed-recommendations
Title: "MII PR Onkologie Tumorkonferenz - Detailed Recommendations"
Description: "Dieses Profil beschreibt strukturierte Therapieempfehlungen mit detaillierten RequestGroup-basierten Protokollen für Multi-Agent-Therapien und molekulare Tumorboards"
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

// Detailed recommendations: Support FHIR-allowed resource types only
* activity.reference MS
* activity.reference 1..1
* activity.reference only Reference(MII_PR_Onko_Therapieempfehlung_Kombinationstherapie or MedicationRequest or ServiceRequest)
* activity.reference ^short = "Therapy recommendation - RequestGroup, MedicationRequest, or ServiceRequest"
* activity.reference ^definition = "Reference to therapy recommendations: RequestGroup for complex multi-agent protocols and oncology-specific procedures, MedicationRequest for medication orders, or ServiceRequest for therapy referrals (surgery, radiation, etc.). Note: Oncology Procedure profiles (Operation, SystemischeTherapie, Strahlentherapie) cannot be directly referenced due to FHIR CarePlan constraints and should be referenced via RequestGroup or ServiceRequest."

// Disable activity.detail to avoid FHIR invariant conflicts
* activity.detail 0..0
* activity.detail ^short = "Not used in detailed recommendations profile - therapy details are in referenced RequestGroup"
* activity.detail ^definition = "This element is constrained to 0..0 to avoid FHIR invariant violations. All therapy details including type classification are captured in the referenced RequestGroup."

// Status tracking for detailed recommendations
* activity.progress MS
* activity.progress ^short = "Progress notes for recommendation implementation"

Mapping: FHIR-oBDS-Therapieplanung-Tumorkonferenz-Detailed-Recommendations
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumorkonferenz_Detailed_Recommendations
* created -> "18.1" "Tumorkonferenz Therapieplanung Datum"
* activity.reference -> "RequestGroup with 19.1" "Tumorkonferenz Therapieempfehlung Typ and specific agents"