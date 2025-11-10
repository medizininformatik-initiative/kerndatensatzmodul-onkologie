// =====================================================
// PROTOCOL MODIFICATION EXAMPLE - FOLFOX → FUFOL
// Timeline: Diagnosis → Surgery → Tumor Board → FOLFOX (6 cycles) → Neuropathy → FUFOL (6 cycles) → Follow-up
// =====================================================
//
// Clinical Scenario:
// - Patient: 62-year-old with Stage III colon cancer
// - Tumor location: Ascending colon (C18.2)
// - Treatment plan: Right hemicolectomy → Adjuvant FOLFOX4
// - Complication: Grade 3 peripheral neuropathy after cycle 6
// - Modification: Continue with 5-FU + Leucovorin only (FUFOL) for remaining 6 cycles
// - Outcome: Complete treatment, disease-free at 6-month follow-up
//
// This example demonstrates:
// 1. How to document protocol modifications mid-treatment
// 2. MedicationRequest.statusReason for discontinued drugs
// 3. Two separate Procedure resources for different treatment phases
// 4. AdverseEvent documentation (optional but recommended)
// =====================================================

// -----------------------------------------------------
// STEP 0: DIAGNOSIS AND SURGICAL PROCEDURE
// -----------------------------------------------------

// Primary Diagnosis - Stage III Ascending Colon Cancer
Instance: mii-exa-onko-ascending-colon-cancer-diagnosis
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
Title: "Kolonkarzinom Primärdiagnose - Colon ascendens"
Description: "Stage III ascending colon adenocarcinoma, diagnosed January 2024"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"
* clinicalStatus = $CLINSTAT#active
* verificationStatus = $VERSTAT#confirmed
* category = $DIAGCAT#encounter-diagnosis
* code.coding[icd10-gm] = $ICD10GM#C18.2 "Bösartige Neubildung: Colon ascendens"
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-diagnosis-modification)
* onsetDateTime = "2024-01-20"
* recordedDate = "2024-01-20"
* note.text = "Adenokarzinom des Colon ascendens, Stadium III (T3N1M0)"

// Main Surgical Procedure - Right hemicolectomy
Instance: mii-exa-onko-right-hemicolectomy
InstanceOf: MII_PR_Onko_Operation
Usage: #example
Title: "Hemikolektomie rechts"
Description: "Laparoscopic right hemicolectomy with lymph node dissection"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"
* status = #completed
* category = $SNOMEDCT#387713003 "Surgical procedure"
* code.coding[snomed] = $SNOMEDCT#26390003 "Total colectomy"
* code.coding[snomed].display = "Total colectomy"
* code.text = "Laparoskopische Hemikolektomie rechts mit Lymphknotendissektion"
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-surgery-modification)
* performedDateTime = "2024-02-20"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* outcome.coding = $SNOMEDCT#385669000 "Successful"
* note.text = "Laparoscopic right hemicolectomy performed. Tumor completely resected with clear margins (R0). 22 lymph nodes removed, 4 positive."

// TNM Classification
Instance: mii-exa-onko-ascending-colon-tnm
InstanceOf: MII_PR_Onko_TNM
Usage: #example
Title: "TNM Klassifikation - pT3 pN1 M0"
Description: "Postoperative pathological TNM staging for ascending colon cancer"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm"
* status = #final
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2024-02-25"
* code.coding = $SNOMEDCT#258235000 "UICC - Union Internationale Contre le Cancer tumor staging"
* method.coding.version = "8"
* component[T-Kategorie].code = $SNOMEDCT#78873005 "T category"
* component[T-Kategorie].valueCodeableConcept.coding = $UICC-TNM#pT3
* component[N-Kategorie].code = $SNOMEDCT#277206009 "N category"
* component[N-Kategorie].valueCodeableConcept.coding = $UICC-TNM#pN1
* component[M-Kategorie].code = $SNOMEDCT#277208005 "M category"
* component[M-Kategorie].valueCodeableConcept.coding = $UICC-TNM#M0
* component[UICC-Stadium].code = $LOINC#21914-7 "Stage group.pathology Cancer"
* component[UICC-Stadium].valueCodeableConcept.coding.code = #IIIB
* extension[TNM-c-p-u-Praefix-T].valueCodeableConcept.coding.code = #p
* extension[TNM-c-p-u-Praefix-N].valueCodeableConcept.coding.code = #p
* extension[TNM-c-p-u-Praefix-M].valueCodeableConcept.coding.code = #c

