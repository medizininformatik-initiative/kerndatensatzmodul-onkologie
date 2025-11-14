Instance: mii-exa-onko-allgemeiner-leistungszustand-ecog
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand-ecog
Usage: #example
* status = #final
* code.coding[snomed] = $SCT#423740007
* code.coding[loinc] = $LNC#89262-0
* subject = Reference(Patient/example)

* valueCodeableConcept.coding[obds] = $mii-cs-onko-allgemeiner-leistungszustand-ecog#2 "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
// * valueCodeableConcept.coding[loinc] = $LNC#LA9624-8 "Ambulatory and capable of all selfcare but unable to carry out any work activities; up and about more than 50% of waking hours"

