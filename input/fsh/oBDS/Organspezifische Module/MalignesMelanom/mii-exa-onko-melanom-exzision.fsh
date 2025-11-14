Instance: mii-exa-onko-melanom-exzision-oberarm
InstanceOf: MII_PR_Onko_Melanom_Exzision
Usage: #example
Title: "Melanom Exzision Oberarm Beispiel"
Description: "Beispiel einer Melanom-Exzision am linken Oberarm mit Sicherheitsabstand"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-894.06 "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Schulter und Axilla"
* code.coding[ops].version = "2024"
* code.coding[sct] = $SCT#177281002 "Excision of melanoma (procedure)"
* bodySite = $SCT#368208006 "Left upper arm structure"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* performedDateTime = "2024-03-20"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(mii-exa-onko-melanom-diagnose)
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

Instance: mii-exa-onko-melanom-exzision-ruecken
InstanceOf: MII_PR_Onko_Melanom_Exzision
Usage: #example
Title: "Melanom Exzision Rücken Beispiel"
Description: "Beispiel einer Melanom-Nachexzision am oberen Rücken"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-894.0a "Lokale Exzision von erkranktem Gewebe an Haut und Unterhaut: Ohne primären Wundverschluss: Brustwand und Rücken"
* code.coding[ops].version = "2024"
* code.coding[sct] = $SCT#177281002 "Excision of melanoma (procedure)"
* bodySite = $SCT#304036007 "Structure of back of thorax"
* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* performedDateTime = "2024-04-05"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(mii-exa-onko-melanom-diagnose)
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* note.text = "Nachexzision mit 2cm Sicherheitsabstand"