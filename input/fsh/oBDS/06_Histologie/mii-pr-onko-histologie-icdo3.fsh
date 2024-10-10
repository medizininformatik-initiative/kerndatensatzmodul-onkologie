Profile: MII_PR_Onko_Histologie_ICDO3
Parent: Observation
Id: mii-pr-onko-histologie-icdo3
Title: "MII PR Onkologie Histologie ICD-O-3"
Description: "Histologie-Kodierung nach ICD-0 für die Verwendung von Folgediagnostik. Bei der histologischen Beurteilung des Primärtumors sind die histologischen Informationen direkt über die Condition-Ressource abzubilden."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* code MS
* code ^short = "Histologische Bewertung nach ICD-0-3"
* code.coding MS
* code.coding = $LOINC#59847-4 
* effective[x] MS
* effective[x] only dateTime
* subject 1.. MS
* subject only Reference(Patient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from $ICDO3 (required)
* valueCodeableConcept.coding 0..1 MS
* valueCodeableConcept.text 0..1 MS



* bodySite.coding MS
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "$this"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains Seitenlokalisation 0..1 MS
* bodySite.coding[Seitenlokalisation] from mii-vs-onko-seitenlokalisation
* bodySite.coding[Seitenlokalisation].system 1.. MS
* bodySite.coding[Seitenlokalisation] ^patternCoding.system = $mii-cs-onko-seitenlokalisation
* bodySite.coding[Seitenlokalisation].code 1.. MS

* specimen MS 
* specimen 1..1
* specimen only Reference(MII_PR_Onko_Specimen)

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)
 
Mapping: FHIR-oBDS-Histologie-ICD-O-3
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Histologie_ICDO3
* effectiveDateTime -> "6.1" "Tumor Histologiedatum"
* valueCodeableConcept.coding.code -> "6.3" "Morphologie-Code"
* valueCodeableConcept.coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* valueCodeableConcept.text -> "6.5" "Morphologie Freitext"
