Instance: mii-exa-onko-melanom-sicherheitsabstand
InstanceOf: MII_PR_Onko_Melanom_Sicherheitsabstand
Usage: #example
Title: "MII EXA Onko Melanom Sicherheitsabstand"
Description: "Beispiel für die Messung des Sicherheitsabstands beim Malignen Melanom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-sicherheitsabstand"

* status = #final

* code.coding = $SCT#396511007 "Distance of in situ melanoma from closest lateral surgical margin in excised specimen of skin (observable entity)"

* subject = Reference(Patient/example)
* encounter = Reference(Encounter/example)
* focus = Reference(Condition/mii-exa-onko-diagnose-primaertumor)

* effectiveDateTime = "2024-03-25T10:00:00+01:00"

* valueQuantity.value = 5
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm