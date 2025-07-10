Instance: mii-exa-onko-prostata-gleason-pattern-primary
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* status = #final
* code.coding = $SCT#384994009 "Primary Gleason pattern (observable entity)" 
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = $SCT#369772003 "Gleason pattern 3 (finding)"

Instance: mii-exa-onko-prostata-gleason-pattern-secondary
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* status = #final
* code.coding = $SCT#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(Patient/example)
* focus = Reference (Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = $SCT#369773008 "Gleason pattern 4 (finding)"