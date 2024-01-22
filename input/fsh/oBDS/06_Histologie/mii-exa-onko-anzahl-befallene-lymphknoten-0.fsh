Instance: mii-exa-onko-anzahl-befallene-lymphknoten-0
InstanceOf: mii-pr-onko-anzahl-befallene-lymphknoten
Usage: #example
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LOINC#21893-3 "Regional lymph nodes positive [#] Specimen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 0 $UCUM#1 "#"