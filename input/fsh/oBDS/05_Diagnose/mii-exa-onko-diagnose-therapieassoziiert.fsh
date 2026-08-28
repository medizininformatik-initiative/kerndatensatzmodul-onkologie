// Beispiele für die dueTo-Achse (Verursachung): therapieassoziierte
// Sekundärmalignome. NICHT Teil der oBDS-Meldung — FHIR-Mehrwert zur
// strukturierten Verknüpfung von Zweitmalignom und auslösender Therapie.
// Abgrenzung zu transformationVon (Linien-Kontinuität) siehe Diagnose-Seite.

// Fall 1: Therapiebedingte myeloische Neoplasie (t-AML) nach alkylanzhaltiger
// Chemotherapie — dueTo verweist auf das MedicationStatement (Cyclophosphamid).
Instance: mii-exa-onko-diagnose-taml-nach-chemo
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose t-AML nach Chemotherapie (dueTo)"
* category[onkologie] = $SCT#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#C92.0 "Akute myeloblastische Leukämie [AML]"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9920/3 "Therapiebedingte myeloische Neoplasie"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2026-03-18"
* bodySite.coding[icd-o-3] = $ICDO3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2026-03-18
// Verursachung: alkylanzhaltige Chemotherapie (Cyclophosphamid)
* extension[dueTo].valueReference = Reference(mii-exa-onko-systemische-therapie-medikation1)

// Fall 2: Radiogenes Hämangiosarkom der Thoraxwand nach Strahlentherapie —
// dueTo verweist auf die Bestrahlungs-Procedure.
Instance: mii-exa-onko-diagnose-angiosarkom-nach-radiatio
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose radiogenes Angiosarkom nach Strahlentherapie (dueTo)"
* category[onkologie] = $SCT#55342001 "Neoplastic disease"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#C49.3 "Bösartige Neubildung: Bindegewebe und andere Weichteilgewebe des Thorax"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9120/3 "Hämangiosarkom"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2026-07-01"
* bodySite.coding[icd-o-3] = $ICDO3#C49.3 "Bindegewebe des Thorax"
* extension[Feststellungsdatum].valueDateTime = 2026-07-01
// Verursachung: Strahlentherapie im früheren Bestrahlungsfeld
* extension[dueTo].valueReference = Reference(mii-exa-onko-strahlentherapie-strahlentherapie-1)
