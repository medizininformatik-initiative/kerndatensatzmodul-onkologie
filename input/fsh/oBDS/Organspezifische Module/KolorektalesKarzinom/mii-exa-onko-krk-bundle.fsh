
//=========================
// Bundle Core Resources 
//=========================

Instance: mii-exa-onko-krk-bundle-patient
InstanceOf: Patient
Usage: #example
* name.given = "Klaus"
* name.family = "KolorektalCa"

Instance: mii-exa-onko-krk-bundle-encounter
InstanceOf: Encounter
Usage: #example  
* status = #finished
* class = http://terminology.hl7.org/CodeSystem/v3-ActCode#IMP "inpatient encounter"
* subject = Reference(mii-exa-onko-krk-bundle-patient)

Instance: mii-exa-onko-krk-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding = $ICD10GM#C18 "Bösartige Neubildung des Kolons"
* code.coding.version = "2024"
* subject = Reference(mii-exa-onko-krk-bundle-patient)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"

//=========================
// Transaction Bundle
//=========================

Instance: mii-exa-onko-krk-bundle
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko KRK Bundle"
Description: "Beispiel-Bundle für Kolorektales Karzinom mit allen spezifischen Profilen"
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"

* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "krk-example-bundle-2024-001"

* type = #transaction
* timestamp = "2024-03-25T10:00:00+01:00"

// Core Resources
* entry[0].fullUrl = "Patient/mii-exa-onko-krk-bundle-patient"
* entry[=].resource = mii-exa-onko-krk-bundle-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "Condition/mii-exa-onko-krk-diagnose"
* entry[=].resource = mii-exa-onko-krk-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "Encounter/mii-exa-onko-krk-bundle-encounter"
* entry[=].resource = mii-exa-onko-krk-bundle-encounter
* entry[=].request.method = #POST
* entry[=].request.url = "Encounter"

// KRK-Specific Examples (using existing individual examples)
* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie"
* entry[=].resource = mii-exa-onko-krk-abstand-tumor-anokutanlinie
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene"
* entry[=].resource = mii-exa-onko-krk-abstand-circumferelle-resektionsebene
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral"
* entry[=].resource = mii-exa-onko-krk-abstand-resektionsrand-aboral
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Observation/mii-exa-onko-krk-abstand-mesorektale-fascie"
* entry[=].resource = mii-exa-onko-krk-abstand-mesorektale-fascie
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Observation/mii-exa-onko-krk-anastomoseninsuffizienz"
* entry[=].resource = mii-exa-onko-krk-anastomoseninsuffizienz
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Observation/mii-exa-onko-krk-asa-klassifikation"
* entry[=].resource = mii-exa-onko-krk-asa-klassifikation
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "Procedure/mii-exa-onko-krk-stoma-markierung"
* entry[=].resource = mii-exa-onko-krk-stoma-markierung
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "Procedure/mii-exa-onko-krk-operation"
* entry[=].resource = mii-exa-onko-krk-operation
* entry[=].request.method = #POST
* entry[=].request.url = "Procedure"

* entry[+].fullUrl = "Specimen/mii-exa-onko-krk-specimen"
* entry[=].resource = mii-exa-onko-krk-specimen
* entry[=].request.method = #POST
* entry[=].request.url = "Specimen"

Instance: mii-exa-onko-diagnose-primaertumor-krk
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "MII EXA Onko KRK Diagnose Primaertumor"
Description: "Beispiel für eine Primärtumor-Diagnose beim Kolorektalen Karzinom"

* code.coding = $ICD10GM#C18 "Bösartige Neubildung des Kolons"
* code.coding.version = "2024"
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* subject = Reference(Patient/example)
* recordedDate = "2024-01-02"
* extension[Feststellungsdatum].valueDateTime = "2020-03-07"
