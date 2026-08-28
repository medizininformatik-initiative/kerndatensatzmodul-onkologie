Profile: MII_PR_Onko_Melanom_LDH
Parent: Observation
Id: mii-pr-onko-melanom-ldh
Title: "MII PR Onkologie Melanom LDH"
Description: "Dieses Profil beschreibt die Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom"
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* category MS
* category 1..1
* category.coding MS
* category.coding = $observation-category#laboratory "Laboratory"

* code MS
* code 1..1 
* code ^definition = "Laktatdehydrogenase (LDH) Bestimmung beim Malignen Melanom"
* code ^short = "LDH Laborwert"
* code.coding MS
* code.coding from MII_VS_Onko_Melanom_LDH (required)

* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #U/L
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.unit = "U/L"
* valueQuantity.value 1.. MS

* insert Label (valueQuantity, LDH Wert, Laktatdehydrogenase Aktivität in U/L)
* insert Translation(valueQuantity ^short, de-DE, LDH Wert)
* insert Translation(valueQuantity ^definition, de-DE, Laktatdehydrogenase enzymatische Aktivität in Units pro Liter als prognostischer Marker beim Malignen Melanom)

* effective[x] only dateTime
* effectiveDateTime 1..1 MS
* insert Label(effectiveDateTime, Datum der Laboruntersuchung, Datum der LDH Bestimmung)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Laboruntersuchung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Laktatdehydrogenase Bestimmung)


* interpretation MS
* interpretation ^short = "Bewertung des LDH-Werts"
* interpretation ^definition = "Klinische Bewertung des LDH-Werts in Bezug auf Referenzbereich (normal, erhöht)"

* note MS
* note ^short = "Bemerkungen zur LDH-Bestimmung"
* note ^definition = "Zusätzliche Informationen zur LDH-Bestimmung oder Messmethode"

Mapping: FHIR-oBDS-Melanom-LDH
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Melanom_LDH
* -> "MM3" "LDH"
* valueQuantity.value -> "MM3" "LDH-Wert in U/L"
* valueQuantity.unit -> "MM3" "LDH Einheit (U/L)"
* effectiveDateTime -> "MM3" "Datum der LDH Bestimmung"
* interpretation -> "MM3 (Komponente)" "Bewertung des LDH-Werts (normal/erhöht); keine eigene oBDS-Feldnummer"