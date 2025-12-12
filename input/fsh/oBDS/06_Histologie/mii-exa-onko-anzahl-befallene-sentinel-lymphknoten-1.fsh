Instance: mii-exa-onko-anzahl-befallene-sentinel-lymphknoten-0
InstanceOf: mii-pr-onko-anzahl-befallene-sentinel-lymphknoten
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-anzahl-befallene-sentinel-lymphknoten)
* status = #final
* category[laboratory] = $observation-category#laboratory
* code.coding[loinc] = $LNC#92832-5 "Sentinel lymph nodes with metastasis [#] in Cancer specimen"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueQuantity = 0 $UCUM#1 "#"