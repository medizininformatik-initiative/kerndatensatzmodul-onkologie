// Comprehensive TNM Example - Breast Cancer Patient Journey (Issue #189)
// This example demonstrates TNM staging through different clinical scenarios:
// 1. Initial clinical staging (cT3N1M0)
// 2. Pathological staging after biopsy (pT4cN1cM0) - mixed assessment
// 3. Clinical staging after neoadjuvant chemotherapy (ycT2ycN0cM0)
// 4. Pathological staging after surgery (ypT0ypN0cM0) - with reused cM0
// 5. Recurrence staging after 3 years (rcT2N1M1) - new baseline

// ============================================
// 1. INITIAL CLINICAL STAGING - cT3N1M0
// ============================================

// Main TNM Classification - Clinical
Instance: mii-exa-onko-tnm-clinical-cT3N1M0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-cT3)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-cN1)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)
* valueCodeableConcept = $UICC#IIIA "Stadium IIIA"

// T Category - cT3
Instance: mii-exa-onko-tnm-t-kategorie-cT3
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T3 "T3"
// Additional SNOMED CT code for specific cT3 value
* valueCodeableConcept.coding[+] = $SCT#1352966002 "Union for International Cancer Control cT3 (qualifier value)"

// N Category - cN1
Instance: mii-exa-onko-tnm-n-kategorie-cN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#N1 "N1"
// Additional SNOMED CT code for specific cN1 value
* valueCodeableConcept.coding[+] = $SCT#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

// M Category - cM0 (Will be REUSED in later classifications!)
Instance: mii-exa-onko-tnm-m-kategorie-cM0
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399387003 "cM category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#M0 "M0"
// Additional SNOMED CT code for specific cM0 value
* valueCodeableConcept.coding[+] = $SCT#1352512001 "Union for International Cancer Control cM0 (qualifier value)"

// ============================================
// 2. MIXED STAGING AFTER BIOPSY - pT4cN1cM0
// ============================================

// Main TNM Classification - Mixed (pathological T, clinical N and M)
Instance: mii-exa-onko-tnm-mixed-pT4cN1cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399588009 "Pathologic TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-02-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-pT4)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-cN1)  // REUSE clinical N
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE clinical M
* valueCodeableConcept = $UICC#IIIB "Stadium IIIB"

// T Category - pT4 (NEW pathological assessment)
Instance: mii-exa-onko-tnm-t-kategorie-pT4
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#p "p"
* code = $SCT#384625004 "pT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-02-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T4 "T4"
// Additional SNOMED CT code for specific pT4 value
* valueCodeableConcept.coding[+] = $SCT#1352553009 "Union for International Cancer Control pT4 (qualifier value)"

// ============================================
// 3. CLINICAL STAGING AFTER NEOADJUVANT THERAPY - ycT2ycN0cM0
// ============================================

// Main TNM Classification - Clinical after chemotherapy
Instance: mii-exa-onko-tnm-post-chemo-ycT2ycN0cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-ycT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-ycN0)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE original clinical M
* valueCodeableConcept = $UICC#IIA "Stadium IIA"

// T Category - ycT2 (clinical after therapy)
Instance: mii-exa-onko-tnm-t-kategorie-ycT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"
* code.extension[1].valueCodeableConcept = $UICC#y "y"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T2 "T2"
// Additional SNOMED CT code for specific cT2 value
* valueCodeableConcept.coding[+] = $SCT#1352993004 "Union for International Cancer Control cT2 (qualifier value)"

// N Category - ycN0 (clinical after therapy)
Instance: mii-exa-onko-tnm-n-kategorie-ycN0
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"
* code.extension[1].valueCodeableConcept = $UICC#y "y"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-05-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#N0 "N0"
// Additional SNOMED CT code for specific cN0 value
* valueCodeableConcept.coding[+] = $SCT#1353041009 "Union for International Cancer Control cN0 (qualifier value)"

