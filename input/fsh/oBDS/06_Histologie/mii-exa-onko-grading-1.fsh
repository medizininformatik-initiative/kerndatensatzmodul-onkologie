Instance: mii-exa-onko-grading-1
InstanceOf: mii-pr-onko-grading
Usage: #example
* status = #final
* category[+].coding.system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category[=].coding.code = #laboratory
* code.coding[loinc] = $LOINC#33732-9 "Histology grade [Identifier] in Cancer specimen"
* effectiveDateTime = 2022-04-21
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading"
* valueCodeableConcept.coding.code = #3 "schlecht differenziert"

* subject = Reference(Patient/example)
* specimen = Reference (Specimen/example)
