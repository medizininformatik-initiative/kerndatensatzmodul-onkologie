Instance: mii-pr-onko-nebenwirkung-3-pro
InstanceOf: mii-pr-onko-nebenwirkung-procedure
Usage: #example

* status = #completed
* subject = Reference(Patient/example)
* complication.coding.code = #4
* complication.coding.display = "Lebensbedrohlich"
* complicationDetail = Reference(Condition/Nebenwirkung)

* code.coding = $SCT#1287742003
* performedDateTime = "2024-01-01"