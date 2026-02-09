Profile: MII_PR_Onko_Prostata_Gleason_Grade_Group
Parent: Observation
Id: mii-pr-onko-prostate-gleason-grade-group
Title: "MII PR Onkologie Prostata Gleason Grade Group"
Description: "Dieses Profil beschreibt einen Gleasonscore in der Onkologie"
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
* code ^definition = "Gleason Grade Group. Die Gleason Grade Group ist aus dem Gleason Grade abgeleitet. Score ist ein histopathologisches Klassifikationssystem zur Beurteilung der Morphologie von Adenokarzinomen der Prostata und wird aus der Summe von primären und sekundärem Pattern berechnet."
* code ^short = "Gleason Grade Group"
* code.coding =  $SCT#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"


// P1 Gleason Score und Grade Group
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from MII_VS_Onko_Prostata_Gleason_Score (extensible)
* valueCodeableConcept.coding.code 1.. MS
* insert Label(valueCodeableConcept.coding,  Gleason-Score und Grade Group,  Gleason-Score und Grade Group einer Prostata-Biopsie oder Operation)
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Gleason-Score und Grade Group )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Gleason-Score und Grade Gr einer Prostata-Biopsie oder Operation)

// P3 Datum der Stanzen 
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