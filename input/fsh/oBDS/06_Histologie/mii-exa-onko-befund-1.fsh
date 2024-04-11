Instance: mii-exa-onko-specimen-1
InstanceOf: mii-pr-onko-specimen
Usage: #example
* status = #final
* subject= Reference(Patient/example)


* basedOn = Reference(CarePlan/example-tumorboard-1)
* specimen only Reference(Specimen/example-specimen-1)
* code.coding[pathology-report] = $LOINC#60568-3 

* conclusion = "Mäßig differenziertes invasiv duktales Karzinom (8500/3), Grading G2 an der rechten Mamma, ... "