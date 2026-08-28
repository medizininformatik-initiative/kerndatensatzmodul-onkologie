Profile: MII_PR_Onko_Melanom_Sicherheitsabstand
Parent: Observation
Id: mii-pr-onko-melanom-sicherheitsabstand
Title: "MII PR Onkologie Melanom Sicherheitsabstand"
Description: "Dieses Profil beschreibt den minimalen Sicherheitsabstand zum Primärtumor beim Malignen Melanom basierend auf oBDS Feld MM1. Bei nicht beurteilbaren Fällen (oBDS Wert -1) wird dataAbsentReason verwendet statt valueQuantity."
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

* code MS
* code 1..1 
* code ^definition = "Minimaler Sicherheitsabstand zum Primärtumor beim Malignen Melanom gemäß oBDS MM1"
* code ^short = "Sicherheitsabstand Primärtumor"
* code.coding = $SCT#396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"

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

* insert Label (valueQuantity, Sicherheitsabstand in mm, Minimaler Sicherheitsabstand zum Primärtumor in mm gemäß oBDS MM1)
* insert Translation(valueQuantity ^short, de-DE, Sicherheitsabstand in mm)
* insert Translation(valueQuantity ^definition, de-DE, Minimaler Sicherheitsabstand zum Primärtumor in mm nach definitivem operativem Eingriff gemäß oBDS MM1. Wert 0 entspricht lokal R1 oder R2 bzw. marginal)

* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Messung, Datum der Messung des Sicherheitsabstands)
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Messung)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Messung des Sicherheitsabstands)

* dataAbsentReason MS
* dataAbsentReason ^short = "Grund für fehlende Messung"
* dataAbsentReason ^definition = "Grund warum der Sicherheitsabstand nicht bestimmt werden konnte (z.B. nicht beurteilbar). Wird verwendet wenn oBDS Wert -1 (nicht beurteilbar) vorliegt."

* obeys mii-onko-melanom-sicherheitsabstand-1

Invariant: mii-onko-melanom-sicherheitsabstand-1
Description: "Entweder muss valueQuantity oder dataAbsentReason vorhanden sein"
Severity: #error
Expression: "valueQuantity.exists() or dataAbsentReason.exists()"

Mapping: FHIR-oBDS-Melanom-Sicherheitsabstand
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Melanom_Sicherheitsabstand
* -> "MM1" "Sicherheitsabstand Primärtumor"
* valueQuantity.value -> "MM1" "Minimaler Sicherheitsabstand in mm"
* effectiveDateTime -> "MM1" "Datum der Messung des Sicherheitsabstands"