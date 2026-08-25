CodeSystem: MII_CS_Onko_Operation_Urgency
Id: mii-cs-onko-operation-urgency
Title: "MII CS Onkologie Operation Urgency"
Description: "oBDS-basiertes Codesystem für die Modalität der Eingriffsdurchführung (Art des Eingriffs KR6)"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-urgency"
* ^count = 3

* #E "Elektiveingriff" "Geplanter Eingriff mit ausreichender Vorbereitungszeit"
* #N "Notfalleingriff" "Ungeplanter Eingriff aufgrund einer akuten medizinischen Situation"
* #U "Unbekannt" "Die Modalität der Eingriffsdurchführung ist unbekannt"