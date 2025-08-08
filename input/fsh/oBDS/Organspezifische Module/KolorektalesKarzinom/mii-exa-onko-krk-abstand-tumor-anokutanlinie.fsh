Instance: mii-exa-onko-krk-abstand-tumor-anokutanlinie
InstanceOf: MII_PR_Onko_KRK_Abstand_Anokutan
Usage: #example
Title: "MII EXA Onko KRK Abstand Tumor Anokutanlinie"
Description: "Beispiel für den Abstand des Tumorunterrandes zur Anokutanlinie beim Rektumkarzinom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan"

* status = #final

* code.coding = $LNC#33748-5 "Distance from anal verge"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)
* focus = Reference(mii-exa-onko-krk-diagnose)

* effectiveDateTime = "2024-03-10T14:30:00+01:00"

* valueQuantity.value = 8.5
* valueQuantity.unit = "cm"
* valueQuantity.system = $UCUM
* valueQuantity.code = #cm