Instance: mii-exa-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* subject = Reference(Patient/example)
* status = #final
* extension[0].valueCodeableConcept = $mii-cs-onko-systemische-therapie-intention#K // kurativ
* extension[0].url = $mii-ex-onko-systemische-therapie-intention
* extension[1].valueCodeableConcept = $mii-cs-onko-systemische-therapie-stellung#A // adjuvant
* extension[1].url = $mii-ex-onko-systemische-therapie-stellung
* code = $mii-cs-onko-systemische-therapie-art#CH // Chemotherapie , ggfs. hier auch ein slice, weil OPS mit angegeben werden kann
* performedPeriod.start = "2021-12-04"
* performedPeriod.end = "2022-04-06"

Instance: mii-exa-onko-systemische-therapie-medikation1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Example chemotherapy"
Description: "Example for the FHIR profile systemic therapy based on German "
* subject = Reference(Patient/example)
* status = #final
* effectivePeriod.start = "2021-12-04" // identical to the Procedure.performedPeriod
* effectivePeriod.end = "2022-04-06"
* medicationCodeableConcept.coding[0].system = $ATC_DE
* medicationCodeableConcept.coding[0].code = #L01AA01
* medicationCodeableConcept.coding[0].version = "Version 2022"
* medicationCodeableConcept.coding[0].display = "Cyclophosphamid"
* medicationCodeableConcept.coding[1].system = $ATC_DE
* medicationCodeableConcept.coding[1].code = #01DB01
* medicationCodeableConcept.coding[1].version = "Version 2022"
* medicationCodeableConcept.coding[1].display = "Doxorubicin"


* partOf = Reference(mii-exa-onko-systemische-therapie-1)
* note.text = "AC" // Schemaabkürzung für Cyclophosphamid und Doxorubicin