// -----------------------------------------------------
// STEP 1: TUMOR BOARD RECOMMENDATION
// -----------------------------------------------------

// CarePlan - Tumor Board Meeting
Instance: mii-exa-onko-tumorkonferenz-folfox-modification
InstanceOf: MII_PR_Onko_Tumorkonferenz_Detailed_Recommendations
Usage: #example
Title: "Tumorkonferenz - FOLFOX Empfehlung"
Description: "Tumor board recommends FOLFOX4 protocol for adjuvant treatment"
* status = #active
* intent = #plan
* category.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ"
* category.coding.code = #praeth
* category.coding.display = "Prätherapeutische Tumorkonferenz"
* subject = Reference(Patient/example-modification)
* created = "2024-03-05"
* addresses = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* activity.reference = Reference(mii-exa-onko-folfox-requestgroup-modification)
* activity.progress.text = "Tumor board recommends FOLFOX4 chemotherapy protocol for stage III colon cancer, adjuvant setting"

// RequestGroup - FOLFOX4 Combination Therapy Recommendation
Instance: mii-exa-onko-folfox-requestgroup-modification
InstanceOf: MII_PR_Onko_Therapieempfehlung_Kombinationstherapie
Usage: #example
Title: "FOLFOX4 Therapieempfehlung"
Description: "Original tumor board recommendation for FOLFOX4 protocol (later modified due to toxicity)"
* status = #active
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ"
* code.coding.code = #CH
* code.coding.display = "Chemotherapie"
* code.text = "Chemotherapie"
* action.title = "FOLFOX4 Protocol"
* action.description = "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin, 12 cycles planned"
* action.code.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* action.code.coding.code = #FOLFOX4
* action.code.coding.display = "FOLFOX4"
* action.action[0].title = "Fluorouracil (5-FU)"
* action.action[0].description = "5-Fluorouracil - pyrimidine analog"
* action.action[0].resource = Reference(mii-exa-onko-modification-5fu-request)
* action.action[1].title = "Folinsäure (Leucovorin)"
* action.action[1].description = "Folinic acid - enhances 5-FU efficacy"
* action.action[1].resource = Reference(mii-exa-onko-modification-leucovorin-request)
* action.action[2].title = "Oxaliplatin"
* action.action[2].description = "Platinum-based chemotherapy agent"
* action.action[2].resource = Reference(mii-exa-onko-modification-oxaliplatin-request)

// MedicationRequest 1: Fluorouracil - COMPLETED as planned
Instance: mii-exa-onko-modification-5fu-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Fluorouracil (vollständig verabreicht)"
Description: "Fluorouracil recommendation - completed for all 12 cycles"
* status = #completed
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* note.text = "Completed as planned for all 12 cycles"

// MedicationRequest 2: Leucovorin - COMPLETED as planned
Instance: mii-exa-onko-modification-leucovorin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Folinsäure (vollständig verabreicht)"
Description: "Leucovorin recommendation - completed for all 12 cycles"
* status = #completed
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Folinsäure"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* note.text = "Completed as planned for all 12 cycles"

