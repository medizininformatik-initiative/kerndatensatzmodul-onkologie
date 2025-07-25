Profile: MII_PR_Onko_Melanom_Ulzeration
Parent: Observation
Id: mii-pr-onko-melanom-ulzeration
Title: "MII PR Onkologie Melanom Ulzeration"
Description: "Dieses Profil beschreibt die Ulzeration beim Malignen Melanom der Haut"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1 
* code ^definition = "Pathologisches Kriterium der Ulzeration beim Malignen Melanom der Haut"
* code ^short = "Ulzeration"
* code.coding = $SCT#6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept from MII_VS_Onko_Melanom_Ulzeration (required)

* insert Label (valueCodeableConcept, Ulzeration, Vorliegen einer Ulzeration)
* insert Translation(valueCodeableConcept ^short, de-DE, Ulzeration)
* insert Translation(valueCodeableConcept ^definition, de-DE, Pathologisches Kriterium der Ulzeration - wird bei pT1b benötigt - therapierelevant; Ulzeration ist ein Merkmal für das biologische Verhalten)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Untersuchung, Datum der histopathologischen Untersuchung)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Untersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der histopathologischen Untersuchung zur Bestimmung der Ulzeration)

* dataAbsentReason MS
* dataAbsentReason ^short = "Grund für fehlende Angabe"
* dataAbsentReason ^definition = "Grund warum die Ulzeration nicht bestimmbar war"

* method MS
* method.coding MS
* method.coding = $SCT#117617002 "Immunohistochemistry procedure"

Mapping: FHIR-oBDS-Melanom-Ulzeration
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Melanom_Ulzeration
* -> "MM4" "Ulzeration"
* valueCodeableConcept -> "MM4" "Ulzeration: J = Ja, N = Nein, U = Unbekannt"
* effectiveDateTime -> "MM4" "Datum der histopathologischen Untersuchung"