Instance: mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0
InstanceOf: mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LOINC#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy
"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 2 $UCUM#1 "#"