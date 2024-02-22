Instance: mii-exa-onko-genetische-variante-braf
InstanceOf: mii-pr-onko-genetische-variante
Usage: #example
* status = #final
* subject = Reference(Patient/example)

* effectiveDateTime = "2022-02-08"
* component[conclusion-string].valueString = "BRAF1 Class II Mutation"
* component[molecular-consequence].code.coding.code = #molecular-consequence
* component[molecular-consequence].code.coding.system = "http://hl7.org/fhir/uv/genomics-reporting/CodeSystem/tbd-codes-cs"
* component[molecular-consequence].valueCodeableConcept.coding = $mii-cs-onko-genetische-variante-auspraegung#M "Mutation"
