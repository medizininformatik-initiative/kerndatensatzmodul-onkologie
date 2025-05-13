Instance: mii-exa-onko-strahlentherapie-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "Example radiation therapy"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* subject = Reference(Patient/example)
* status = #completed

* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#P // palliativ
* extension[Intention].url = $mii-ex-onko-strahlentherapie-intention
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#A // adjuvant
* extension[StellungZurOp].url = $mii-ex-onko-strahlentherapie-stellungzurop
* category = $SCT#399315003 "Radionuclide therapy"
* code.coding = $OPS#8-53 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"

Instance: mii-exa-onko-strahlentherapie-bestrahlung-nuklearmedizin-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Nuklearmedizin
Usage: #example
Title: "Strahlentherapie: Beispiel einer Nuklearmedizinischen Bestrahlungstherapie"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* subject = Reference(Patient/example)
* status = #completed



* bodySite =  $mii-cs-onko-strahlentherapie-zielgebiet#6.14 "Becken (r, l)"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept =  $mii-cs-onko-seitenlokalisation#L
* extension[Gesamtdosis].valueQuantity.value =  30.0
* extension[Gesamtdosis].valueQuantity.unit =  $UCUM#GBq
* extension[Boost].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-boost#N
* category = $SCT#399315003 "Radionuclide therapy" 
* code.coding = $OPS#8-530.d2 "Therapie mit offenen Radionukliden: Intravenöse Radioliganden-Therapie: Therapie mit Lutetium-177-PSMA-Liganden aus nicht patientenindividueller Herstellung" // 
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"
* usedCode[Strahlenart] = $mii-cs-onko-strahlentherapie-strahlenart#Lu-177
* usedCode[Applikationsart] = $mii-cs-onko-strahlentherapie-applikationsart#MPSMA
