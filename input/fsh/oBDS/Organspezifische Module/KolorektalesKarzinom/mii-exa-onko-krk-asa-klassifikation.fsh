Instance: mii-exa-onko-krk-asa-klassifikation
InstanceOf: MII_PR_Onko_KRK_ASA_Klassifikation
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-asa-klassifikation"

* status = #final

* code.coding = $LNC#97816-3 "American society of anesthesiologists morbidity state"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* focus = Reference(mii-exa-onko-krk-diagnose)

* effectiveDateTime = "2024-03-15T08:30:00+01:00"

* valueCodeableConcept = MII_CS_Onko_KRK_ASA_oBDS#2 "ASA II"