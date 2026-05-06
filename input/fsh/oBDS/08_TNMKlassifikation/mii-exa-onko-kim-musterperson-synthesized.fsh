// =============================================================================
// MII EXA Onkologie Kim Musterperson — Multi-CarePlan TNM-Synthese
// -----------------------------------------------------------------------------
// Vollständige Multi-Tumorkonferenz-Demo am Beispiel Kim Musterperson
// (Ovarial-Karzinom, Intervalldebulking).
//
// Klinische Zeitachse:
//   2021-06-10  CT Abdomen → V.a. Ovarial-CA (Aszites, Lebermets-V.a.)
//   2021-06-22  Erstdiagnose nach Laparoskopie + Histo: cT3c cN1 cM1 (Stadium IV)
//   2021-06-25  TK-1 (praeth) → 3× Carbo/Pacli neoadj. + geplantes Intervalldebulking
//   2021-07-05–09-05  Carbo/Pacli (3 Zyklen)
//   2021-09-15  CT-Verlaufsbeurteilung: deutlicher Tumorprogress, ycT3c ycN1 ycM1b
//   2021-09-16  TK-2 (praeth) → trotz Progress OP zur histologischen Sicherung + max. Debulking
//   2021-09-30  Intervalldebulking (Hysterektomie + bilat. Adnexektomie + Lebersegmentresektion)
//               Postoperativ R0
//   2021-10-15  Pathologie-Befund: ypT3c (-) ypM1b (HEP) L1 V0 Pn0
//               (kein pN dokumentiert — keine systematische LK-Dissektion)
//   2021-10-25  TK-3 (postop) → adjuvante Therapieplanung
//   2022-01-15  TK-4 (postop, replaces TK-3) → Update der Therapie
//
// Vier synthetisierte TNM-Stages, eine pro Tumorkonferenz:
//   synth-1  decision=2021-06-25  phase=primary           = cT3c cN1 cM1
//   synth-2  decision=2021-09-16  phase=post-neoadjuvant  = ycT3c ycN1 ycM1b
//   synth-3  decision=2021-10-25  phase=post-neoadjuvant  = ypT3c ycN1 ypM1b L1 V0 Pn0
//                                                          (T/M/L/V/Pn aus Klass-C, N carry-forward aus Klass-B)
//   synth-4  decision=2022-01-15  phase=post-neoadjuvant  = identisch zu synth-3 (keine neuen Daten)
//
// Eine Provenance dokumentiert den ETL-Lauf, der alle 4 Stages erzeugt hat,
// und version-pinnt den Algorithmus auf mii-lib-onko-synthesize-tnm v1.0.0.
//
// Diese Datei modelliert den Synthese-Pfad. Das ursprüngliche Beispiel in
// example-patient-1.fsh bleibt unangetastet als historische Referenz für
// die Single-Klassifikation-Modellierung.
// =============================================================================

// -------------------------
// Patient + Diagnose
// -------------------------

Instance: mii-exa-onko-kim-synth-patient
InstanceOf: Patient
Usage: #example
* name.family = "Musterperson"
* name.given = "Kim"
* gender = #female
* birthDate = "1956-03-14"

Instance: mii-exa-onko-kim-synth-diagnose
InstanceOf: MII_PR_Onko_Diagnose_Primaertumor
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = http://terminology.hl7.org/CodeSystem/condition-clinical#active
* verificationStatus = http://terminology.hl7.org/CodeSystem/condition-ver-status#confirmed
* code.coding[icd10-gm] = $ICD10GM#C48.2 "Bösartige Neubildung: Peritoneum, nicht näher bezeichnet"
* code.coding[icd10-gm].version = "2024"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* recordedDate = "2021-06-22"
* extension[Feststellungsdatum].valueDateTime = "2021-06-22"

// =============================================================================
// SOURCE-MELDUNG A — Diagnose-Meldung (initial clinical staging) — 2021-06-22
// =============================================================================
// Naive Bewertung nach Bildgebung + Erstlaparoskopie. Kein y/r — primary phase.

Instance: mii-exa-onko-kim-klass1-cT3c
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-06-22"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#T3c "T3c"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352976004 "Union for International Cancer Control cT3c (qualifier value)"

Instance: mii-exa-onko-kim-klass1-cN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-06-22"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#N1 "N1"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

Instance: mii-exa-onko-kim-klass1-cM1
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-06-22"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#M1 "M1"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352513006 "Union for International Cancer Control cM1 (qualifier value)"

