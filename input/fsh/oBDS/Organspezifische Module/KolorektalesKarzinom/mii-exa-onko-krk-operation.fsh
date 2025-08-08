Instance: mii-exa-onko-krk-operation
InstanceOf: MII_PR_Onko_KRK_Operation
Usage: #example
Title: "MII EXA Onko KRK Operation"
Description: "Beispiel für eine Operation beim Kolorektalen Karzinom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation"

* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K "kurativ"
* status = #completed

* category.coding = $SCT#387713003 "Surgical procedure"

* code.coding[ops] = $OPS#5-484.55 "Tiefe anteriore Resektion : Laparoskopisch mit Anastomose"
* code.coding[ops].version = "2024"

* subject = Reference(mii-exa-onko-krk-bundle-patient)
* encounter = Reference(mii-exa-onko-krk-bundle-encounter)

* reasonReference = Reference(mii-exa-onko-krk-diagnose)

* performedDateTime = "2024-03-22T08:00:00+01:00"

* note.text = "Laparoskopische Resektion beim kolorektalen Karzinom"