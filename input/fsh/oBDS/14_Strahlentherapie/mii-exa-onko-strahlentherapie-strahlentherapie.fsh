Instance: mii-exa-onko-strahlentherapie-strahlentherapie-1
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "Example radiation therapy"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)
* subject = Reference(Patient/example)
* status = #completed

* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#P // palliativ
* extension[Intention].url = $mii-ex-onko-strahlentherapie-intention
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#A // adjuvant
* extension[StellungZurOp].url = $mii-ex-onko-strahlentherapie-stellungzurop
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code.coding = $OPS#8-52 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* code.coding.version = "2019"
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"

Instance: mii-exa-onko-strahlentherapie-bestrahlung-strahlentherapie-1
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Title: "Strahlentherapie: Beispiel einer Strahlentherapie mit allgemeinem OPS-Code 8-52"
Description: "Example radiation therapy conformant with MII Prozedur as bracket for radiation and nuclear therapy"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* subject = Reference(Patient/example)
* status = #completed
* bodySite.coding =  $mii-cs-onko-strahlentherapie-zielgebiet#3.4

* bodySite.extension[Seitenlokalisation].valueCodeableConcept =  $mii-cs-onko-seitenlokalisation#L
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code.coding = $OPS#8-52 // allgemeiner OPS-Code, ggfs noch beispiel mit zwei spezifischeren OPS-Codes
* code.coding.version = "2019"
* performedPeriod.start = "2019-07-04"
* performedPeriod.end = "2019-09-14"
* usedCode[Strahlenart] = $mii-cs-onko-strahlentherapie-strahlenart#PN
* extension[Applikationsart].valueCodeableConcept = $mii-cs-onko-strahlentherapie-applikationsart#PRCJ
* extension[Gesamtdosis].valueQuantity.value =  60.0
* extension[Gesamtdosis].valueQuantity.unit =  $UCUM#Gy
* extension[Einzeldosis].valueQuantity.value =  12.0
* extension[Einzeldosis].valueQuantity.unit =  $UCUM#Gy
* extension[Boost].valueCodeableConcept =  $mii-cs-onko-strahlentherapie-boost#SIB

// =============================================================================
// Prophylaktische Ganzhirnbestrahlung (PCI) bei SCLC — §65c-Beschluss 31.05.2022
// (beads ioj.2): tumorspezifische prophylaktische Bestrahlung IST zu dokumentieren;
// StellungZurOp = S (Sonstiges), Intention aus dem Gesamtkonzept (hier kurativ).
// Supportive Bestrahlungen (z. B. Mamillenbestrahlung unter Hormontherapie) sind
// dagegen NICHT zu erfassen — siehe Guidance auf der Strahlentherapie-Seite.
// =============================================================================
Instance: mii-exa-onko-strahlentherapie-pci-sclc
InstanceOf: MII_PR_Onko_Strahlentherapie
Usage: #example
Title: "MII EXA Onkologie Strahlentherapie PCI bei SCLC (prophylaktisch)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie)
* subject = Reference(Patient/example)
* status = #completed
* extension[Intention].url = $mii-ex-onko-strahlentherapie-intention
* extension[Intention].valueCodeableConcept = $mii-cs-onko-intention#K // kurativ (Gesamtkonzept SCLC limited disease)
* extension[StellungZurOp].url = $mii-ex-onko-strahlentherapie-stellungzurop
* extension[StellungZurOp].valueCodeableConcept = $mii-cs-onko-therapie-stellungzurop#S // Sonstiges (prophylaktisch)
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code.coding = $OPS#8-52
* code.coding.version = "2026"
* performedPeriod.start = "2026-05-04"
* performedPeriod.end = "2026-05-18"

Instance: mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc
InstanceOf: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Usage: #example
Title: "MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie)
* subject = Reference(Patient/example)
* status = #completed
* partOf = Reference(mii-exa-onko-strahlentherapie-pci-sclc)
* bodySite.coding = $mii-cs-onko-strahlentherapie-zielgebiet#1.1 "Ganzhirn (Neurokranium, inklusive Meningen)"
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code.coding = $OPS#8-52
* code.coding.version = "2026"
* performedPeriod.start = "2026-05-04"
* performedPeriod.end = "2026-05-18"
* usedCode[Strahlenart] = $mii-cs-onko-strahlentherapie-strahlenart#PN
* extension[Applikationsart].valueCodeableConcept = $mii-cs-onko-strahlentherapie-applikationsart#PRCN
* extension[Gesamtdosis].valueQuantity.value = 25.0
* extension[Gesamtdosis].valueQuantity.unit = $UCUM#Gy
* extension[Einzeldosis].valueQuantity.value = 2.5
* extension[Einzeldosis].valueQuantity.unit = $UCUM#Gy
