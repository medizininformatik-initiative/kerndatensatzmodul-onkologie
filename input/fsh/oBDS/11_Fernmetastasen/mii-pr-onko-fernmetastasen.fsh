Profile: MII_PR_Onko_Fernmetastasen
Parent: Observation
Id: mii-pr-onko-fernmetastasen
Title: "MII PR Onkologie Fernmetastasen"
Description: "OBDS Beschreibung von Fernmetastasen (Lokalisation und Datum)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* code MS
* code 1..1
* code.coding = $SCT#385421009

// 11.1 Lokalisation von Fernmetastase(n) 
* bodySite MS
* bodySite 1..1
* bodySite from $mii-vs-onko-fernmetastasen

// 11.2 Datum der diagnostischen Sicherung von Fernmetastasen 
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 1.. MS