Instance: mii-exa-onko-mamma-example-bundle-1
InstanceOf: Bundle
Usage: #example
* type = #transaction
* entry[+].resource = mii-exa-onko-mamma-example-condition
* entry[+].resource = mii-exa-onko-mamma-menopause-status-1
* entry[+].resource = mii-exa-onko-mamma-rezeptorstatus-estrogen-1
* entry[+].resource = mii-exa-onko-mamma-rezeptorstatus-progesteron-1


Instance: mii-exa-onko-mamma-example-patient
InstanceOf: Patient
Usage: #example
* name.given = "Martha"
* name.family = "MammaCa"

Instance: mii-exa-onko-mamma-example-condition
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #inline
* clinicalStatus = #active
* verificationStatus = #confirmed
* code.coding[icd10-gm] = $ICD10GM#C50.3 "Bösartige Neubildung der Brustdrüse [Mamma] - Unterer innerer Quadrant der Brustdrüse"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-mamma-example-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = 2020-03-07

Instance: mii-exa-onko-mamma-menopause-status-1
InstanceOf: MII_PR_Onko_Mamma_Menopausenstatus
Usage: #example
* status = #final
* code.coding = $SCT#161712005 "Menopause, function (observable entity)"
* subject = Reference(mii-exa-onko-mamma-example-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-example-condition)
* valueCodeableConcept.coding = $SCT#22636003 "Premenopausal state (finding)"

Instance: mii-exa-onko-mamma-rezeptorstatus-estrogen-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Estrogen
Usage: #example
* status = #final
* code.coding = $LNC#40556-3 "Estrogen receptor Ag [Presence] in Breast cancer specimen by Immune stain" 
* subject = Reference(mii-exa-onko-mamma-example-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-example-condition)
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 25
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[Faerbeintensitaet].valueCodeableConcept.coding = $LNC#LA13034-6 "Weak"  

Instance: mii-exa-onko-mamma-rezeptorstatus-progesteron-1
InstanceOf: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
Usage: #example
* status = #final
* code.coding = $LNC#85339-0 "Progesteron receptor Ag [Presence] in Breast cancer specimen by Immune stain" 
* subject = Reference(mii-exa-onko-mamma-example-patient)
* focus = Reference(Condition/mii-exa-onko-mamma-example-condition)
* valueCodeableConcept.coding = $LNC#LA6576-8 "Positive"
* component[AnteilPositiveZellen].valueQuantity.value = 25
* component[AnteilPositiveZellen].valueQuantity.unit = "%"
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[Faerbeintensitaet].valueCodeableConcept.coding = $LNC#LA13034-6 "Weak"  



