Instance: mii-pr-onko-nebenwirkung-1
InstanceOf: mii-pr-onko-nebenwirkung
Usage: #example
* status = #final
* category = $observation-category#therapy
* partOf = Reference(Procedure/Strahlentherapie)

* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* component.valueCodeableConcept.coding.code = #10016256
* component.valueCodeableConcept.coding.display = "Fatigue"
* component.valueCodeableConcept.coding.version = "4"
* component.code.coding.code = #4
* component.code.coding.display = "Lebensbedrohlich"
* component.code.coding.system = $mii-cs-onko-nebenwirkung-ctcae-grad