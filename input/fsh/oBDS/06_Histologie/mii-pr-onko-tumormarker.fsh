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
// Seit laborbefund 2027.0.0-ballot.rc3 sliced das Elternprofil code.coding selbst
// (discriminator pattern:$this) und bringt einen loinc-Slice mit. Wir schraenken
// diesen ein, statt ein zweites Slicing danebenzustellen: Ein abweichender
// Diskriminator (frueher pattern:system) laesst die Snapshot-Erzeugung im
// IG Publisher scheitern — SUSHI meldet das nicht, es faellt erst im Build auf.
* code.coding[loinc] 0..1 MS
* code.coding[loinc] from MII_VS_Onko_Tumormarker_LOINC (extensible)
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* insert Label(code.coding[loinc], Tumormarker als LOINC-Code, LOINC-Code des bestimmten Tumormarkers aus der kuratierten onkologischen Auswahlliste)
* insert Translation(code.coding[loinc] ^short, de-DE, Tumormarker als LOINC-Code)

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
