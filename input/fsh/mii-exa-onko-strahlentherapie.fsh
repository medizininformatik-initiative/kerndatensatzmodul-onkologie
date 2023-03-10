Instance: mii-exa-onko-strahlentherapie
InstanceOf: MII_PR_Onko_Strahlentherapie
Title: "Intersitielle, pulsierende Strahlentherapie der Lunge"
* status = #stopped
* subject = Reference(PatientExample)
* performedPeriod
  * start = "2020-01-01"
  * end = "2020-06-30"
* extension[Intention].valueCodeableConcept.coding = mii-cs-onko-intention#K
* extension[terminationReason].valueCodeableConcept.coding = mii-cs-onko-strahlentherapie-ende-grund#A
* code.coding[+] = mii-cs-onko-strahlentherapie-applikationsart#IPDR
* code.coding[+] = $OPS#8-525.11
* bodySite.coding = $SCT#184814008
* reasonReference = Reference(mii-exa-onko-krebsdiagnose)
