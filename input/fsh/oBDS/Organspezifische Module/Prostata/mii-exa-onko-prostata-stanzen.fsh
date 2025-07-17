Instance: mii-exa-onko-prostata-anzahl-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Stanzen
Usage: #example
* status = #final
* code.coding = $LOINC#44652-6 "Total number of cores in Tissue core"
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-01-02"
* valueInteger = 12

Instance: mii-exa-onko-prostata-anzahl-positiver-stanzen-1
InstanceOf: MII_PR_Onko_Prostata_Anzahl_Positive_Stanzen
Usage: #example
* status = #final
* code.coding = $LOINC#44651-8 "Tissue cores.positive.carcinoma in Tissue core" 
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-01-02"
* valueInteger = 8

Instance: mii-exa-onko-prostata-ca-befall-stanze-1
InstanceOf: MII_PR_Onko_Prostata_CA_Befall_Stanze
Usage: #example
* status = #final
* code.coding = $LOINC#44654-2 "Tissue involved by tumor in Prostate tumor"
* effectiveDateTime = "2024-01-02"
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)
* specimen = Reference(Specimen/exampleProstateBiopsySlide)

* valueQuantity.value = 80 
* valueQuantity.unit = "%" 
