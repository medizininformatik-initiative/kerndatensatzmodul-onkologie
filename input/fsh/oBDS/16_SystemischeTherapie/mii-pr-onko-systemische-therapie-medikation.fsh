Profile: MII_PR_Onko_Systemische_Therapie_Medikation
Parent: MedicationStatement // still have to change to MII Medication Statement https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Id: mii-pr-onko-systemische-therapie-medikation
Title: "MII PR Onkologie Systemische Therapie Medikation"
Description: "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t

* medication[x] 1..1 MS
* partOf 1..* MS 
* partOf only Reference(Procedure or MedicationAdministration)
* note MS



// Systemische Therapie Beginn und  --> ggfs. dupliziert im MedicationStatement oder MedicationAdministration
* effective[x] MS 
* effective[x] 1..1 // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* effectivePeriod.start 0..1 MS
* effectivePeriod.end 0..1 MS
* effectiveDateTime 0..1 MS  // falls es einmalige Anwendungen / Protokolle gibt


Mapping: FHIR-oBDS-Systemische_Therapie_Medikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Systemische_Therapie_Medikation
* medication -> "16.4" "Systemische Therapie Protokoll"
* note.text -> "16.6" "Systemische Therapie Substanz"
