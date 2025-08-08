// Example: MedicationStatement with UNII-only coded substance
Instance: mii-exa-onko-medikation-iberdomide-unii
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Medikation Iberdomide (UNII)"
Description: "Beispiel einer systemischen Therapie Medikation mit UNII-Code für experimentellen Wirkstoff ohne ATC-Code"
* status = #completed
* subject = Reference(Patient/example)
* medicationCodeableConcept.coding[unii] = http://fdasis.nlm.nih.gov/srs/unii#8V66F27X44 "IBERDOMIDE"
* medicationCodeableConcept.text = "Iberdomide (experimenteller Immunmodulator)"
* partOf = Reference(Procedure/systemische-therapie-example)
* note.text = "Experimentelles Protokoll"
* effectivePeriod.start = "2024-06-01"
* effectivePeriod.end = "2024-08-30"
* basedOn = Reference(CarePlan/example)