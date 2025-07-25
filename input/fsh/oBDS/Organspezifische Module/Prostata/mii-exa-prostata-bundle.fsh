Instance: mii-exa-onko-prostata-example-patient
InstanceOf: Patient
Usage: #example
* name.given = "Peter"
* name.family = "ProstataCa"

Instance: mii-exa-onko-prostata-example-bundle-1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[0].fullUrl = "Condition/mii-exa-onko-prostata-example-condition"
* entry[=].resource = mii-exa-onko-prostata-example-condition
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"


Instance: mii-exa-onko-prostata-example-condition
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #inline
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = $ICD10GM#C61 "Bösartige Neubildung der Prostata"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-prostata-example-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = 2020-03-07
