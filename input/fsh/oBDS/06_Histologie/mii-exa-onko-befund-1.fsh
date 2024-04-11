Instance: mii-exa-onko-befund-1
InstanceOf: mii-pr-onko-befund
Usage: #example
* status = #final
* subject= Reference(Patient/example)


* basedOn = Reference(CarePlan/example-tumorboard-1)
* specimen = Reference(Specimen/example-specimen-2)
* code.coding[pathology-report] = $LOINC#60568-3 

* conclusion = "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ... "