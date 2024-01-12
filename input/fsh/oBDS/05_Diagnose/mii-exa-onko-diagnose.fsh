Instance: mii-exa-onko-diagnose
InstanceOf: mii-pr-onko-diagnose
Usage: #example
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung] = $mii-cs-onko-primaertumor-diagnosesicherung#7 "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM|2020#C50.4 "Oberer äußerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].extension[Seitenlokalisation].valueCoding = $icd-seitenlokalisation#R "rechts"
* code.coding[icd-o-3] = $ICDO3#8500/3 "Invasives duktales Karzinom o.n.A. [C50.-]"
* subject = Reference(Patient/example)
* recordedDate = "2020-02-16"
* bodySite.coding[snomed-ct] = $SCT#76365002 "Structure of upper outer quadrant of breast (body structure)"
* bodySite.coding[icd-o-3] = $ICDO3#C50.4 "Oberer äußerer Quadrant der Brust"