Instance: mii-exa-onko-kim-klass1
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-06-22"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* hasMember[0] = Reference(mii-exa-onko-kim-klass1-cT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass1-cN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass1-cM1)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// =============================================================================
// SOURCE-MELDUNG B — Verlaufs-Meldung post-Chemo (Tumorprogress) — 2021-09-15
// =============================================================================
// Re-Staging nach 3× Carbo/Pacli neoadjuvant. y-Symbol kennzeichnet das.
// M-Kategorie wird auf M1b (HEP) spezifiziert (Lebermets jetzt eindeutig).

Instance: mii-exa-onko-kim-klass2-ycT3c
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399504009 "cT category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#T3c "T3c"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352976004 "Union for International Cancer Control cT3c (qualifier value)"

Instance: mii-exa-onko-kim-klass2-ycN1
InstanceOf: mii-pr-onko-tnm-n-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399534004 "cN category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#N1 "N1"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1353043007 "Union for International Cancer Control cN1 (qualifier value)"

Instance: mii-exa-onko-kim-klass2-ycM1b
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#c "c"
* code = $SCT#399387003 "cM category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#M1b "M1b"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352514000 "Union for International Cancer Control cM1b (qualifier value)"

Instance: mii-exa-onko-kim-klass2-ysym
InstanceOf: mii-pr-onko-tnm-y-symbol
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol)
* status = #final
* code = $LNC#101658-3
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $SCT#421755005 "Tumor staging descriptor y (tumor staging)"

Instance: mii-exa-onko-kim-klass2
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = $SCT#399537006 "Clinical TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* hasMember[0] = Reference(mii-exa-onko-kim-klass2-ycT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass2-ycN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass2-ycM1b)
* hasMember[3] = Reference(mii-exa-onko-kim-klass2-ysym)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// =============================================================================
// SOURCE-MELDUNG C — Pathologie-Meldung post-OP (ypTNM) — 2021-10-15
// =============================================================================
// Histologie nach Intervalldebulking. y-Symbol weiterhin (post-neoadjuvant).
// Kein pN — keine systematische LK-Dissektion → Kategorie nicht erhoben.
// Synthese muss N aus früherer Quelle (Klass-B ycN1) carry-forward'en.

Instance: mii-exa-onko-kim-klass3-ypT3c
InstanceOf: mii-pr-onko-tnm-t-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#p "p"
* code = $SCT#384625004 "pT category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#T3c "T3c"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352556001 "Union for International Cancer Control pT3c (qualifier value)"

Instance: mii-exa-onko-kim-klass3-ypM1b
InstanceOf: mii-pr-onko-tnm-m-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie)
* status = #final
* code.extension[0].url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix"
* code.extension[0].valueCodeableConcept = $UICC#p "p"
* code = $SCT#371497001 "pM category (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding[uicc] = $UICC#M1b "M1b"
* valueCodeableConcept.coding[snomed-ct] = $SCT#1352578008 "Union for International Cancer Control pM1b (qualifier value)"

Instance: mii-exa-onko-kim-klass3-L1
InstanceOf: mii-pr-onko-tnm-l-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-l-kategorie)
* status = #final
* code = $SCT#395715009 "Status of lymphatic (small vessel) invasion by tumor (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#L1 "L1"

Instance: mii-exa-onko-kim-klass3-V0
InstanceOf: mii-pr-onko-tnm-v-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-v-kategorie)
* status = #final
* code = $SCT#371493002 "Status of venous (large vessel) invasion by tumor (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#V0 "V0"

Instance: mii-exa-onko-kim-klass3-Pn0
InstanceOf: mii-pr-onko-tnm-pn-kategorie
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-pn-kategorie)
* status = #final
* code = $SCT#371513001 "Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept = $UICC#Pn0 "Pn0"

Instance: mii-exa-onko-kim-klass3-ysym
InstanceOf: mii-pr-onko-tnm-y-symbol
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-y-symbol)
* status = #final
* code = $LNC#101658-3
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* valueCodeableConcept.coding = $SCT#421755005 "Tumor staging descriptor y (tumor staging)"

Instance: mii-exa-onko-kim-klass3
InstanceOf: mii-pr-onko-tnm-klassifikation
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation)
* status = #final
* code = $SCT#399588009 "Pathologic TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* hasMember[0] = Reference(mii-exa-onko-kim-klass3-ypT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass3-ypM1b)
* hasMember[2] = Reference(mii-exa-onko-kim-klass3-L1)
* hasMember[3] = Reference(mii-exa-onko-kim-klass3-V0)
* hasMember[4] = Reference(mii-exa-onko-kim-klass3-Pn0)
* hasMember[5] = Reference(mii-exa-onko-kim-klass3-ysym)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// =============================================================================
// SYNTHETISIERTE STAGES — eine pro Tumorkonferenz
// =============================================================================

