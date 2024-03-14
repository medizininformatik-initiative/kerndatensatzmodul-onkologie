Instance: mii-exa-onko-anzahl-untersuchte-lymphknoten-23
InstanceOf: mii-pr-onko-anzahl-untersuchte-lymphknoten
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LOINC#21894-1 "Regional lymph nodes examined [#] Specimen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 23 $UCUM#1 "#"