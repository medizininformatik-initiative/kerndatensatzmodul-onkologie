Instance: mii-exa-onko-studienteilnahme
InstanceOf: mii-pr-onko-studienteilnahme
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-studienteilnahme)
* status = #final
* code.coding = $SCT#709491003 
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = $mii-cs-onko-studienteilnahme#J "Ja"
