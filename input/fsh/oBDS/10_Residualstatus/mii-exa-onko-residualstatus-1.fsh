Instance: mii-exa-onko-residualstatus-1
InstanceOf: mii-pr-onko-residualstatus
Usage: #example
* status = #final
* code.coding[loinc] = $LOINC#84892-9
* subject = Reference(Patient/example)

* effectiveDateTime = "2024-02-08"
* valueCodeableConcept.coding.code = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
