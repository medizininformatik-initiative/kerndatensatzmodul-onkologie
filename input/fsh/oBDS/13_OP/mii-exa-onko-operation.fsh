Instance: mii-exa-onko-operation-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Example surgical therapy"
Description: "Example surgical therapy"
* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* basedOn = Reference(CarePlan/example)
* status = #final
* extension[0].valueCodeableConcept = $mii-cs-onko-intention#K // kurativ
* extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention"
* code.coding[ops] = $OPS#5-870 "Partielle (brusterhaltende) Exzision der Mamma und Destruktion von Mammagewebe"
* code.coding[ops].version = "OPS 2021"
* performedDateTime = 2021-12-04
* complication.coding = $mii-cs-onko-operation-komplikation#HNK "Hautnekrose im Operationsbereich"
* outcome = $mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"
