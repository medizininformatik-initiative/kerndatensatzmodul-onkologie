Instance: mii-exa-onko-allgemeiner-leistungszustand-1
InstanceOf: mii-pr-onko-allgemeiner-leistungszustand
Usage: #example
* status = #final
* code = $SCT#423690003 
* subject = Reference(Patient/example)

* component[ecog].code.coding =  $SCT#423740007 //|Eastern Cooperative Oncology Group performance status (observable entity)|
* component[ecog].valueCodeableConcept = $mii-cs-onko-allgemeiner-leistungszustand-ecog#3 "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30 - 40 % nach Karnofsky)"
* component[karnofsky].code.coding =  $SCT#761869008  //|Karnofsky Performance Status score (observable entity)|
* component[karnofsky].valueCodeableConcept =  $mii-cs-onko-allgemeiner-leistungszustand-karnofsky#30% "30%"
