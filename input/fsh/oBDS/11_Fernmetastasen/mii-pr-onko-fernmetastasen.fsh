Profile: MII_PR_Onko_Fernmetastasen
Parent: Observation 
Id: mii-pr-onko-fernmetastasen
Title: "MII PR Onkologie Fernmetastasen"
Description: "OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* code MS
* code 1..1 
* code ^definition = "SCTID: 385421009 | Site of distant metastasis"
* code ^short = "Lokalisation einer Fernmetastase laut oBDS"
* code.coding = $SCT#385421009 
* code.coding 
// 11.1 Lokalisation von Fernmetastase(n) 
* bodySite MS
* bodySite 1..1
* bodySite ^short = "Lokalisation der Fernmetastase laut oBDS/TNM-Kodierung"
* bodySite ^definition = "weitere Lokalisiationen sind als einzelne Ressourcen zu kodieren"
* bodySite from mii-vs-onko-fernmetastasen
* bodySite.coding.system MS
* bodySite.coding.code MS

// 11.2 Datum der diagnostischen Sicherung von Fernmetastasen 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1..1 MS  // hier 1..1, wenn bei bodySite auch 1..1 -> es steht dann eine Observation für eine Metastase
* effectiveDateTime ^definition = "Gibt an, wann die Fernmetastase festgestellt wurde."
* effectiveDateTime ^short = "Datum der diagnostischen Sicherung von Fernmetastasen"
// Referenz zu Verlauf-Observation
* derivedFrom 0..1 MS
* derivedFrom only Reference(MII_PR_Onko_Verlauf)

// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose)

Mapping: FHIR-oBDS-MII-PR-Onko-Fernmetastasen
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Fernmetastasen
* -> "11" "Fernmetastasen"
* bodySite -> "11.1" "Lokalisation von Fernmetastase(n)"
* effectiveDateTime -> "11.2" "Datum der diagnostischen Sicherung von Fernmetastasen" 
