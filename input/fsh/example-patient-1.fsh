Instance: OncologicExamplePatient1
InstanceOf: Patient // or MII Patient, but then I guess I have to import it? 
Usage: #example
* birthDate = 1956-03-14

Instance: mii-exa-onko-example-Procedure
InstanceOf: mii-pr-onko-genetische-variante
Usage: #example
* status = #final
* subject = Reference(Patient/example)