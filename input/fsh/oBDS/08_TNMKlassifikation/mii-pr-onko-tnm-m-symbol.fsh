Profile: MII_PR_Onko_TNM_m_Symbol
Parent: Observation
Id: mii-pr-onko-tnm-m-symbol
Title: "MII PR Onkologie TNM m-Symbol"
Description: "TNM-Klassifikation: TNM m-Symbol. Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* status MS
* code MS
* code = $LOINC#42030-7
* code.coding.code 1.. MS
* code.coding.system 1.. MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter MS
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime MS
* effectiveDateTime obeys tnm-datum
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept from MII_VS_Onko_TNM_m_Symbol (required)
* valueCodeableConcept ^short = "m-Symbol"
* valueCodeableConcept ^definition = "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk."
* valueCodeableConcept ^comment = "(m) = multiple Tumoren ohne Angabe der Zahl; (Zahl) = Anzahl der multiplen Tumoren; (leer) = keine multiplen Tumoren"
* valueCodeableConcept.coding.code 1.. MS
* valueCodeableConcept.coding.system 1.. MS

// Referenz zu Verlauf-Observation
* derivedFrom 0..1 MS
* derivedFrom only Reference(MII_PR_Onko_Verlauf)

Mapping: FHIR-oBDS-TNM_m_Symbol
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_TNM_m_Symbol
* effectiveDateTime -> "8.1" "TNM Datum"
* valueCodeableConcept.coding.code -> "8.10" "TNM m-Symbol"