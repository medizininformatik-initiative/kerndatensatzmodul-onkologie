Instance: mii-exa-onko-systemische-therapie-1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "Example systemic therapy"
Description: "Example systemic therapy"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* basedOn = Reference(CarePlan/example)
* status = #final
* extension[0].valueCodeableConcept = $mii-cs-onko-intention#K // kurativ
* extension[0].url = $mii-ex-onko-operation-intention
* code.coding = $OPS#5-870 "Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe"
* performedDateTime = 2021-12-04
* complication.coding = $mii-cs-onko-operation-komplikation#HNK "Hautnekrose im Operationsbereich"
* outcome = $mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"
