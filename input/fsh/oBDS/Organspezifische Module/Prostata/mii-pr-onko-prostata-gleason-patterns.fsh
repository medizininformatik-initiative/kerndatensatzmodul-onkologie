Profile: MII_PR_Onko_Prostata_Gleason_Pattern
Parent: Observation
Id: mii-pr-onko-prostate-gleason-patterns
Title: "MII PR Onkologie Prostata Gleason Pattern"
Description: "Dieses Profil beschreibt ein Gleason Pattern in der Onkologie. Es wird für das primäre, das sekundäre und das tertiäre Pattern gleichermaßen verwendet; welches Pattern gemeint ist, ergibt sich aus Observation.code."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
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
// GH #259: SNOMED CT verpflichtend, LOINC optional als Zweitkodierung
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..1 MS and
    loinc 0..1 MS
* code.coding[snomed] from $mii-vs-onko-prostata-gleason-primary-secondary-tertiary (required)
* code.coding[snomed].system = $SCT
* code.coding[snomed].system 1.. MS
* code.coding[snomed].code 1.. MS
* code.coding[loinc] from MII_VS_Onko_Prostata_Gleason_Pattern_LOINC (required)
* code.coding[loinc].system = $LNC
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS


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



Mapping: FHIR-oBDS-ProstataGleasonPattern
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Prostata_Gleason_Pattern
* -> "P1 (Komponente)" "Gleason Patterns (primär/sekundär/tertiär); keine eigene oBDS-Feldnummer"
* code -> "P1 (Komponente)" "Art des Gleason Patterns (primär/sekundär/tertiär)"
* valueCodeableConcept -> "P1 (Komponente)" "Gleason Pattern Wert (1-5, ab 3 maligne)"
* effectiveDateTime -> "P3" "Datum der Stanzen"