// ============================================
// 4. PATHOLOGICAL STAGING AFTER SURGERY - ypT0ypN0cM0
// ============================================

// Main TNM Classification - Pathological after surgery (complete response)
Instance: mii-exa-onko-tnm-post-surgery-ypT0ypN0cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399588009 "Pathologic TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-ypT0)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-ypN0)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-cM0)  // REUSE original - M not reassessed!
* valueCodeableConcept.text = "Complete pathological response"

// T Category - ypT0 (no residual tumor after therapy)
Instance: mii-exa-onko-tnm-t-kategorie-ypT0
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#p "p"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"
* code.extension[1].valueCodeableConcept = $UICC#y "y"
* code = $SCT#384625004 "pT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T0 "T0"
// Additional SNOMED CT code for specific pT0 value
* valueCodeableConcept.coding[+] = $SCT#1352552004 "Union for International Cancer Control pT0 (qualifier value)"

// N Category - ypN0 (no lymph node metastases after therapy)
Instance: mii-exa-onko-tnm-n-kategorie-ypN0
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#p "p"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-y-praefix"
* code.extension[1].valueCodeableConcept = $UICC#y "y"
* code = $SCT#371494008 "pN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2024-06-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#N0 "N0"
// Additional SNOMED CT code for specific pN0 value
* valueCodeableConcept.coding[+] = $SCT#1352621009 "Union for International Cancer Control pN0 (qualifier value)"

// ============================================
// 5. RECURRENCE STAGING AFTER 3 YEARS - rcT2N1M1
// ============================================

// Main TNM Classification - Recurrence (new baseline after disease-free interval)
Instance: mii-exa-onko-tnm-recurrence-rcT2N1M1
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* hasMember[0] = Reference(mii-exa-onko-tnm-t-kategorie-rcT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-n-kategorie-rcN1)
* hasMember[2] = Reference(mii-exa-onko-tnm-m-kategorie-rcM1)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// T Category - rcT2 (recurrence - clinical assessment)
Instance: mii-exa-onko-tnm-t-kategorie-rcT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"
* code.extension[1].valueCodeableConcept = $UICC#r "r"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T2 "T2"
// Additional SNOMED CT code for specific cT2 value (recurrence)
* valueCodeableConcept.coding[+] = $SCT#1352993004 "Union for International Cancer Control cT2 (qualifier value)"

// N Category - rcN1 (recurrence - clinical assessment)
Instance: mii-exa-onko-tnm-n-kategorie-rcN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"
* code.extension[1].valueCodeableConcept = $UICC#r "r"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#N1 "N1"
// Additional SNOMED CT code for specific cN1 value (recurrence)
* valueCodeableConcept.coding[+] = $SCT#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

// M Category - rcM1 (recurrence - NEW distant metastases detected!)
Instance: mii-exa-onko-tnm-m-kategorie-rcM1
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code.extension[1].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-r-praefix"
* code.extension[1].valueCodeableConcept = $UICC#r "r"
* code = $SCT#399387003 "cM category (observable entity)"
* subject = Reference(Patient/example)
* effectiveDateTime = "2027-06-20"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#M1 "M1"
// Additional SNOMED CT code for specific cM1 value (recurrence)
* valueCodeableConcept.coding[+] = $SCT#1352513006 "Union for International Cancer Control cM1 (qualifier value)"

// ============================================
// KEY INSIGHTS DEMONSTRATED:
// ============================================
// 1. Component reuse: The original cM0 from January 2024 is referenced in multiple later classifications
// 2. Mixed assessments: pT4cN1cM0 shows pathological T with clinical N and M
// 3. Post-therapy prefix: "y" is used for assessments during/after neoadjuvant therapy
// 4. Recurrence prefix: "r" is used for new baseline staging after disease-free interval
// 5. Temporal coherence: Each category observation has its own assessment date
// 6. Flexibility: The architecture supports any combination of assessment types within a single TNM classification