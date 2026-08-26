// Beispielpaar für die Transformations-Achse (beads 14w.9): MDS → sekundäre AML.
// Die AML-Diagnose verweist per transformationVon auf die registrierte
// MDS-Ursprungsdiagnose; deren Diagnosedatum bleibt unverändert erhalten.

Instance: mii-exa-onko-diagnose-mds
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose MDS (Ursprungsdiagnose)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#D46.2 "Myelodysplastisches Syndrom: Refraktäre Anämie mit Ringsideroblasten"
* code.coding[icd10-gm].version = "2023"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9983/3 "Refraktäre Anämie mit Ringsideroblasten"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2023-03-10"
* bodySite.coding[icd-o-3] = $ICDO3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2023-03-10

Instance: mii-exa-onko-diagnose-aml-transformation
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose sekundäre AML (Transformation aus MDS)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#C92.0 "Akute myeloblastische Leukämie [AML]"
* code.coding[icd10-gm].version = "2025"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9895/3 "Akute myeloische Leukämie mit myelodysplasieassoziierten Veränderungen"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2025-06-02"
* bodySite.coding[icd-o-3] = $ICDO3#C42.1 "Knochenmark"
* extension[Feststellungsdatum].valueDateTime = 2025-06-02
// Kausale Achse: Transformation aus der registrierten MDS-Diagnose
* extension[transformationVon].valueReference = Reference(mii-exa-onko-diagnose-mds)
// Zeitliche Achse (optional zusätzlich): trat nach der MDS auf
* extension[occurredFollowing].valueReference = Reference(mii-exa-onko-diagnose-mds)
