Instance: mii-exa-onko-melanom-breslow-tiefe
InstanceOf: MII_PR_Onko_Melanom_Breslow_Tiefe
Usage: #example
Title: "MII EXA Onko Melanom Breslow Tiefe"
Description: "Beispiel für die Messung der Breslow-Tumordicke beim Malignen Melanom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-melanom-breslow-tiefe"

* status = #final

* code.coding = $SCT#106243009 "Breslow depth staging for melanoma of skin (observable entity)"

* subject = Reference(mii-exa-onko-melanom-bundle-patient)
* encounter = Reference(mii-exa-onko-melanom-bundle-encounter)
* focus = Reference(mii-exa-onko-melanom-diagnose)

* effectiveDateTime = "2024-03-20T14:30:00+01:00"

* valueQuantity.value = 2.1
* valueQuantity.unit = "mm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #mm

* method.coding = $SCT#117617002 "Immunohistochemistry procedure"