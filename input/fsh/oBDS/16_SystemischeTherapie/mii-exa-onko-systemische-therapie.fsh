Instance: mii-exa-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* subject = Reference(Patient/example)
* status = #completed
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // kurativ
* extension[Intention].url = $mii-ex-onko-systemische-therapie-intention
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#A // adjuvant
* extension[StellungZurOp].url = $mii-ex-onko-systemische-therapie-stellungzurop
* category = $SCT#367336001 "Chemotherapy (procedure)" 
* code.coding[+] = $mii-cs-onko-therapie-typ#CH // Chemotherapie , ggfs. hier auch ein slice, weil OPS mit angegeben werden kann
* code.coding[+] = $OPS#8-52 // Chemotherapie nach OPS
* code.coding[=].version = "2021"

* performedPeriod.start = "2021-12-04"
* performedPeriod.end = "2022-04-06"

Instance: mii-exa-onko-systemische-therapie-medikation1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Example chemotherapy 1"
Description: "Example for the FHIR profile systemic therapy based on German "
* subject = Reference(Patient/example)
* status = #completed
* effectivePeriod.start = "2021-12-04" // identical to the Procedure.performedPeriod
* effectivePeriod.end = "2022-04-06"
* medicationCodeableConcept.coding[+].system = $ATC_DE
* medicationCodeableConcept.coding[=].code = #L01AA01
* medicationCodeableConcept.coding[=].version = "2022"
* medicationCodeableConcept.coding[=].display = "Cyclophosphamid"

* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "AC" // Schemaabkürzung für Cyclophosphamid und Doxorubicin

Instance: mii-exa-onko-systemische-therapie-medikation2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Example chemotherapy 2"
Description: "Example for the FHIR profile systemic therapy based on German "
* subject = Reference(Patient/example)
* status = #completed
* effectivePeriod.start = "2021-12-04"
* effectivePeriod.end = "2022-04-06"
* medicationCodeableConcept.coding[+].system = $ATC_DE
* medicationCodeableConcept.coding[=].code = #L01DB01
* medicationCodeableConcept.coding[=].version = "2022"
* medicationCodeableConcept.coding[=].display = "Doxorubicin"

* partOf[systemischeTherapie] = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "AC" // Schemaabkürzung für Cyclophosphamid und Doxorubicin
