Instance: mii-exa-onko-tumorgroesse
InstanceOf: MII_PR_Onko_Tumorgroesse
Usage: #example
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse"

* status = #final

* code.coding[loinc] = $LNC#21889-1 "Size Tumor"
* code.coding[snomed] = $SCT#371479009 "Tumor size, largest dimension (observable entity)"

* subject = Reference(Patient/example)
* focus = Reference(Condition/exampleOncologicCondition)

* effectiveDateTime = "2024-03-15"

* valueQuantity.value = 25
* valueQuantity.code = #mm
* valueQuantity.system = $UCUM
* valueQuantity.unit = "mm"

* bodySite.coding = $SCT#80248007 "Left breast structure (body structure)"

* method.coding = $SCT#67151002 "Histologic examination (procedure)"
