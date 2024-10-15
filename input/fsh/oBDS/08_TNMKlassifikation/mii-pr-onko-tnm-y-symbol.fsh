Profile: MII_PR_Onko_TNM_y_Symbol
Parent: Observation
Id: mii-pr-onko-tnm-y-symbol
Title: "MII PR Onkologie TNM y-Symbol"
Description: "TNM-Klassifikation: TNM y-Symbol. Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* status MS
* code MS
* code = $LOINC#101658-3
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* insert Translation(effectiveDateTime ^short, de-DE, TNM-Datum )
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der TNM-Klassifikation nach 8.1 oBDS 2021 )

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept = $SCT#421755005
* valueCodeableConcept ^short = "y-Symbol"
* valueCodeableConcept ^definition = "Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte."
* valueCodeableConcept ^comment = "y = Klassifikation erfolgte während oder nach initialer multimodaler Therapie; (leer) = „native“ Klassifikation"
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
* insert Translation(valueCodeableConcept.coding ^short, de-DE, TNM y-Symbol )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, TNM Klassifikation nach/ während multimodaler Therapie nach 8.3 oBDS 2021 )

//* dataAbsentReason MS

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDS-TNM_y_Symbol
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_y_Symbol
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.3" "TNM y-Symbol"
