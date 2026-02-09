Instance: mii-exa-onko-tumorkonferenz-01
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_1"
* status = $request-status#active
* intent = $request-intent#plan
* subject = Reference(Patient/example)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop
* created = "2024-01-11"
* activity[obds].detail.code.coding = $mii-cs-onko-therapie-typ#OP
* activity[obds].detail.status = $care-plan-activity-status#completed

Instance: mii-exa-onko-tumorkonferenz-02
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "Tumorkonferenz_2"
* status = $request-status#completed
* intent = $request-intent#plan
* subject = Reference(Patient/example)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop
* created = "2024-01-11"
* activity[obds][+].detail.code.coding = $mii-cs-onko-therapie-typ#OP
* activity[obds][=].detail.status = $care-plan-activity-status#cancelled
* activity[obds][=].detail.statusReason.coding = $mii-cs-onko-therapieabweichung#N "nein"
* activity[obds][+].detail.code.coding = $mii-cs-onko-therapie-typ#ZS "Zielgerichtete Substanzen"
* activity[obds][=].detail.status = $care-plan-activity-status#cancelled
* activity[obds][=].detail.statusReason.coding = $mii-cs-onko-therapieabweichung#N "nein"
