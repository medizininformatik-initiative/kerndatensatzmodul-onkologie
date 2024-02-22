Profile: MII_PR_Onko_Histologie
Parent: Observation
Id: mii-pr-onko-histologie
Title: "MII PR Onkologie Histologie"
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
* valueCodeableConcept from $ICDO3 (required)
* bodySite MS
* bodySite 1..1
* bodySite.coding from $ICDO3 (required)
 
Mapping: FHIR-oBDS-Histologie-Verlauf
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Histologie
* bodySite -> "6.11" "Befund"
