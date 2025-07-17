Profile: MII_PR_Onko_Prostata_Clavien_Dindo
Parent: Observation 
Id: mii-pr-onko-prostate-clavien-dindo
Title: "MII PR Onkologie Clavien Dindo"
Description: "Dieses Profil beschreibt den Clavien-Dindo-Score für die Prostatektomie in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


* focus MS
* focus ^slicing.discriminator.type = #type
* focus ^slicing.discriminator.path = "this.resolve()"
* focus ^slicing.rules = #open
* focus ^slicing.description = "Slice to differentiate between focus condition and focus procedure"
* focus ^slicing.ordered = false

* focus contains Diagnose 1..1 MS and Operation 1..1 MS
* focus[Diagnose] only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* focus[Operation] only Reference(MII_PR_Onko_Operation)

* method = $SCT#789278003 "Clavien-Dindo classification (assessment scale)"


* code MS
* code 1..1 
* code ^definition = "Posteroperative Komplikationssschwere nach Clavien-Dindo für die Prostatektomie in der Onkologie"
* code ^short = "Postoperative Komplikation nach Clavien-Dindo"
* code.coding = $SCT#789279006 "Clavien-Dindo classification grade (observable entity)"
* specimen MS
* specimen 0..1

// P7 Anzahl der Ca-Befall Stanzen 


* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept.coding 1..*
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = ""
* valueCodeableConcept.coding ^slicing.ordered = false

* valueCodeableConcept.coding contains ClavienDindo 0..1 MS and OBDSPostOPKompl 0..1 MS
* valueCodeableConcept.coding[ClavienDindo] from $mii-vs-onko-prostata-clavien-dindo (required)
* valueCodeableConcept.coding[OBDSPostOPKompl] from $mii-vs-onko-prostata-postsurgical-complications (required)

* insert Label(valueCodeableConcept.coding[ClavienDindo], PSA-Wert, PSA-Wert aus Blut/Plasma in ng/ml)
* insert Translation(valueCodeableConcept.coding ^short, de-DE, PSA-Wert )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, PSA-Wert aus Blut/Plasma in ng/ml)



/*
Mapping: FHIR-oBDS-Studienteilnahme
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Studienteilnahme
* -> "24" "Studienteilnahme"
*  valueCodeableConcept.coding.code -> "24.1" "Studienteilnahme Status"
*  effectiveDateTime -> "24.2" "Studienteilnahme Datum"

*/