Instance: mii-exa-onko-prostata-surgery-1
InstanceOf: MII_PR_Onko_Operation
Usage: #example
* status = #final
* category.coding = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-604 "Radikale Prostatovesikulektomie"
* code.coding[ops].version = "OPS 2024"
* subject = Reference(Patient/example)
* reasonReference = Reference (Condition/exampleOncologicCondition)
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "Kurativ"
* performedDateTime = "2024-06-24"

Instance: mii-exa-onko-prostata-surgical-complication-1
InstanceOf: MII_PR_Onko_Prostata_Clavien_Dindo
Usage: #example
* status = #final
* code.coding = $SCT#789279006 "Clavien-Dindo classification grade (observable entity)"
* subject = Reference(Patient/example)
* focus[Diagnose] = Reference (mii-exa-onko-prostata-example-condition)
* focus[Operation] = Reference (mii-exa-onko-prostata-surgery-1)
* effectiveDateTime = "2024-06-24"
* valueCodeableConcept.coding[ClavienDindo] = $SCT#1367522003 "Clavien-Dindo classification grade IIIa (finding)"
* valueCodeableConcept.coding[OBDSPostOPKompl] = $mii-cs-onko-prostata-postsurgical-complications#J "Ja"