Instance: mii-exa-onko-allgemeiner-leistungszustand-karnofsky
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-karnofsky
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-karnofsky)
* status = #final
* code.coding[snomed] = $SCT#761869008
* code.coding[loinc] = $LNC#89243-0
* subject = Reference(Patient/example)

* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-karnofsky#30% "30%"
* valueCodeableConcept.coding[loinc] = $LNC#LA29179-1 "Requires occasional assistance but is able to care for most needs"
// * valueCodeableConcept.coding[loinc] = $LNC#LA29172-6 "Severely disabled; hospitalization is indicated, although death not imminent"

