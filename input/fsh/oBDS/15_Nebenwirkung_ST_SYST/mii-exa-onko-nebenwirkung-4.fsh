Instance: mii-pr-onko-nebenwirkung-4
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example

* actuality = #actual
* event.coding = $hl7-meddra-de#10016256 "Fatigue"
* event.coding.version = "Version 4"
* subject = Reference(Patient/example)
* severity.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#4 "Lebensbedrohlich"
* suspectEntity.instance = Reference(Procedure/Strahlentherapie)
