Instance: mii-exa-onko-krebsdiagnose
InstanceOf: MII_PR_Onko_Krebsdiagnose
Title: "Krebsdiagnose"
* clinicalStatus = $EventStatus#active
* verificationStatus = $VerificationStatus#confirmed
* code.coding = $ICD10GM#C34.9
  * version = "2023"
  * display = "Bronchus oder Lunge, nicht näher bezeichnet"
  * extension[Seitenlokalisation].valueCoding = $DeIcdSeitenlokalisation#L
  * extension[Diagnosesicherheit].valueCoding = $DeIcdDiagnosesicherheit#G
    * display = "Lunge, mehrere Teilbereiche überlappend"
* extension[topography].valueCoding = $ICDO#C34.8
* subject = Reference(PatientExample)
* recordedDate = "2023-01-01"
