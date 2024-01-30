Profile: MII_PR_Onko_Systemische_Therapie_Medikation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement 
Id: mii-pr-onko-systemische-therapie
Title: "MII PR Onkologie Systemische Therapie Medikation"
Description: "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t

* category MS // MII_Code OPS oder SNOMED --> Erweiterung Art der systemischen oder abwrtenden teherapie oBDS CodeSystem als weiteren Slice ohne Erweiterung
* medication 1..* MS
* medicationCodeableConcept.coding from
* partOf 1..* MS 
* partOf only Reference(Procedure, MedicationAdministration)


// Systemische Therapie Beginn und  --> ggfs. dupliziert im MedicationStatement oder MedicationAdministration
* effective[x] MS 
* effective[x] 1..1 // wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* effectivePeriod.start 0..1 MS
* effectivePeriod.end 0..1 MS
* effectiveDateTime 0..1 MS  // falls es einmalige Anwendungen / Protokolle gibt

/*
Mapping
16.4 Systemische Therapie Protokoll 
16.5 Systemische Therapie Substanz

*/

