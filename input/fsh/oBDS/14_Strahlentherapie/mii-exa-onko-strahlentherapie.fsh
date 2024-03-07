Instance: mii-exa-onko-strahlentherapie
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "Example radiation therapy"
Description: "Example radiation therapy"
* subject = Reference(Patient/example)
* status = #final

* extension[Intention].valueCodeableConcept = $mii-cs-onko-strahlentherapie-intention#P // palliativ
* extension[Intention].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-intention"
* extension[Stellung].valueCodeableConcept = $mii-cs-onko-strahlentherapie-stellung#A // adjuvant
* extension[Stellung].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-stellung"
* extension[Behandlungsabschnitt].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-behandlungsabschnitt"
* extension[Behandlungsabschnitt].extension[Applikationsart].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-applikationsart#P-ST
* extension[Behandlungsabschnitt].extension[Strahlenart].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-strahlenart#UH
* extension[Behandlungsabschnitt].extension[Zielgebiet].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-zielgebiet#3.4
* extension[Behandlungsabschnitt].extension[Zielgebiet_Lateralitaet].valueCodeableConcept =  $mii-cs-onko-primaertumor-seitenlokalisation#L
* extension[Behandlungsabschnitt].extension[Gesamtdosis].valueQuantity.value =  60.0
* extension[Behandlungsabschnitt].extension[Gesamtdosis].valueQuantity.unit =  $UCUM#Gy
* extension[Behandlungsabschnitt].extension[Einzeldosis].valueQuantity.value =  12.0
* extension[Behandlungsabschnitt].extension[Einzeldosis].valueQuantity.unit =  $UCUM#Gy
* extension[Behandlungsabschnitt].extension[Boost].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-boost#SIB
* code.coding = $OPS#8-52 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"