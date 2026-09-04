// Beispiel zur Tumormarker-Bestimmung (CEA) — demonstriert zugleich das
// Identifier-Muster fuer Register-Daten ohne native Labor-Auftragsnummer.
//
// Das Elternprofil (KDS Laborbefund, ObservationLab) verlangt identifier 1..1
// (analyseBefundCode: type OBI, system, value, assigner — alle Pflicht).
// Register-Daten haben keine Labor-Auftragsnummer; das Labor-Modul zeigt in
// seinen Referenzbeispielen das Ableitungsmuster <Analyt>_<Kontextnummer>
// unter standorteigenem System. Als Kontextnummer dient hier die
// oBDS-Meldungs-ID — sie ist JE MELDEANLASS NEU und damit auch bei seriellen
// Verlaufsmessungen kollisionsfrei. Die Tumor-ID waere FALSCH: sie ist ueber
// Jahre konstant, jede Verlaufsmessung bekaeme denselben Identifier; die
// Tumorzuordnung laeuft ueber focus, nicht ueber den Identifier.
Instance: mii-exa-onko-tumormarker-cea
InstanceOf: MII_PR_Onko_Tumormarker
Usage: #example
Title: "MII EXA Onkologie Tumormarker CEA"
Description: "CEA-Bestimmung im Rahmen einer onkologischen Erkrankung. Zeigt das Identifier-Muster <LOINC>_<Meldungs-ID> für Registerdaten ohne Labor-Auftragsnummer sowie den Diagnosebezug über focus."
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumormarker)
* identifier[analyseBefundCode].type = http://terminology.hl7.org/CodeSystem/v2-0203#OBI
* identifier[analyseBefundCode].system = "https://example.org/fhir/sid/onko-tumormarker-befunde"
* identifier[analyseBefundCode].value = "2039-6_M2026-0042"
* identifier[analyseBefundCode].assigner.identifier.system = "https://www.medizininformatik-initiative.de/fhir/core/CodeSystem/core-location-identifier"
* identifier[analyseBefundCode].assigner.identifier.value = "DIZ-ID"
* status = #final
* category[0] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* category[=].coding[+] = http://loinc.org#26436-6 "Laboratory studies (set)"
* code.coding[loinc] = http://loinc.org#2039-6 "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
* code.text = "CEA"
* subject = Reference(Patient/example)
* focus = Reference(mii-exa-onko-diagnose)
* effectiveDateTime = "2026-03-12T09:30:00+01:00"
* valueQuantity = 4.2 'ug/L' "µg/L"
