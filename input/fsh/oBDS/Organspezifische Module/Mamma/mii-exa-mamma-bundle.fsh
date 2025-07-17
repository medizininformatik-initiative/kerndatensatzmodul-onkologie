Instance: mii-exa-onko-mamma-example-bundle-1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].resource = mii-exa-onko-mamma-example-condition


Instance: mii-exa-onko-mamma-example-condition
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #inline
* clinicalStatus = #active
* verificationStatus = #confirmed
* code.coding[icd10-gm] = $ICD10GM#C50.3 "Bösartige Neubildung der Brustdrüse [Mamma] - Unterer innerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(Patient/example)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = 2020-03-07
