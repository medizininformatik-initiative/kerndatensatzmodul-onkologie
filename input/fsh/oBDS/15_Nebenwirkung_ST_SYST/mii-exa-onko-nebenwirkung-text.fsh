Instance: mii-pr-onko-nebenwirkung-text
InstanceOf: mii-pr-onko-nebenwirkung-adverse-event
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-nebenwirkung-adverse-event)

* actuality = #actual
* event.text = "Schüttelfrost"
* subject = Reference(Patient/example)
* seriousness.coding = $mii-cs-onko-nebenwirkung-ctcae-grad#3 "schwerwiegend"
* suspectEntity.instance = Reference(Procedure/Strahlentherapie)
