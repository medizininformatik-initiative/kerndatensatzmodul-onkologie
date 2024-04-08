Instance: mii-exa-onko-strahlentherapie
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "Example radiation therapy"
Description: "Example radiation therapy"
* subject = Reference(Patient/example)
* status = #final

* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#P // palliativ
* extension[Intention].url = $mii-ex-onko-strahlentherapie-intention
* extension[Stellung].valueCodeableConcept = $mii-cs-onko-therapie-stellung#A // adjuvant
* extension[Stellung].url = $mii-ex-onko-strahlentherapie-stellung
* extension[Bestrahlung].url = $mii-ex-onko-strahlentherapie-bestrahlung
* extension[Bestrahlung].extension[Applikationsart].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-applikationsart#P-ST
* extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-strahlenart#UH
* extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-zielgebiet#3.4
* extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept =  $mii-cs-onko-seitenlokalisation#L
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value =  60.0
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.unit =  $UCUM#Gy
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value =  12.0
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.unit =  $UCUM#Gy
* extension[Bestrahlung].extension[Boost].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-boost#SIB
* code.coding = $OPS#8-52 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"