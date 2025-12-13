// =====================================================
// EXAMPLE 1: PHARMACEUTICAL CLASS RECOMMENDATION
// Scenario: MTB recommends "any CDK4/6 inhibitor" for HR+/HER2- breast cancer
// =====================================================

// CarePlan with detailed recommendations
Instance: mii-exa-onko-tumorkonferenz-class-recommendation
InstanceOf: mii-pr-onko-tumorkonferenz-detailed-recommendations
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations)
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth // Molekulares Tumorboard (prätherapeutisch)
* category.text = "Molekulares Tumorboard"
* subject = Reference(Patient/example)
* created = "2024-01-15"
* addresses = Reference(Condition/primaertumor-example)

// Activity references RequestGroup for class-level recommendation
* activity[0].reference = Reference(mii-exa-onko-cdk46-class-recommendation)
* activity[0].progress.text = "Molecular profiling shows HR+/HER2- status, CDK4/6 inhibitor class recommended"

// RequestGroup for CDK4/6 inhibitor class recommendation
Instance: mii-exa-onko-cdk46-class-recommendation
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CZ // Chemotherapie + zielgerichtete Substanzen
* code.text = "CDK4/6 Inhibitor + Hormontherapie"
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/primaertumor-example)

// Single MedicationRequest with class-level medication coding
* action[0].resource = Reference(mii-exa-onko-cdk46-class-medication)
* action[0].title = "CDK4/6 Inhibitor (any approved agent)"
* action[0].description = "Any CDK4/6 inhibitor: Palbociclib, Ribociclib, or Abemaciclib acceptable"

// MedicationRequest using pharmaceutical class coding
Instance: mii-exa-onko-cdk46-class-medication
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/primaertumor-example)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01EF
* medicationCodeableConcept.coding[atcClassDe].display = "Cyclin-abhängige Kinasen (CDK)-Inhibitoren"
* medicationCodeableConcept.text = "CDK4/6 Inhibitor (Cyclin-abhängige Kinasen-Inhibitor Klasse L01EF) - Palbociclib, Ribociclib oder Abemaciclib"
* note.text = "Molecular tumor board recommends any CDK4/6 inhibitor based on HR+/HER2- profile. Final agent selection at prescriber discretion."

// =====================================================
// EXAMPLE 2: SPECIFIC MEDICATION CHOICES
// Scenario: MTB provides specific HER2-targeted options based on resistance patterns
// =====================================================

// CarePlan with specific medication choices
Instance: mii-exa-onko-tumorkonferenz-specific-choices
InstanceOf: mii-pr-onko-tumorkonferenz-detailed-recommendations
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz-detailed-recommendations)
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth // Molekulares Tumorboard (prätherapeutisch)
* category.text = "Molekulares Tumorboard"
* subject = Reference(Patient/example)
* created = "2024-01-16"
* addresses = Reference(Condition/primaertumor-example)

// Activity references RequestGroup for specific choices
* activity[0].reference = Reference(mii-exa-onko-her2-specific-choices)
* activity[0].progress.text = "HER2+ with T790M mutation, specific agent recommendations based on resistance profile"

// RequestGroup with specific medication options
Instance: mii-exa-onko-her2-specific-choices
InstanceOf: mii-pr-onko-therapieempfehlung-kombinationstherapie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie)
* status = #active
* intent = #proposal
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #ZS // Zielgerichtete Substanzen
* code.text = "Anti-HER2 Therapie - spezifische Optionen"
* subject = Reference(Patient/example)
* authoredOn = "2024-01-16"
* reasonReference = Reference(Condition/primaertumor-example)

// OPTION 3: Use selectionBehavior for specific choices
* action[0].title = "HER2-targeted therapy options"
* action[0].description = "Choose one based on clinical situation and patient factors"
* action[0].selectionBehavior = #any // Any one of these options
* action[0].requiredBehavior = #must // One must be selected

// Specific medication option 1: Trastuzumab
* action[0].action[0].title = "First-line: Trastuzumab + Pertuzumab"
* action[0].action[0].resource = Reference(mii-exa-onko-trastuzumab-option)
* action[0].action[0].priority = #routine

// Specific medication option 2: T-DM1
* action[0].action[1].title = "Second-line: T-DM1 (if progression)"
* action[0].action[1].resource = Reference(mii-exa-onko-tdm1-option)
* action[0].action[1].priority = #asap

// Specific medication option 3: Tucatinib combination
* action[0].action[2].title = "Third-line: Tucatinib + Trastuzumab + Capecitabine"
* action[0].action[2].resource = Reference(mii-exa-onko-tucatinib-option)
* action[0].action[2].priority = #stat

// MedicationRequest instances for specific options
Instance: mii-exa-onko-trastuzumab-option
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/example-breast-cancer)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01FD01
* medicationCodeableConcept.coding[atcClassDe].display = "Trastuzumab"
* medicationCodeableConcept.text = "Trastuzumab + Pertuzumab"
* note.text = "First-line option for HER2+ breast cancer, preferred if treatment-naive"

Instance: mii-exa-onko-tdm1-option
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/example-breast-cancer)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01FD03
* medicationCodeableConcept.coding[atcClassDe].display = "Trastuzumab emtansin"
* medicationCodeableConcept.text = "Trastuzumab Emtansine (T-DM1)"
* note.text = "Second-line option, recommended if progression on trastuzumab-based therapy"

Instance: mii-exa-onko-tucatinib-option
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation)
* status = #active
* intent = #proposal
* subject = Reference(Patient/example)
* authoredOn = "2024-01-15"
* reasonReference = Reference(Condition/example-breast-cancer)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01EH03
* medicationCodeableConcept.coding[atcClassDe].display = "Tucatinib"
* medicationCodeableConcept.text = "Tucatinib + Trastuzumab + Capecitabine"
* note.text = "Third-line combination for brain metastases or multiply-resistant HER2+ disease"