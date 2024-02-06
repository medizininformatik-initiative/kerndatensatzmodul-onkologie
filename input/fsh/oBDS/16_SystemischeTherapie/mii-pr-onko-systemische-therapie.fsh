Profile: MII_PR_Onko_Systemische_Therapie
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
Id: mii-pr-onko-systemische-therapie
Title: "MII PR Onkologie Systemische Therapie"
Description: "Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t
// Intention der systemischen Therapie  
* extension contains mii-ex-onko-systemische-therapie-intention named Intention 1..1 // hier ggfs. refactoring
* extension[Intention] MS

// Systemische Therapie Stellung zu operativer Therapie 
* extension contains mii-ex-onko-systemische-therapie-stellung named Stellung 0.. // hier ggfs Refactoren auf ein gemeinsames Code System mit unterschiedlicheN Value Sets
* extension[Stellung] MS 

* code 1..1  // slicen! 
* code.coding from $mii-vs-onko-systemische-therapie-art
* code.coding.code 1..1
* code.coding.system 1..1

// Systemische Therapie Beginn und  --> ggfs. dupliziert im MedicationStatement oder MedicationAdministration
* performed[x] MS 
* performed[x] only Period // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performed[x].start 1..1 MS
* performed[x].end 0..1 MS
// Systemische Therapie Protokoll//
//umgesetzt im Therapiemodul  wie sieht das mit dem Slicen aus?

// Systemische Therapie Substanz --> rauss, wir düber medicationprofile abgebildet
// 0..* contains  --> Watchful Waiting hat z.B.gar keine Substanz
//* ATC Code or
//* String (one String per Medication)


// Systemische Therapie Ende Grund
* outcome MS
* outcome 0..1
* outcome.coding.code from MII_VS_Onko_Strahlentherapie_Ende_Grund (required)


Mapping: FHIR-oBDS-Systemische_Therapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Systemische_Therapie
* -> "16" "Systemische Therapie"
* extension[Intention].valueCodeableConcept.coding.code -> "16.1" "Intention der systemischen Therapie"
* extension[Stellung].valueCodeableConcept.coding.code -> "16.2" "Systemische Therapie Stellung zu operativer Therapie" 
* code.coding.code -> "16.3" "Art der systemischen oder abwartenden Therapie"
* performed[x].start -> "16.6" "Systemische Therapie Beginn"
* performed[x].end -> "16.8" "Systemische Therapie Ende"
* outcome.coding.code -> "16.7" "Systemische Therapie Ende Grund"

