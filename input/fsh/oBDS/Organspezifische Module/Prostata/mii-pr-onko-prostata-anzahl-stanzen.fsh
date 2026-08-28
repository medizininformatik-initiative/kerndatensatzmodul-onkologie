Profile: MII_PR_Onko_Prostata_Anzahl_Stanzen
Parent: Observation
Id: mii-pr-onko-prostate-anzahl-stanzen
Title: "MII PR Onkologie Prostata Anzahl Stanzen"
Description: "Dieses Profil beschreibt die Anzahl Stanzen einer Prostata-Biopsie oder eines Prostata-Exzisionspräparates in der Onkologie"
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
* code.coding = $LNC#44652-6 "Total number of cores in Tissue core" 


// P4 Anzahl der Stanzen 
// ggfs. zukünftig mit FHIR Search Parameter Specimen.count. Die Frage ist dann, in welchem Kontext. Am besten vom Patho-Report. 

* value[x] MS
* value[x] only integer
* valueInteger MS
* insert Label(valueInteger, Anzahl Stanzen, Anzahl Stanzen einer Prostata-Biopsie)
* insert Translation(valueInteger ^short, de-DE, Anzahl Stanzen )
* insert Translation(valueInteger ^definition, de-DE, Anzahl Stanzen Prostata-Biopsie)

// Studienteilnahme Datum
* effective[x] MS
* effective[x] only dateTime
* effectiveDateTime 0..1 MS
* insert Label(effectiveDateTime, Datum der Probenentnahme, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats )
* insert Translation(effectiveDateTime ^short, de-DE, Datum der Probenentnahme)
* insert Translation(effectiveDateTime ^definition, de-DE, Datum der Probenentnahme der Prostata-Biopise oder des Prostata-Exzisats)


