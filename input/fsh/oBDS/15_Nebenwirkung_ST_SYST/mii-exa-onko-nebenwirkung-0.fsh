Instance: mii-pr-onko-nebenwirkung-0
InstanceOf: mii-pr-onko-nebenwirkung
Usage: #example
* status = #final
* category = $observation-category#therapy
* partOf = Reference(Procedure/Strahlentherapie)
* code.coding = $SCT#431010004 "Late effect of radiation therapy (disorder)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* valueCodeableConcept.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#1 "Mild Adverse Event"