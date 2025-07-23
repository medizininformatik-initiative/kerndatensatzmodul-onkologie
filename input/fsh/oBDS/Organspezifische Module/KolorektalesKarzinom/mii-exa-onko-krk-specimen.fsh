Instance: mii-exa-onko-krk-specimen
InstanceOf: MII_PR_Onko_KRK_Specimen
Usage: #example
Title: "MII EXA Onko KRK Specimen"
Description: "Beispiel für ein Histologie-Specimen beim Kolorektalen Karzinom"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen"

* status = #available

* type.coding = $SCT#309226005 "Specimen from large intestine"

* subject = Reference(Patient/example)

* collection.collectedDateTime = "2024-03-22T08:30:00+01:00"

* accessionIdentifier.value = "KRK-2024-001234"

* condition = MII_CS_Onko_KRK_TME_Qualitaet#1 "Grad 1 (gut)"

* note.text = "Sigmaresekat mit Primärtumor und regionären Lymphknoten"