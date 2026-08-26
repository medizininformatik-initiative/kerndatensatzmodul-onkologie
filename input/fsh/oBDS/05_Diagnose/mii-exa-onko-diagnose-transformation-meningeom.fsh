// Beispielpaar für die ZNS-Transformations-Konstellation /0 → /3 (beads 14w.9):
// Benignes Meningeom (meldepflichtig als benigner ZNS-Tumor, D32!) → anaplastisches
// malignes Meningeom. Das Register führt eine NEUE Tumor-Entität → zwei Diagnosen,
// verknüpft über transformationVon (vgl. Guidance auf der Diagnose-Seite).

Instance: mii-exa-onko-diagnose-meningeom-benigne
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose benignes Meningeom (Ursprungsdiagnose)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#D32.0 "Gutartige Neubildung: Hirnhäute"
* code.coding[icd10-gm].version = "2022"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9530/0 "Meningeom o.n.A."
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2022-09-05"
* bodySite.coding[icd-o-3] = $ICDO3#C70.0 "Hirnhäute"
* extension[Feststellungsdatum].valueDateTime = 2022-09-05

Instance: mii-exa-onko-diagnose-meningeom-maligne-transformation
InstanceOf: mii-pr-onko-diagnose-primaertumor
Usage: #example
Title: "MII EXA Onkologie Diagnose malignes Meningeom (Transformation /0 → /3)"
* insert MetaProfile(https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor)
* clinicalStatus = $condition-clinical#active
* verificationStatus.coding[condition-ver-status] = $condition-ver-status#confirmed
* verificationStatus.coding[primaertumorDiagnosesicherung].code = #7
* verificationStatus.coding[primaertumorDiagnosesicherung].display = "histologische Untersuchung eines Primärtumors"
* code.coding[icd10-gm] = $ICD10GM#C70.0 "Bösartige Neubildung: Hirnhäute"
* code.coding[icd10-gm].version = "2026"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding = $ICDO3#9530/3 "Malignes Meningeom"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version = "2019"
* subject = Reference(Patient/example)
* recordedDate = "2026-04-14"
* bodySite.coding[icd-o-3] = $ICDO3#C70.0 "Hirnhäute"
* extension[Feststellungsdatum].valueDateTime = 2026-04-14
// Kausale Achse: Transformation aus dem registrierten benignen Meningeom
* extension[transformationVon].valueReference = Reference(mii-exa-onko-diagnose-meningeom-benigne)
