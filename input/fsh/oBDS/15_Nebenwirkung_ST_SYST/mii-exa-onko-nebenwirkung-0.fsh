Instance: mii-pr-onko-nebenwirkung-0
InstanceOf: mii-pr-onko-nebenwirkung
Usage: #example
* status = #final
* category = $observation-category#therapy
* partOf = Reference(Procedure/Strahlentherapie)

* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* component.code.coding.code = #2
* component.code.coding.display = "Moderat"
* component.code.coding.system = $mii-cs-onko-nebenwirkung-ctcae-grad