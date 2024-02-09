Instance: mii-exa-onko-tod
InstanceOf: mii-pr-onko-tod
Usage: #example
* status = #final
* code.coding = $SCT#184305005 // should this not be set as default?
* subject = Reference(Patient/example)

* effectiveDateTime = "2024-02-08"
* interpretation.coding = $mii-cs-onko-tod#J "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* valueCodeableConcept.coding.code = $ICD10GM#C34.9 "Bösartige Neubildung: Bronchus oder Lunge, nicht näher bezeichnet"
* valueCodeableConcept.coding.version = "ICD-10 GM Version 2024"

