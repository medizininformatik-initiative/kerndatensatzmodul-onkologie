Instance: mii-exa-onko-prostata-operation-prostatektomie
InstanceOf: MII_PR_Onko_Prostata_Operation
Usage: #example
Title: "Prostata Operation Prostatektomie Beispiel"
Description: "Beispiel einer radikalen Prostatektomie"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-604.02 "Radikale Prostatovesikulektomie: Retropubisch: Mit regionaler Lymphadenektomie"
* code.coding[ops].version = "2024"
* code.coding[sct] = $SCT#26294005 "Radical prostatectomy (procedure)"
* subject = Reference(Patient/example)
* performedDateTime = "2024-03-15"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* reasonReference = Reference(Condition/example)
* outcome = $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"

Instance: mii-exa-onko-prostata-operation-turp
InstanceOf: MII_PR_Onko_Prostata_Operation
Usage: #example
Title: "Prostata Operation TURP Beispiel"
Description: "Beispiel einer transurethralen Resektion der Prostata"
* status = #completed
* category = $SCT#387713003 "Surgical procedure"
* code.coding[ops] = $OPS#5-601.0 "Transurethrale Exzision und Destruktion von Prostatagewebe: Elektroresektion"
* code.coding[ops].version = "2024"
* code.coding[sct] = $SCT#90199006 "Transurethral prostatectomy (procedure)"
* subject = Reference(Patient/example)
* performedDateTime = "2024-02-20"
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#D "diagnostisch"
* reasonReference = Reference(Condition/example)
* outcome = $mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"