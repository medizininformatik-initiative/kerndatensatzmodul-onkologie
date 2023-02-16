Instance: mii-exa-onko-schwere-nebenwirkung
InstanceOf: MII_PR_Onko_Nebenwirkung
Title: "Schwere Nebenwirkung"
* subjectMedicalHistory = Reference(mii-exa-onko-strahlentherapie)
* subject = Reference(PatientExample)
* event.coding = $MDRAE#C146731
* suspectEntity[+].instance = Reference(mii-exa-onko-strahlentherapie)
* extension[grade].valueCodeableConcept.coding = mii-cs-onko-ctcae-grad#3
