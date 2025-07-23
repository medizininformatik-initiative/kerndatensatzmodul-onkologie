

Instance: mii-exa-onko-krk-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko KRK Bundle"
Description: "Beispiel-Bundle für Kolorektales Karzinom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "krk-example-bundle-2024-001"

* type = #collection
* timestamp = "2024-03-25T10:00:00+01:00"

// Patient
* entry[0].fullUrl = "Patient/example"
* entry[=].resource = example

// Primary tumor diagnosis
* entry[+].fullUrl = "Condition/mii-exa-onko-diagnose-primaertumor-krk"
* entry[=].resource = mii-exa-onko-diagnose-primaertumor-krk

// Encounter
* entry[+].fullUrl = "Encounter/example"
* entry[=].resource = example

// Stoma marking procedure
* entry[+].fullUrl = "Procedure/mii-exa-onko-krk-stoma-markierung"  
* entry[=].resource = mii-exa-onko-krk-stoma-markierung

// Distance to anal verge observation
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie"
* entry[=].resource = mii-exa-onko-krk-abstand-tumor-anokutanlinie

// Circumferential resection margin observation
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene"
* entry[=].resource = mii-exa-onko-krk-abstand-circumferelle-resektionsebene

// Aboral resection margin observation
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral"
* entry[=].resource = mii-exa-onko-krk-abstand-resektionsrand-aboral

// MRT mesorectal fascia observation
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-mesorektale-fascie"
* entry[=].resource = mii-exa-onko-krk-abstand-mesorektale-fascie

// KRK operation procedure
* entry[+].fullUrl = "Procedure/mii-exa-onko-krk-operation"
* entry[=].resource = mii-exa-onko-krk-operation

// KRK specimen
* entry[+].fullUrl = "Specimen/mii-exa-onko-krk-specimen"
* entry[=].resource = mii-exa-onko-krk-specimen

// KRK anastomotic insufficiency observation
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-anastomoseninsuffizienz"
* entry[=].resource = mii-exa-onko-krk-anastomoseninsuffizienz

Instance: mii-exa-onko-diagnose-primaertumor-krk
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "MII EXA Onko KRK Diagnose Primaertumor"
Description: "Beispiel für eine Primärtumor-Diagnose beim Kolorektalen Karzinom"

* code.coding = $ICD10GM#C18 "Bösartige Neubildung des Kolons"
* code.coding.version = "2024"
* clinicalStatus = #active
* verificationStatus = #confirmed
* subject = Reference(Patient/example)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"
