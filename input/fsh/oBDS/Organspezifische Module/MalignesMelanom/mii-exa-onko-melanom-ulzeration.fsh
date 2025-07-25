Instance: mii-exa-onko-melanom-ulzeration
InstanceOf: MII_PR_Onko_Melanom_Ulzeration
Usage: #example
Title: "MII EXA Onko Melanom Ulzeration"
Description: "Beispiel für die Bestimmung der Ulzeration beim Malignen Melanom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-ulzeration"

* status = #final

* code.coding = $SCT#6270001000004106 "Presence of ulcer in primary malignant melanoma of skin (observable entity)"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* focus = Reference(Condition/mii-exa-onko-diagnose-primaertumor)

* effectiveDateTime = "2024-03-20T14:30:00+01:00"

* valueCodeableConcept.coding = MII_CS_Onko_Melanom_Ulzeration#J "Ja"

* method.coding = $SCT#117617002 "Immunohistochemistry procedure"