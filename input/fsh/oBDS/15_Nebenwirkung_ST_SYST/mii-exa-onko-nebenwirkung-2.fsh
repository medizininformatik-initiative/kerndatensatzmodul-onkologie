Instance: mii-pr-onko-nebenwirkung-2
InstanceOf: mii-pr-onko-nebenwirkung
Usage: #example
* status = #final
* category = $observation-category#therapy
* partOf = Reference(Procedure/Strahlentherapie)

* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* component.valueString = "Lebensbedrohlich"
* component.code.coding.code = #4
* component.code.coding.display = "Lebensbedrohlich"
* component.code.coding.system = $mii-cs-onko-nebenwirkung-ctcae-grad