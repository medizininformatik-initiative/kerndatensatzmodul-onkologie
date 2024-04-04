Instance: mii-exa-onko-tumorkonferenz-01
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example

* identifier.value = "Tumorkonferenz_1"
* status = $request-status#active
* intent = $request-intent#plan
* subject = Reference(Patient/example)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop
* created = "2024-01-11"
* activity.detail.code.coding = $mii-cs-onko-therapie-typ#OP
* activity.detail.status = $care-plan-activity-status#scheduled
* activity.detail.statusReason.coding = $mii-cs-onko-therapieabweichung#N "nein"