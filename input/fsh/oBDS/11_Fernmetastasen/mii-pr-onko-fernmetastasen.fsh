Profile: MII_PR_Onko_Fernmetastasen
Parent: Observation 
Id: mii-pr-onko-fernmetastasen
Title: "MII PR Onkologie Fernmetastasen"
Description: "OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft


* subject 1..1 MS
* subject only Reference(Patient)

* code MS
* code 1..1
* code.coding = $SCT#385421009

// 11.1 Lokalisation von Fernmetastase(n) 
* bodySite MS
* bodySite 1..1
* bodySite from mii-vs-onko-fernmetastasen

// 11.2 Datum der diagnostischen Sicherung von Fernmetastasen 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS  // hier 1..1, wenn bei bodySite auch 1..1 -> es steht dann eine Observation für eine Metastase

Mapping: FHIR-oBDS-MII-PR-Onko-Fernmetastasen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Fernmetastasen
* -> "11" "Fernmetastasen"
* bodySite -> "11.1" "Lokalisation von Fernmetastase(n)"
* effectiveDateTime -> "11.2" "Datum der diagnostischen Sicherung von Fernmetastasen" 
