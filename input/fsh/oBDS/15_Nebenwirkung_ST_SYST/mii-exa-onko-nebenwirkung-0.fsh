Instance: mii-pr-onko-nebenwirkung-0
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example

* actuality = #actual
* event.coding[meddra].system = "https://www.meddra.org"
* event.coding[meddra].code = #10016256
* event.coding[meddra].display = "Fatigue"
* event.coding[meddra].version = "Version 4"
* subject = Reference(Patient/example)
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#4 "Lebensbedrohlich"
* suspectEntity.instance = Reference(Procedure/Strahlentherapie)