// MedicationRequest 3: Oxaliplatin - STOPPED due to adverse reaction
Instance: mii-exa-onko-modification-oxaliplatin-request
InstanceOf: MII_PR_Onko_Therapieempfehlung_Medikation
Usage: #example
Title: "MedicationRequest - Oxaliplatin (abgebrochen wegen Neuropathie)"
Description: "Oxaliplatin recommendation - stopped after cycle 6 due to grade 3 peripheral neuropathy"
* status = #stopped
* statusReason.coding = $SNOMEDCT#281647001 "Adverse reaction (disorder)"
* statusReason.text = "Oxaliplatin discontinued after cycle 6 due to grade 3 peripheral neuropathy (CTCAE). Patient continued with 5-FU + Leucovorin only for remaining 6 cycles."
* intent = #proposal
* subject = Reference(Patient/example-modification)
* authoredOn = "2024-03-05"
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"
* note.text = "Administered for cycles 1-6 only. Stopped due to cumulative neurotoxicity."

// -----------------------------------------------------
// STEP 2A: TREATMENT PHASE 1 - FOLFOX4 (Cycles 1-6)
// -----------------------------------------------------

// Systemische Therapie Procedure - Phase 1: Full FOLFOX4
Instance: mii-exa-onko-folfox-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "FOLFOX4 Therapie - Phase 1 (Zyklen 1-6)"
Description: "First phase: Full FOLFOX4 protocol for 6 cycles before dose modification"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
* status = #completed
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-chemo-phase1)
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-stellung-op"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "Adjuvant"
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #CH
* code.coding[systemische_therapie_art].display = "Chemotherapie"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #8-542
* code.coding[ops].display = "Nicht komplexe Chemotherapie"
* usedCode.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* usedCode.coding.code = #FOLFOX4
* usedCode.coding.display = "FOLFOX4"
* performedPeriod.start = "2024-03-15"
* performedPeriod.end = "2024-06-10"
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* outcome.coding.code = #A
* outcome.coding.display = "Abbruch wegen Nebenwirkungen"
* note.text = "Patient received 6 cycles of FOLFOX4. Treatment modified after cycle 6 due to severe peripheral neuropathy. Continued with 5-FU/Leucovorin only."

// MedicationStatement - Phase 1: Fluorouracil (cycles 1-6)
Instance: mii-exa-onko-modification-5fu-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "5-FU Phase 1 (Zyklen 1-6)"
Description: "Fluorouracil administered during FOLFOX4 phase"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6"

// MedicationStatement - Phase 1: Leucovorin (cycles 1-6)
Instance: mii-exa-onko-modification-leucovorin-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Folinsäure Phase 1 (Zyklen 1-6)"
Description: "Leucovorin administered during FOLFOX4 phase"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Folinsäure"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6"

// MedicationStatement - Phase 1: Oxaliplatin (cycles 1-6, then STOPPED)
Instance: mii-exa-onko-modification-oxaliplatin-phase1
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Oxaliplatin Phase 1 (Zyklen 1-6, dann abgebrochen)"
Description: "Oxaliplatin administered for 6 cycles, then discontinued due to neuropathy"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #stopped
* statusReason.coding = $SNOMEDCT#281647001 "Adverse reaction (disorder)"
* statusReason.text = "Grade 3 peripheral neuropathy (CTCAE) - cumulative neurotoxicity from oxaliplatin"
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-folfox-phase1)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01XA03
* medicationCodeableConcept.coding[atcClassDe].display = "Oxaliplatin"
* medicationCodeableConcept.text = "Oxaliplatin"
* effectivePeriod.start = "2024-03-15"
* effectivePeriod.end = "2024-06-10"
* note.text = "FOLFOX4 - Cycles 1-6 only. Discontinued due to severe peripheral neuropathy. Patient experienced numbness and tingling in hands and feet (grade 3 CTCAE), interfering with daily activities."

// -----------------------------------------------------
// STEP 2B: ADVERSE EVENT DOCUMENTATION (Optional but Recommended)
// -----------------------------------------------------

