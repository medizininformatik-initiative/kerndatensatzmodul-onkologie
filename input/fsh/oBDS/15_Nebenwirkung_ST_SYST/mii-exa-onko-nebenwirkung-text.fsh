Instance: mii-pr-onko-nebenwirkung-text
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example

* actuality = #actual
* event.text = "Schüttelfrost"
* subject = Reference(Patient/example)
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#3 "schwerwiegend"
* suspectEntity.instance = Reference(Procedure/Strahlentherapie)
