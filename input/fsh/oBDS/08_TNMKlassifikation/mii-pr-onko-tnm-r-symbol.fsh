Profile: MII_PR_Onko_TNM_r_Symbol
Parent: Observation
Id: mii-pr-onko-tnm-r-symbol
Title: "MII PR Onkologie TNM r-Symbol"
Description: "TNM-Klassifikation: TNM r-Symbol. Gibt an, ob die Klassifikation ein Rezidiv beurteilt."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* status MS
* code MS
* code = $LOINC#101659-1
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* encounter MS
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept = $SCT#421188008
* valueCodeableConcept ^short = "r-Symbol"
* valueCodeableConcept ^definition = "Gibt an, ob die Klassifikation ein Rezidiv beurteilt."
* valueCodeableConcept ^comment = "r = Klassifikation erfolgte zur Beurteilung eines Rezidivs; (leer) = „native“ Klassifikation vor Eintreten eines Rezidivs"
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS
//* dataAbsentReason MS

// Referenz zu Verlauf-Observation
* derivedFrom 0..1 MS
* derivedFrom only Reference(MII_PR_Onko_Verlauf)

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)


Mapping: FHIR-oBDS-TNM_r_Symbol
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_r_Symbol
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.4" "TNM r-Symbol"