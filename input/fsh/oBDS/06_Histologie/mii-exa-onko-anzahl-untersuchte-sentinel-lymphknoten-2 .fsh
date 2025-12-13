Instance: mii-exa-onko-anzahl-untersuchte-sentinel-lymphknoten-0
InstanceOf: mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-untersuchte-sentinel-lymphknoten)
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#85347-3 "Sentinel lymph nodes examined [#] in Cancer specimen by Light microscopy"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 2 $UCUM#1 "#"