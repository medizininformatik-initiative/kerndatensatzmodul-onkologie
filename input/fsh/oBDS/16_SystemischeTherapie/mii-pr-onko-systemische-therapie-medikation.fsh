Profile: MII_PR_Onko_Systemische_Therapie_Medikation
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-medikation/StructureDefinition/MedicationStatement
Id: mii-pr-onko-systemische-therapie-medikation
Title: "MII PR Onkologie Systemische Therapie Medikation"
Description: "Medikation der Systemische Therapie. Dieses Profil beschreibt die konkreten Medikationen, die im Rahmen der systemische Therapie für den oBDS dokumentiert werden.  Da im oBDS systemische und abwartende Therapie in einem Feld gruppiert sind, werden die Daten für die Systemische und abwartende Therapie sowohl über eine FHIR-Prozedur (systemisch und abwartend) als auch als FHIR-Medikation abgedeckt. "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532379/Systemische+Therapie+SYST+Typ // t
* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)


* medication[x] 1..1 MS
* medication[x] ^short = "Wirkstoff der systemischen Medikation"
* medication[x] ^definition = "Wirkstoff der systemischen onkologischen Medikation. Nach Möglichkeit als ATC-kodiert anzugeben. Wirkstoffe sind einzeln zu kodieren. Kombinationstherapien können über MedicationStatement.partOf in übergeordneten MedicationStatements gruppiert werden - in diesem Fall ist bei jedem Wirkstoff unter `MedicationStatement.note.text` das Kürzel des (z.B. chemotherapeutischen) Protokolls zu hinterlegen."
* insert Translation(medication[x] ^short, de-DE, Wirkstoff/ Substanz der systemischen Medikation)
* insert Translation(medication[x] ^definition, de-DE, Wirkstoff / Substanz der systemischen onkologischen Medikation gemäß 16.4  oBDS 2021. )

* partOf 1..* MS 
* partOf ^slicing.discriminator[0].type = #profile
* partOf ^slicing.discriminator[=].path = "resolve()"
* partOf ^slicing.rules = #open
* partOf contains 
    systemischeTherapie 1..
* partOf[systemischeTherapie] only Reference(Procedure)
* note MS // 
* note.text MS 
* note.text ^short = "Protokoll"
* note.text ^definition = "Protokoll der systemischen Medikation. Bei Angabe eines Schemas sind alle Wirkstoffe in einzelnen Ressourcen unter MedicationStatement.medication[x] gesondert zu kodieren "
* insert Translation(note.text ^short, de-DE, Protokoll der systemischen Medikation)
* insert Translation(note.text ^definition, de-DE, Protokoll der systemischen Medikation gemäß 16.6 oBDS 2021. )


// Systemische Therapie Beginn und Ende --> ggfs. dupliziert im MedicationStatement 
* effective[x] MS 
* effective[x] 1..1 
* effectivePeriod.start 0..1 MS
* effectivePeriod.end 0..1 MS
* effectiveDateTime 0..1 MS  // falls es einmalige Anwendungen / Protokolle gibt
* basedOn MS
* basedOn only Reference(CarePlan)
* insert Translation(effectivePeriod.start ^short, de-DE, Startdatum der systemischen Medikation)
* insert Translation(effectivePeriod.start ^definition, de-DE, Startdatum der systemischen Medikation gemäß 16.7 oBDS 2021. )
* insert Translation(effectivePeriod.end ^short, de-DE, Enddatum der systemischen Medikation)
* insert Translation(effectivePeriod.end ^definition, de-DE, Enddatum der systemischen Medikation gemäß 16.9 oBDS 2021. )


Mapping: FHIR-oBDS-Systemische_Therapie_Medikation
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Systemische_Therapie_Medikation
* medicationCodeableConcept.coding.code -> "16.4" "Systemische Therapie Substanz"
* note.text -> "16.6" "Systemische Therapie Protokoll"
