Profile: MII_PR_Onko_Systemische_Therapie
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-prozedur/StructureDefinition/Procedure 
Id: mii-pr-onko-systemische-therapie
Title: "MII PR Onkologie Systemische Therapie"
Description: "Systemische Therapie. Dieses Profil beschreibt eine Systemische Therapie für den oBDS. Da die Granularität der Anforderungen des oBDS nicht deckungsgleich mit den FHIR-Profilen für Medikation sind, wurde die Systemische Therapie als Prozedur umgesetzt"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532153/Strahlentherapie+ST+Typ
// Intention der systemischen Therapie  
* extension contains mii-ex-onko-strahlentherapie-intention named Intention 1..1 // hier ggfs. refactoring
* extension[Intention] MS

// Systemische Therapie Stellung zu operativer Therapie 
* extension contains MII_EX_Onko_Strahlentherapie_Stellung named Stellung 0.. // hier ggfs Refactoren auf ein gemeinsames Code System mit unterschiedlicheN Value Sets
* extension[Stellung] MS 

* code MS 

// Systemische Therapie Beginn und Ende
* performed[x] MS 
* performed[x] only Period // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performed[x].start 1..1 MS
* performed[x].end 0..1 MS
// Systemische Therapie Protokoll
* instantiatesUri MS // String

// Systemische Therapie Substanz
* usedCode MS 
// 0..* contains  --> Watchful Waiting hat z.B.gar keine Substanz
//* ATC Code or
//* String (one String per Medication)


// Systemische Therapie Ende Grund
* outcome MS
* outcome 0..1
//* outcome.coding.code from MII_VS_Onko_Strahlentherapie_Ende_Grund (required)


/*
Mapping
16.1 Intention der systemischen Therapie ---> extension
16.2 Systemische Therapie Stellung zu operativer Therapie  --> extension
16.3 Art der systemischen oder abwartenden Therapie -->
16.4 Systemische Therapie Protokoll 
16.5 Systemische Therapie Substanz
16.6 Systemische Therapie Beginn
16.7 Systemische Therapie Ende Grund 
16.8 Systemische Therapie Ende 
*/