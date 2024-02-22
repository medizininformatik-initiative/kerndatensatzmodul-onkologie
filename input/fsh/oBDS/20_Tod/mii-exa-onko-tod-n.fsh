Instance: mii-exa-onko-tod-n
InstanceOf: mii-pr-onko-tod
Usage: #example
* status = #final
* code.coding = $SCT#184305005 // should this not be set as default?
* subject = Reference(Patient/example)

* effectiveDateTime = "2024-02-07"
* interpretation.coding = $mii-cs-onko-tod#N "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* valueCodeableConcept.coding.code = $ICD10GM#C50.3 "Unterer innerer Quadrant der Brustdrüse"
* valueCodeableConcept.coding.version = "ICD-10 GM Version 2019"

