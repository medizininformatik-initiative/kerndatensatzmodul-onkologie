Profile: MII_PR_Onko_Systemische_Therapie_Medikation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Id: mii-pr-onko-systemische-therapie-medikation
Title: "MII PR Onkologie Systemische Therapie Medikation"
Description: "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t

* subject 1..1 MS
* subject only Reference(Patient)

* medication[x] 1..1 MS
* partOf 1..* MS 
* partOf only Reference(Procedure)
* note MS // Angabe eines Schemas ist optional. Bei Angabe eines SChemas sind alle Wirkstoffe unter medication gesondert zu kodieren 
// vielleicht aber Schema auch als medicationCodeableConcept.text

// Systemische Therapie Beginn und Ende --> ggfs. dupliziert im MedicationStatement 
* effective[x] MS 
* effective[x] 1..1 // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* effectivePeriod.start 0..1 MS
* effectivePeriod.end 0..1 MS
* effectiveDateTime 0..1 MS  // falls es einmalige Anwendungen / Protokolle gibt


Mapping: FHIR-oBDS-Systemische_Therapie_Medikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Systemische_Therapie_Medikation
* medicationCodeableConcept.coding.code -> "16.4" "Systemische Therapie Substanz"
* note.text -> "16.6" "Systemische Therapie Protokoll"
