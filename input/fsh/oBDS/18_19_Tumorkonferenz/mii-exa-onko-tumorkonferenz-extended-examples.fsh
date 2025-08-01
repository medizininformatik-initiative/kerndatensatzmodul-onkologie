// =====================================================
// EXAMPLES FOR EXTENDED SLICE - MOLECULAR TUMOR BOARD
// Demonstrates new unified CarePlan with activity[extended] slice
// =====================================================

// =====================================================
// EXAMPLE 1: TRADITIONAL oBDS + EXTENDED MOLECULAR RECOMMENDATION
// Mixed approach: Standard oBDS categorization + detailed molecular protocol
// =====================================================

Instance: mii-exa-onko-tumorkonferenz-mixed-approach
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* identifier.value = "Tumorkonferenz_Mixed_001"
* status = #active
* intent = #plan
* subject = Reference(Patient/example)
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #MOL // Molekulares Tumorboard
* category.text = "Molekulares Tumorboard"
* created = "2024-01-15"
* addresses = Reference(Condition/primaertumor-example)

// Activity 1: Traditional oBDS slice - general operation recommendation
* activity[obds][0].detail.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* activity[obds][0].detail.code.coding.code = #OP
* activity[obds][0].detail.status = #scheduled

// Activity 2: Extended slice - detailed molecular protocol via RequestGroup
* activity[extended][0].reference = Reference(mii-exa-onko-molecular-cdk46-protocol)
* activity[extended][0].progress.text = "Molecular profiling shows HR+/HER2- status with PI3K pathway activation - CDK4/6 inhibitor combination recommended"

// =====================================================
// EXAMPLE 2: PURE EXTENDED SLICE APPROACH
// Only molecular tumor board recommendations without traditional oBDS categorization
// =====================================================

Instance: mii-exa-onko-tumorkonferenz-pure-molecular
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* identifier.value = "Tumorkonferenz_Molecular_002"
* status = #active
* intent = #plan
* subject = Reference(Patient/example)
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #MOL
* category.text = "Molekulares Tumorboard - Precision Medicine"
* created = "2024-01-16"
* addresses = Reference(Condition/primaertumor-example)

// Only extended activities - no traditional oBDS categorization
* activity[extended][0].reference = Reference(mii-exa-onko-molecular-her2-alternatives)
* activity[extended][0].progress.text = "HER2+ with T790M mutation and brain metastases - specific agent sequence based on resistance profile"

* activity[extended][1].reference = Reference(mii-exa-onko-molecular-surgery-request)
* activity[extended][1].progress.text = "Neurosurgical consultation recommended for brain metastases management"

// =====================================================
// SUPPORTING REQUESTGROUP INSTANCES
// =====================================================

// RequestGroup for CDK4/6 inhibitor protocol (pharmaceutical class approach)
Instance: mii-exa-onko-molecular-cdk46-protocol
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CZ // Chemotherapie + zielgerichtete Substanzen
* code.text = "CDK4/6 Inhibitor + Hormontherapie Kombination"
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/primaertumor-example)
* action[0].resource = Reference(mii-exa-onko-cdk46-class-medication)
* action[0].title = "CDK4/6 Inhibitor (pharmazeutische Klasse)"
* action[0].description = "Beliebiger CDK4/6 Inhibitor: Palbociclib, Ribociclib oder Abemaciclib je nach Verfügbarkeit und Patientenfaktoren"

// RequestGroup for HER2-targeted alternatives (specific medication choices)
Instance: mii-exa-onko-molecular-her2-alternatives
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #ZS // Zielgerichtete Substanzen
* code.text = "HER2-gerichtete Therapie - Resistenz-basierte Auswahl"
* subject = Reference(Patient/example)
* authoredOn = "2024-01-16"
* reasonReference = Reference(Condition/primaertumor-example)
* action[0].title = "HER2-Therapie Optionen"
* action[0].description = "Auswahl basierend auf Resistenzprofil und klinischer Situation"
* action[0].selectionBehavior = #any
* action[0].requiredBehavior = #must
* action[0].action[0].title = "Zweite Linie: T-DM1"
* action[0].action[0].resource = Reference(mii-exa-onko-tdm1-option)
* action[0].action[1].title = "Dritte Linie: Tucatinib-Kombination"
* action[0].action[1].resource = Reference(mii-exa-onko-tucatinib-option)

// ServiceRequest for surgical consultation (demonstrates ServiceRequest support)
Instance: mii-exa-onko-molecular-surgery-request
InstanceOf: ServiceRequest
Usage: #example
* status = #active
* intent = #proposal
* category.coding.system = "http://snomed.info/sct"
* category.coding.code = #387713003 "Surgical procedure"
* code.coding.system = "http://snomed.info/sct"
* code.coding.code = #11429006 "Consultation"
* code.text = "Neurochirurgische Konsultation für Hirnmetastasen"
* subject = Reference(Patient/example)
* authoredOn = "2024-01-16"
* reasonReference = Reference(Condition/primaertumor-example)
* note.text = "Molekulares Tumorboard empfiehlt neurochirurgische Evaluation für stereotaktische Radiochirurgie bei oligometastatischen Hirnläsionen"