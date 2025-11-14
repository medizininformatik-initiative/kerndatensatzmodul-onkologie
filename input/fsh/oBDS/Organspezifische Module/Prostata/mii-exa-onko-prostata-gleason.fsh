Instance: mii-exa-onko-prostata-gleason-pattern-primary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* status = #final
* code.coding = $SCT#384994009 "Primary Gleason pattern (observable entity)" 
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = $SCT#369772003 "Gleason Pattern 3"

Instance: mii-exa-onko-prostata-gleason-pattern-secondary-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Pattern
Usage: #example
* status = #final
* code.coding = $SCT#384995005 "Secondary Gleason pattern (observable entity)"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)

* effectiveDateTime = "2024-01-02"
* valueCodeableConcept.coding = $SCT#369773008 "Gleason Pattern 4"

Instance: mii-exa-onko-prostata-gleason-pattern-grade-group-1
InstanceOf: MII_PR_Onko_Prostata_Gleason_Grade_Group
Usage: #example
* status = #final
* code.coding = $SCT#1812491000004107 "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
* effectiveDateTime = "2024-01-02"
* subject = Reference(mii-exa-onko-prostata-bundle-patient)
* focus = Reference(mii-exa-onko-prostata-diagnose)
* derivedFrom[+] = Reference(mii-exa-onko-prostata-gleason-pattern-primary-1)
* derivedFrom[+] = Reference(mii-exa-onko-prostata-gleason-pattern-secondary-1)

* valueCodeableConcept.coding = $SCT#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
