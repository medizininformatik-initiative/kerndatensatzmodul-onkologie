Profile: MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen
Parent: Observation
Id: mii-pr-onko-prostate-anzahl-positive-stanzen
Title: "MII PR Onkologie Prostata Anzahl positiver Stanzen"
Description: "Dieses Profil beschreibt die Anzahl positiver Stanzen einer Prostata-Biopsie in der Onkologie"
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
* code ^definition = "Anzahl Stanzen der Prostata-Biopsie"
* code ^short = "Anzahl Stanzen"
* code.coding = $LNC#44651-8 "Tissue cores.positive.carcinoma in Tissue core" 


// P5 Anzahl der positiven Stanzen 
// ggfs. zukünftig mit FHIR Search Parameter Specimen.count. Die Frage ist dann, in welchem Kontext. Am besten vom Patho-Report. 



* value[x] MS
* value[x] only integer
* valueInteger MS
* valueInteger 1..1
* insert Label(valueInteger, Primäres Gleason-Pattern, Primäres Gleason-Pattern einer Prostata-Biopsie oder Operation)
* insert Translation(valueInteger ^short, de-DE, Primäres Gleason-Pattern )
* insert Translation(valueInteger ^definition, de-DE, Primäres Gleason-Pattern einer Prostata-Biopsie oder Operation)

// Studienteilnahme Datum
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Probenentnahme, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Probenentnahme)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats)


/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/