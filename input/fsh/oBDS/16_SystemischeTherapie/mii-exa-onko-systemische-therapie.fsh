Instance: mii-exa-onko-systemische-therapie
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* subject = Reference(Patient/example)
* status = #final
* extension[0].valueCodeableConcept = $mii-cs-onko-strahlentherapie-intention#P
* extension[0].url = "www.extension.de/extension"
* extension[1].valueCodeableConcept = $mii-cs-onko-strahlentherapie-stellung#A
* extension[1].url = "www.extension.de/extension"
* code = $OPS#8-54
* performedPeriod.start = "2021-12-04"
* performedPeriod.end = "2022-04-06"