// AdverseEvent - Oxaliplatin-induced neuropathy
Instance: mii-exa-onko-oxaliplatin-neuropathy
InstanceOf: AdverseEvent
Usage: #example
Title: "Unerwünschtes Ereignis - Oxaliplatin-induzierte Neuropathie"
Description: "Grade 3 peripheral neuropathy caused by oxaliplatin, leading to treatment modification"
* subject = Reference(Patient/example-modification)
* date = "2024-06-10"
* detected = "2024-06-05"
* recordedDate = "2024-06-10"
* seriousness = $ADJ-EVENT-SERIOUS#non-serious
* severity.coding.system = "http://terminology.hl7.org/CodeSystem/adverse-event-severity"
* severity.coding.code = #severe
* severity.coding.display = "Severe"
* event.coding = $SNOMEDCT#128188008 "Peripheral sensory neuropathy"
* event.text = "Oxaliplatin-induced peripheral neuropathy, grade 3 (CTCAE v5.0)"
* suspectEntity.instance = Reference(mii-exa-onko-modification-oxaliplatin-phase1)
* suspectEntity.causality.entityRelatedness.coding.system = "http://terminology.hl7.org/CodeSystem/adverse-event-causality-assess"
* suspectEntity.causality.entityRelatedness.coding.code = #certain
* suspectEntity.causality.entityRelatedness.coding.display = "Certain"
* outcome = #ongoing
* note.text = "Patient developed cumulative peripheral neuropathy after 6 cycles of oxaliplatin. Symptoms: bilateral numbness and paresthesias in fingers and toes, difficulty with fine motor tasks (buttoning clothes), cold sensitivity. CTCAE grade 3. Decision made to discontinue oxaliplatin and continue with 5-FU/Leucovorin only."

// -----------------------------------------------------
// STEP 3: TREATMENT PHASE 2 - Modified Protocol (Cycles 7-12)
// -----------------------------------------------------

// Systemische Therapie Procedure - Phase 2: FUFOL (5-FU + Leucovorin only)
Instance: mii-exa-onko-fufol-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie
Usage: #example
Title: "FUFOL Therapie - Phase 2 (Zyklen 7-12)"
Description: "Second phase: Modified protocol with 5-FU + Leucovorin only (no Oxaliplatin) for remaining 6 cycles"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"
* status = #completed
* subject = Reference(Patient/example-modification)
* encounter = Reference(Encounter/example-chemo-phase2)
* reasonReference = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* partOf = Reference(mii-exa-onko-folfox-phase1)
* extension[Intention].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* extension[Intention].valueCodeableConcept.coding.code = #K
* extension[Intention].valueCodeableConcept.coding.display = "Kurativ"
* extension[StellungZurOp].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-stellung-op"
* extension[StellungZurOp].valueCodeableConcept.coding.code = #A
* extension[StellungZurOp].valueCodeableConcept.coding.display = "Adjuvant"
* code.coding[systemische_therapie_art].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art"
* code.coding[systemische_therapie_art].code = #CH
* code.coding[systemische_therapie_art].display = "Chemotherapie"
* code.coding[ops].system = "http://fhir.de/CodeSystem/bfarm/ops"
* code.coding[ops].version = "2024"
* code.coding[ops].code = #8-542
* code.coding[ops].display = "Nicht komplexe Chemotherapie"
* usedCode.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle"
* usedCode.coding.code = #FUFOL
* usedCode.coding.display = "5-FU/Folinsäure (de Gramont)"
* performedPeriod.start = "2024-06-17"
* performedPeriod.end = "2024-09-10"
* outcome.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund"
* outcome.coding.code = #E
* outcome.coding.display = "Reguläres Ende"
* note.text = "Modified protocol: 5-FU/Leucovorin only for cycles 7-12. Oxaliplatin omitted due to persistent neuropathy. Patient tolerated modified regimen well. Completed all planned cycles."

// MedicationStatement - Phase 2: Fluorouracil (cycles 7-12)
Instance: mii-exa-onko-modification-5fu-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "5-FU Phase 2 (Zyklen 7-12)"
Description: "Fluorouracil continued for cycles 7-12 as part of modified FUFOL protocol"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-fufol-phase2)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #L01BC02
* medicationCodeableConcept.coding[atcClassDe].display = "Fluorouracil"
* medicationCodeableConcept.text = "5-Fluorouracil (5-FU)"
* effectivePeriod.start = "2024-06-17"
* effectivePeriod.end = "2024-09-10"
* note.text = "FUFOL (modified protocol) - Cycles 7-12"