// synth-1 für TK-1 (2021-06-25, praeth) — phase=primary
// Nur Klass-A verfügbar → Winners sind direkt Klass-A's Members
Instance: mii-exa-onko-kim-synth1
InstanceOf: mii-pr-onko-tnm-klassifikation-synthetisiert
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)
* status = #final
* code = $SCT#399390009 "TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-06-25"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* derivedFrom[0] = Reference(mii-exa-onko-kim-klass1)
* hasMember[0] = Reference(mii-exa-onko-kim-klass1-cT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass1-cN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass1-cM1)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// synth-2 für TK-2 (2021-09-16, praeth) — phase=post-neoadjuvant
// Klass-A (kein y) gefiltert → nur Klass-B (y-flagged) bleibt
// y-Symbol propagiert nach hasMember
Instance: mii-exa-onko-kim-synth2
InstanceOf: mii-pr-onko-tnm-klassifikation-synthetisiert
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)
* status = #final
* code = $SCT#399390009 "TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-09-16"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* derivedFrom[0] = Reference(mii-exa-onko-kim-klass2)
* hasMember[0] = Reference(mii-exa-onko-kim-klass2-ycT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass2-ycN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass2-ycM1b)
* hasMember[3] = Reference(mii-exa-onko-kim-klass2-ysym)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// synth-3 für TK-3 (2021-10-25, postop) — phase=post-neoadjuvant
// Klass-A gefiltert (kein y); Klass-B + Klass-C bleiben
// Per-Kategorie-Merge:
//   T: pT3c (Klass-C) trumps cT3c (Klass-B) → ypT3c
//   N: keine N-Quelle in Klass-C → carry-forward ycN1 aus Klass-B
//   M: pM1b (Klass-C) trumps cM1b (Klass-B) → ypM1b
//   L/V/Pn: nur in Klass-C
//   y-Symbol propagiert (aus beiden Quellen, dedupliziert)
Instance: mii-exa-onko-kim-synth3
InstanceOf: mii-pr-onko-tnm-klassifikation-synthetisiert
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)
* status = #final
* code = $SCT#399390009 "TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2021-10-25"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* derivedFrom[0] = Reference(mii-exa-onko-kim-klass2)
* derivedFrom[1] = Reference(mii-exa-onko-kim-klass3)
* hasMember[0] = Reference(mii-exa-onko-kim-klass3-ypT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass2-ycN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass3-ypM1b)
* hasMember[3] = Reference(mii-exa-onko-kim-klass3-L1)
* hasMember[4] = Reference(mii-exa-onko-kim-klass3-V0)
* hasMember[5] = Reference(mii-exa-onko-kim-klass3-Pn0)
* hasMember[6] = Reference(mii-exa-onko-kim-klass3-ysym)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// synth-4 für TK-4 (2022-01-15, postop, replaces TK-3) — phase=post-neoadjuvant
// Identische Quellen wie synth-3, neue Decision-Date
// (späterer ETL-Lauf, weil TK-4 erst dann stattfand)
Instance: mii-exa-onko-kim-synth4
InstanceOf: mii-pr-onko-tnm-klassifikation-synthetisiert
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert)
* status = #final
* code = $SCT#399390009 "TNM stage grouping"
* subject = Reference(mii-exa-onko-kim-synth-patient)
* effectiveDateTime = "2022-01-15"
* method = $mii-cs-onko-tnm-version#8 "8. Auflage"
* focus = Reference(mii-exa-onko-kim-synth-diagnose)
* derivedFrom[0] = Reference(mii-exa-onko-kim-klass2)
* derivedFrom[1] = Reference(mii-exa-onko-kim-klass3)
* hasMember[0] = Reference(mii-exa-onko-kim-klass3-ypT3c)
* hasMember[1] = Reference(mii-exa-onko-kim-klass2-ycN1)
* hasMember[2] = Reference(mii-exa-onko-kim-klass3-ypM1b)
* hasMember[3] = Reference(mii-exa-onko-kim-klass3-L1)
* hasMember[4] = Reference(mii-exa-onko-kim-klass3-V0)
* hasMember[5] = Reference(mii-exa-onko-kim-klass3-Pn0)
* hasMember[6] = Reference(mii-exa-onko-kim-klass3-ysym)
* valueCodeableConcept = $UICC#IV "Stadium IV"

