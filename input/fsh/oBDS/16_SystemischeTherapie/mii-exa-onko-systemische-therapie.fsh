Instance: mii-exa-onko-systemische-therapie
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* subject = Reference(Patient/example)
* status = #final
* extension[0].valueCodeableConcept = $mii-cs-onko-systemische-therapie-intention#P
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention"
* extension[1].valueCodeableConcept = $mii-cs-onko-systemische-therapie-stellung#A
* extension[1].url = "https://www.medizininformatik-initiative.de/fhir/core/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellung"
* code = $mii-cs-onko-systemische-therapie-art#CH
* performedPeriod.start = "2021-12-04"
* performedPeriod.end = "2022-04-06"
