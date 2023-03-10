Instance: mii-exe-onko-operation
InstanceOf: MII_PR_Onko_Operation
Title: "Operation"
* status = $EventStatus#completed
* extension[Intention].valueCodeableConcept.coding = mii-cs-onko-intention#K
* performedDateTime = "2020-02-01"
* code.coding = $OPS#5-330
* code.coding.version = "2023"
* complication = $DeOnkoOpComplications#BIF
* outcome.extension[GesamtbeurteilungResidualstatus].valueCodeableConcept.coding = $DeOnkoResidualStatus#R1
* subject = Reference(PatientExample)
* reasonReference = Reference(mii-exa-onko-krebsdiagnose)
