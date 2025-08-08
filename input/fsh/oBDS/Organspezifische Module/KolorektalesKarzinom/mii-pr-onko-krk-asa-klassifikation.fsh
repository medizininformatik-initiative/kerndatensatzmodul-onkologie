Profile: MII_PR_Onko_KRK_ASA_Klassifikation
Parent: Observation
Id: mii-pr-onko-krk-asa-klassifikation
Title: "MII PR Onkologie KRK ASA-Klassifikation"
Description: "Dieses Profil beschreibt die ASA-Klassifikation (American Society of Anesthesiologists Physical Status Classification) beim Kolorektalen Karzinom gemäß oBDS KR9"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1 
* code ^definition = "ASA-Klassifikation zur Bewertung des präoperativen Risikos gemäß American Society of Anesthesiologists Physical Status Classification System. oBDS KR9"
* code ^short = "ASA-Klassifikation"
* code.coding = $LNC#97816-3 "American society of anesthesiologists morbidity state"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from MII_VS_Onko_KRK_ASA_oBDS (required)

* insert Label(valueCodeableConcept, ASA-Klassifikation, ASA-Klassifikation zur präoperativen Risikobewertung - ASA I-VI)
* insert Translation(valueCodeableConcept ^short, de-DE, ASA-Klassifikation)
* insert Translation(valueCodeableConcept ^definition, de-DE, ASA-Klassifikation zur präoperativen Risikobewertung gemäß oBDS KR9)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS

Mapping: FHIR-oBDS-KRK-ASA
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_KRK_ASA_Klassifikation
* -> "KR9" "ASA-Klassifikation"
* valueCodeableConcept.coding.code -> "KR9" "ASA-Klassifikation (ASA I bis VI, U = Unbekannt)"
* effectiveDateTime -> "KR9" "Datum der ASA-Bewertung"