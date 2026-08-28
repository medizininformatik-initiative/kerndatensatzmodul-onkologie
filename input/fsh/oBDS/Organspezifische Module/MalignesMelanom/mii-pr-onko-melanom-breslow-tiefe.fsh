Profile: MII_PR_Onko_Melanom_Breslow_Tiefe
Parent: Observation
Id: mii-pr-onko-melanom-breslow-tiefe
Title: "MII PR Onkologie Melanom Breslow Tiefe"
Description: "Dieses Profil beschreibt die Breslow-Tumordicke beim Malignen Melanom der Haut"
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
* code ^definition = "Breslow-Tumordicke beim Malignen Melanom der Haut"
* code ^short = "Breslow Tiefe"
* code.coding = $SCT#106243009 "Breslow depth staging for melanoma of skin (observable entity)"

* value[x] MS
* value[x] only Quantity
* valueQuantity MS
* valueQuantity.code 1.. MS
* valueQuantity.code = #mm
* valueQuantity.system 1.. MS
* valueQuantity.system = $UCUM (exactly)
* valueQuantity.unit 1.. MS
* valueQuantity.unit = "mm"
* valueQuantity.value 0.. MS

* insert Label (valueQuantity, Breslow Tiefe in mm, Breslow-Tumordicke in mm beim Malignen Melanom)
* insert Translation(valueQuantity ^short, de-DE, Breslow Tiefe in mm)
* insert Translation(valueQuantity ^definition, de-DE, Breslow-Tumordicke in Millimetern gemessen von der Granularschicht der Epidermis bis zur tiefsten Stelle der Tumorinvasion)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Messung, Datum der histopathologischen Messung)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Messung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der histopathologischen Messung der Breslow-Tiefe)

* dataAbsentReason MS
* dataAbsentReason ^short = "Grund für fehlende Messung"
* dataAbsentReason ^definition = "Grund warum die Breslow-Tiefe nicht bestimmbar war (z.B. ulzeriert, nicht messbar)"

* method MS
* method.coding MS
* method.coding = $SCT#117617002 "Immunohistochemistry procedure"

Mapping: FHIR-oBDS-Melanom-Breslow-Tiefe
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Melanom_Breslow_Tiefe
* -> "MM2" "Tumordicke (Breslow)"
* valueQuantity.value -> "MM2" "Tumordicke nach Breslow in mm"
* effectiveDateTime -> "MM2" "Datum der histopathologischen Untersuchung"