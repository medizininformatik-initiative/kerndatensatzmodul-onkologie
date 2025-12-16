Profile: MII_PR_Onko_Prostata_Gleason_Pattern
Parent: Observation
Id: mii-pr-onko-prostate-gleason-patterns
Title: "MII PR Onkologie Prostata Gleason Primär"
Description: "Dieses Profil beschreibt einen primären Gleasonscore in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* specimen 0..1 MS

* code MS
* code 1..1 
* code ^definition = "Primäres, sekundäres oder tertiäres Gleason Pattern. Das Pattern kann einen Wert zwischen 1-5 annehmen, wobei erst Werte ab 3 als maligne gelten. Das primäre Pattern ist das häufigste, das sekundäre das zweithäufigste. In seltenen Fällen wird auch ein tertiäres Pattern angegeben. Der Gleason Score ist ein histopathologisches Klassifikationssystem zur Beurteilung der Morphologie von Adenokarzinomen der Prostata und wird aus der Summe von primären und sekundärem Pattern berechnet."
* code ^short = "Gleason Pattern (primär, sekundär, tertiär)"
* code.coding from $mii-vs-onko-prostata-gleason-primary-secondary-tertiary (required)
// alterantiv * code.coding[+] = $LNC#44641-9 "Gleason pattern.primary in Prostate tumor"


* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from $mii-vs-onko-prostata-gleason-patterns (extensible)
* valueCodeableConcept.coding.code 1.. MS
* insert Label(valueCodeableConcept.coding,  Gleason-Pattern,  Gleason-Pattern einer Prostata-Biopsie oder Operation)
* insert Translation(valueCodeableConcept.coding ^short, de-DE,  Gleason-Pattern )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE,  Gleason-Pattern einer Prostata-Biopsie oder Operation)

// P3 Datum der Stanzen
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