Instance: mii-exa-onko-allgemeiner-leistungszustand-karnofsky
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-karnofsky
Usage: #example
* status = #final
* code.coding[snomed] = $SCT#761869008
* code.coding[loinc] = $LNC#89243-0
* subject = Reference(Patient/example)

* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-karnofsky#30% "30%"
* valueCodeableConcept.coding[loinc] = $LNC#LA29172-6 "Severely disabled; hospitalization is indicated, although death not imminent"

