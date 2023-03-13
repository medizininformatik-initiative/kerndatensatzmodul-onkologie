Instance: mii-exa-onko-lokale-interventionelle-therapie
InstanceOf: MII_PR_Onko_Lokale_Interventionelle_Therapie
Title: "Lokale Interventionelle Therapie"
* status = #completed
* performedDateTime = "2021-02-01"
* subject = Reference(PatientExample)
* extension[Intention].valueCodeableConcept.coding = mii-cs-onko-intention#S
* extension[StellungZurOp].valueCodeableConcept.coding = mii-cs-onko-stellung-op#Z
* outcome = $DeOnkoResidualStatus#R1(cy+)
* bodySite = $SCT#788158006
* complication = $DeOnkoOpComplications#N
* outcome = $DeOnkoResidualStatus#R0
