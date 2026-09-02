// Tumormarker-Profil (beads 14w.15): erbt vom KDS-Modul Laborbefund und
// schraenkt Observation.code auf die kuratierte Tumormarker-Liste ein.
// Binding-Ort-Entscheid (User 2026-08-28): Laborwerte werden ueber das
// KDS-Modul Laborbefund gefuehrt; dieses Profil ergaenzt lediglich die
// onkologische Auswahlliste und den Diagnosebezug.
Profile: MII_PR_Onko_Tumormarker
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-labor/StructureDefinition/ObservationLab
Id: mii-pr-onko-tumormarker
Title: "MII PR Onkologie Tumormarker"
Description: "Tumormarker-Bestimmung im Rahmen einer onkologischen Erkrankung. Das Profil leitet vom Laboruntersuchungs-Profil des KDS-Moduls Laborbefund ab und schraenkt den LOINC-Code auf die kuratierte Tumormarker-Liste ein (extensible). Fachlicher Hintergrund und die Zuordnung Marker zu zulaessiger ICD-O-Morphologie nach ENCR Table 4: siehe IG-Seite Tumormarker."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfileUK
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker"
* insert Translation(^title, de-DE, MII PR Onkologie Tumormarker)

* code.coding MS
// Das Parent-Profil (Laboruntersuchung) sliced code.coding nicht — Slicing-Intro
// daher hier definieren.
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains tumormarker-loinc 0..1 MS
* code.coding[tumormarker-loinc] from MII_VS_Onko_Tumormarker_LOINC (extensible)
* code.coding[tumormarker-loinc].system = $LNC
* code.coding[tumormarker-loinc].system 1.. MS
* code.coding[tumormarker-loinc].code 1.. MS
* insert Label(code.coding[tumormarker-loinc], Tumormarker als LOINC-Code, LOINC-Code des bestimmten Tumormarkers aus der kuratierten onkologischen Auswahlliste)
* insert Translation(code.coding[tumormarker-loinc] ^short, de-DE, Tumormarker als LOINC-Code)

// Bezug zur onkologischen Diagnose (Muster der uebrigen Onko-Observations)
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)
* focus ^short = "Bezug zur onkologischen Diagnose"
* insert Translation(focus ^short, de-DE, Bezug zur onkologischen Diagnose)

Mapping: FHIR-oBDS-Tumormarker
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Tumormarker
* -> "kein oBDS-Feld" "Tumormarker sind im oBDS nicht als eigenes Datenfeld gefuehrt; sie begruenden die Diagnosesicherung 4 (spezifische Tumormarker, oBDS 5.7)."