// =============================================================================
// TUMORKONFERENZEN — vier Stück, jede mit supportingInfo auf ihre Synthese
// =============================================================================

Instance: mii-exa-onko-kim-tk1
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "kim-tk-2021-06-25"
* status = $request-status#completed
* intent = $request-intent#plan
* subject = Reference(mii-exa-onko-kim-synth-patient)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#praeth
* created = "2021-06-25"
* addresses = Reference(mii-exa-onko-kim-synth-diagnose)
* supportingInfo = Reference(mii-exa-onko-kim-synth1)
* activity[obds].detail.code.coding = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds].detail.status = $care-plan-activity-status#completed

Instance: mii-exa-onko-kim-tk2
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "kim-tk-2021-09-16"
* status = $request-status#completed
* intent = $request-intent#plan
* subject = Reference(mii-exa-onko-kim-synth-patient)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#praeth
* created = "2021-09-16"
* addresses = Reference(mii-exa-onko-kim-synth-diagnose)
* supportingInfo = Reference(mii-exa-onko-kim-synth2)
* activity[obds].detail.code.coding = $mii-cs-onko-therapie-typ#OP
* activity[obds].detail.status = $care-plan-activity-status#completed

Instance: mii-exa-onko-kim-tk3
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "kim-tk-2021-10-25"
* status = $request-status#completed
* intent = $request-intent#plan
* subject = Reference(mii-exa-onko-kim-synth-patient)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop
* created = "2021-10-25"
* addresses = Reference(mii-exa-onko-kim-synth-diagnose)
* supportingInfo = Reference(mii-exa-onko-kim-synth3)
* activity[obds].detail.code.coding = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds].detail.status = $care-plan-activity-status#scheduled

Instance: mii-exa-onko-kim-tk4
InstanceOf: mii-pr-onko-tumorkonferenz
Usage: #example
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz)
* identifier.value = "kim-tk-2022-01-15"
* status = $request-status#active
* intent = $request-intent#plan
* subject = Reference(mii-exa-onko-kim-synth-patient)
* category.coding.code = $mii-cs-onko-therapieplanung-typ#postop
* created = "2022-01-15"
* addresses = Reference(mii-exa-onko-kim-synth-diagnose)
* supportingInfo = Reference(mii-exa-onko-kim-synth4)
* activity[obds].detail.code.coding = $mii-cs-onko-therapie-typ#CH "Chemotherapie"
* activity[obds].detail.status = $care-plan-activity-status#in-progress
* replaces = Reference(mii-exa-onko-kim-tk3)

// =============================================================================
// PROVENANCE — eine Provenance dokumentiert den ETL-Lauf
// =============================================================================
// Targets alle 4 synthetisierten Stages.
// Pinned auf Algorithmus-Version mii-lib-onko-synthesize-tnm v1.0.0.

Instance: mii-exa-onko-kim-synthesis-provenance
InstanceOf: Provenance
Usage: #example
* target[0] = Reference(mii-exa-onko-kim-synth1)
* target[1] = Reference(mii-exa-onko-kim-synth2)
* target[2] = Reference(mii-exa-onko-kim-synth3)
* target[3] = Reference(mii-exa-onko-kim-synth4)
* recorded = "2026-05-06T14:00:00+02:00"
* occurredPeriod.start = "2021-06-25"
* occurredPeriod.end = "2022-01-15"
* activity = http://terminology.hl7.org/CodeSystem/v3-DataOperation#DERIVE "derive"
* agent[0].type.coding = http://terminology.hl7.org/CodeSystem/provenance-participant-type#performer
* agent[0].who.display = "ETL-Pipeline (synthesize_tnm v1.0.0)"
// entity[0]: the algorithm itself, version-pinned via identifier
* entity[0].role = #source
* entity[0].what.reference = "Library/mii-lib-onko-synthesize-tnm"
* entity[0].what.display = "synthesize_tnm v1.0.0"
* entity[0].what.identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Library/mii-lib-onko-synthesize-tnm"
* entity[0].what.identifier.value = "1.0.0"
// entity[1..3]: the input source Klassifikationen
* entity[1].role = #source
* entity[1].what = Reference(mii-exa-onko-kim-klass1)
* entity[2].role = #source
* entity[2].what = Reference(mii-exa-onko-kim-klass2)
* entity[3].role = #source
* entity[3].what = Reference(mii-exa-onko-kim-klass3)

