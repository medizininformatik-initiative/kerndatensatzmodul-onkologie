Profile: MII_PR_Onko_Histologie_ICDO3
Parent: Observation
Id: mii-pr-onko-histologie-icdo3
Title: "MII PR Onkologie Histologie ICD-O-3"
Description: "Histologie-Kodierung nach ICD-0 für die Verwendung von Folgediagnostik. Bei der histologischen Beurteilung des Primärtumors sind die histologischen Informationen direkt über die Condition-Ressource abgebildet."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* code MS
* code ^short = "Histologische Bewertung nach ICD-0"
* code.coding MS
* code.coding = $LOINC#31205-8 
* subject 1.. MS
* subject only Reference(Patient)
* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from $ICDO3 (required)
* bodySite MS
* bodySite 0..1
* bodySite.coding from $ICDO3 (required)
* specimen MS 
* specimen 1..1
* specimen only Reference(MII_PR_Onko_Specimen)
 
Mapping: FHIR-oBDS-Histologie-ICD-O-3
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Histologie_ICDO3
* valueCodeableConcept.coding.code -> "6.3" "Morphologie-Code"
* valueCodeableConcept.coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* valueCodeableConcept.text -> "6.5" "Morphologie Freitext"
