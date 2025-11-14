Instance: mii-exa-onko-prostata-surgery-2
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "MII EXA Onko Prostata Operation"
Description: "Beispiel für eine Prostatektomie in der Onkologie"

* status = #completed  // Valid Procedure status: completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-604.02 "Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie"
* code.coding[ops].version = "2024"
* code.coding[sct] = $SCT#26294005 "Radical prostatectomy (procedure)"

* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* encounter = Reference(mii-exa-onko-prostata-bundle-encounter)

* performedDateTime = "2024-02-15T10:00:00+01:00"

* reasonReference = Reference(mii-exa-onko-prostata-diagnose)

* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* complication[compl_obds].coding = $mii-cs-onko-operation-komplikation#N "nein"

* outcome.coding = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"