// =============================================================================
// MII EXA Onkologie TNM Bundle — LEGACY (pre-SNOMED-CT-dual-coding)
// -----------------------------------------------------------------------------
// Mirror of mii-exa-onko-tnm-bundle.fsh but using only the legacy single
// UICC coding on valueCodeableConcept (no [snomed-ct] slice). Demonstrates
// that the grouper-anchored search pattern works identically without the
// SNOMED CT mapping — what ties T2 and N3 to "the same staging" is the
// hasMember graph on the TNM-Klassifikation Observation, NOT the codings
// on the values.
//
// Search pattern (UICC-only — drop the SNOMED $-pair from value-concept):
//
//   GET Observation
//     ?_has:Observation:has-member:code-value-concept=
//        http://snomed.info/sct|399504009$http://uicc.org|T2,
//        http://snomed.info/sct|384625004$http://uicc.org|T2
//     &_has:Observation:has-member:code-value-concept=
//        http://snomed.info/sct|399534004$http://uicc.org|N3,
//        http://snomed.info/sct|371494008$http://uicc.org|N3
//
// The Observation.code SCT terms are profile-defined (cT/pT/cN/pN category
// observable entities) and exist independently of the dual-coding on value.
// =============================================================================

// -------------------------
// Bundle core resources
// -------------------------

Instance: mii-exa-onko-tnm-bundle-legacy-patient
InstanceOf: Patient
Usage: #example
* name.given = "Tobias"
* name.family = "TNMLegacy"
* gender = #male
* birthDate = "1962-04-18"

Instance: mii-exa-onko-tnm-bundle-legacy-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = $ICD10GM#C20 "Bösartige Neubildung des Rektums"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-tnm-bundle-legacy-patient)
* recordedDate = "2024-01-11"
* extension[Feststellungsdatum].valueDateTime = "2024-01-11"

// -------------------------
// Per-category Observations — UICC coding only
// -------------------------

// T-Kategorie: cT2  (legacy: single UICC coding, no SNOMED slice)
Instance: mii-exa-onko-tnm-bundle-legacy-t-cT2
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-legacy-patient)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#T2 "T2"

// N-Kategorie: cN3
Instance: mii-exa-onko-tnm-bundle-legacy-n-cN3
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-legacy-patient)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#N3 "N3"

// M-Kategorie: cM0
Instance: mii-exa-onko-tnm-bundle-legacy-m-cM0
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-tnm-bundle-legacy-patient)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#M0 "M0"

// -------------------------
// TNM-Klassifikation (grouper) — same pattern as new bundle
// -------------------------

Instance: mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-tnm-bundle-legacy-patient)
* effectiveDateTime = "2024-01-11"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-tnm-bundle-legacy-diagnose)
* hasMember[0] = Reference(mii-exa-onko-tnm-bundle-legacy-t-cT2)
* hasMember[1] = Reference(mii-exa-onko-tnm-bundle-legacy-n-cN3)
* hasMember[2] = Reference(mii-exa-onko-tnm-bundle-legacy-m-cM0)
* valueCodeableConcept = $UICC#IIIB "Stadium IIIB"

// -------------------------
// Transaction Bundle
// -------------------------

Instance: mii-exa-onko-tnm-bundle-legacy
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko TNM Bundle Legacy (cT2 cN3 cM0, UICC-only)"
Description: "Beispiel-Bundle in der Legacy-Form (vor SNOMED-CT-Dual-Coding): ein TNM-Staging-Ereignis (cT2 cN3 cM0, UICC IIIB), zusammengehalten durch die TNM-Klassifikation als hasMember-Grouper. Demonstriert, dass die Grouper-zentrierte Suchlogik unabhängig vom Wertcoding funktioniert."
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "tnm-bundle-legacy-2024-001"
* type = #transaction
* timestamp = "2024-01-11T10:00:00+01:00"

* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-tnm-bundle-legacy-patient"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-tnm-bundle-legacy-diagnose"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-legacy-t-cT2"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-t-cT2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-legacy-n-cN3"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-n-cN3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-legacy-m-cM0"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-m-cM0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0"
* entry[=].resource = mii-exa-onko-tnm-bundle-legacy-klassifikation-cT2cN3cM0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