// =============================================================================
// TRANSACTION BUNDLE
// =============================================================================

Instance: mii-exa-onko-kim-musterperson-synthesized
InstanceOf: Bundle
Usage: #example
Title: "MII EXA Onko Kim Musterperson — Multi-CarePlan TNM Synthese"
Description: "Vollständige Multi-Tumorkonferenz-Demo am Beispiel Kim Musterperson (Ovarial-CA, Intervalldebulking). Drei Source-Klassifikationen über die Zeit (Diagnose 2021-06-22, post-Chemo 2021-09-15, post-OP 2021-10-15), vier Tumorkonferenzen mit jeweils eigener synthetisierter TNM-Stage, Provenance pinnt Algorithmus auf mii-lib-onko-synthesize-tnm v1.0.0."
* meta.profile = "http://hl7.org/fhir/StructureDefinition/Bundle"
* identifier.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
* identifier.value = "kim-musterperson-synthesized-2026-001"
* type = #transaction
* timestamp = "2026-05-06T14:00:00+02:00"

* entry[0].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-kim-synth-patient"
* entry[=].resource = mii-exa-onko-kim-synth-patient
* entry[=].request.method = #POST
* entry[=].request.url = "Patient"

* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-kim-synth-diagnose"
* entry[=].resource = mii-exa-onko-kim-synth-diagnose
* entry[=].request.method = #POST
* entry[=].request.url = "Condition"

// Source-Meldung A
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass1-cT3c"
* entry[=].resource = mii-exa-onko-kim-klass1-cT3c
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass1-cN1"
* entry[=].resource = mii-exa-onko-kim-klass1-cN1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass1-cM1"
* entry[=].resource = mii-exa-onko-kim-klass1-cM1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass1"
* entry[=].resource = mii-exa-onko-kim-klass1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Source-Meldung B
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass2-ycT3c"
* entry[=].resource = mii-exa-onko-kim-klass2-ycT3c
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass2-ycN1"
* entry[=].resource = mii-exa-onko-kim-klass2-ycN1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass2-ycM1b"
* entry[=].resource = mii-exa-onko-kim-klass2-ycM1b
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass2-ysym"
* entry[=].resource = mii-exa-onko-kim-klass2-ysym
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass2"
* entry[=].resource = mii-exa-onko-kim-klass2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// Source-Meldung C
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-ypT3c"
* entry[=].resource = mii-exa-onko-kim-klass3-ypT3c
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-ypM1b"
* entry[=].resource = mii-exa-onko-kim-klass3-ypM1b
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-L1"
* entry[=].resource = mii-exa-onko-kim-klass3-L1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-V0"
* entry[=].resource = mii-exa-onko-kim-klass3-V0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-Pn0"
* entry[=].resource = mii-exa-onko-kim-klass3-Pn0
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3-ysym"
* entry[=].resource = mii-exa-onko-kim-klass3-ysym
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-klass3"
* entry[=].resource = mii-exa-onko-kim-klass3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 4 Synthesized Stages
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-synth1"
* entry[=].resource = mii-exa-onko-kim-synth1
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-synth2"
* entry[=].resource = mii-exa-onko-kim-synth2
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-synth3"
* entry[=].resource = mii-exa-onko-kim-synth3
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-kim-synth4"
* entry[=].resource = mii-exa-onko-kim-synth4
* entry[=].request.method = #POST
* entry[=].request.url = "Observation"

// 4 Tumorkonferenzen
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-kim-tk1"
* entry[=].resource = mii-exa-onko-kim-tk1
* entry[=].request.method = #POST
* entry[=].request.url = "CarePlan"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-kim-tk2"
* entry[=].resource = mii-exa-onko-kim-tk2
* entry[=].request.method = #POST
* entry[=].request.url = "CarePlan"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-kim-tk3"
* entry[=].resource = mii-exa-onko-kim-tk3
* entry[=].request.method = #POST
* entry[=].request.url = "CarePlan"
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-kim-tk4"
* entry[=].resource = mii-exa-onko-kim-tk4
* entry[=].request.method = #POST
* entry[=].request.url = "CarePlan"

// Provenance
* entry[+].fullUrl = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Provenance/mii-exa-onko-kim-synthesis-provenance"
* entry[=].resource = mii-exa-onko-kim-synthesis-provenance
* entry[=].request.method = #POST
* entry[=].request.url = "Provenance"