// MedicationStatement - Phase 2: Leucovorin (cycles 7-12)
Instance: mii-exa-onko-modification-leucovorin-phase2
InstanceOf: MII_PR_Onko_Systemische_Therapie_Medikation
Usage: #example
Title: "Folinsäure Phase 2 (Zyklen 7-12)"
Description: "Leucovorin continued for cycles 7-12 as part of modified FUFOL protocol"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"
* status = #completed
* subject = Reference(Patient/example-modification)
* partOf[systemischeTherapie] = Reference(mii-exa-onko-fufol-phase2)
* basedOn = Reference(mii-exa-onko-tumorkonferenz-folfox-modification)
* medicationCodeableConcept.coding[atcClassDe].system = "http://fhir.de/CodeSystem/bfarm/atc"
* medicationCodeableConcept.coding[atcClassDe].code = #V03AF03
* medicationCodeableConcept.coding[atcClassDe].display = "Folinsäure"
* medicationCodeableConcept.text = "Leucovorin (Folinsäure)"
* effectivePeriod.start = "2024-06-17"
* effectivePeriod.end = "2024-09-10"
* note.text = "FUFOL (modified protocol) - Cycles 7-12"

// -----------------------------------------------------
// STEP 4: FOLLOW-UP (VERLAUF)
// -----------------------------------------------------

// Verlauf Observation - 6-month follow-up
Instance: mii-exa-onko-modification-verlauf-6months
InstanceOf: MII_PR_Onko_Allgemeiner_Leistungszustand_Verlauf
Usage: #example
Title: "Verlauf - 6 Monate nach modifizierter Therapie"
Description: "6-month follow-up showing complete response despite protocol modification"
* meta.profile = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-verlauf"
* status = #final
* subject = Reference(Patient/example-modification)
* focus = Reference(mii-exa-onko-ascending-colon-cancer-diagnosis)
* effectiveDateTime = "2025-03-10"
* code.coding = $LOINC#88040-1 "Response to cancer treatment"
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-gesamtbeurteilung-tumorstatus"
* valueCodeableConcept.coding.code = #V
* valueCodeableConcept.coding.display = "Vollremission/Vollständiges Ansprechen"
* component[Tumor].code = $SNOMEDCT#445200009 "Status of residual neoplasm (observable entity)"
* component[Tumor].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-lokaler-tumorstatus"
* component[Tumor].valueCodeableConcept.coding.code = #K
* component[Tumor].valueCodeableConcept.coding.display = "Kein Tumor nachweisbar"
* component[Lymphknoten].code = $LOINC#21906-3 "Lymph nodes.pathology [Interpretation] Cancer"
* component[Lymphknoten].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-lymphknoten-tumorstatus"
* component[Lymphknoten].valueCodeableConcept.coding.code = #K
* component[Lymphknoten].valueCodeableConcept.coding.display = "Keine Lymphknoten befallen"
* component[Fernmetastasen].code = $LOINC#21907-1 "Distant metastases.pathology [Interpretation] Cancer"
* component[Fernmetastasen].valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen-tumorstatus"
* component[Fernmetastasen].valueCodeableConcept.coding.code = #K
* component[Fernmetastasen].valueCodeableConcept.coding.display = "Keine Fernmetastasen nachweisbar"
* note.text = "Patient completed modified chemotherapy protocol (6 cycles FOLFOX4 + 6 cycles FUFOL). Despite early discontinuation of oxaliplatin due to neuropathy, patient achieved complete response. CT scan and colonoscopy show no evidence of recurrence. CEA normal (1.8 ng/mL). Peripheral neuropathy has improved to grade 1 but persists. Patient is disease-free at 6-month follow-up."
