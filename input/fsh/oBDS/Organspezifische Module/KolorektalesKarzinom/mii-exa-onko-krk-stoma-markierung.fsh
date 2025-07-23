Instance: mii-exa-onko-krk-stoma-markierung
InstanceOf: MII_PR_Onko_KRK_Stoma_Markierung
Usage: #example
Title: "MII EXA Onko KRK Stoma-Markierung"
Description: "Beispiel für eine präoperative Stoma-Markierung beim Kolorektalen Karzinom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung"

* status = #completed
* statusReason = $SCT#262008008 "Not performed (qualifier value)"

* category.coding = $SCT#387713003 "Surgical procedure"

* code.coding = $SCT#225134005 "Marking position of planned stoma site (procedure)"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)

* reasonReference = Reference(Condition/mii-exa-onko-diagnose-primaertumor)

* performedDateTime = "2024-03-15T09:30:00+01:00"

* note.text = "Präoperative Markierung der geplanten Stoma-Position im rechten Hemiabdomen nach Rücksprache mit dem Patienten"