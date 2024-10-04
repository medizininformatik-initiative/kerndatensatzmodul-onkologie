Profile: MII_PR_Onko_Diagnose_Primaertumor
Parent: https://www.medizininformatik-initiative.de/fhir/core/modul-diagnose/StructureDefinition/Diagnose
Id: mii-pr-onko-diagnose-primaertumor
Title: "MII PR Onkologie Diagnose Primärtumor"
Description: "Dieses Profil beschreibt die Diagnose des Primärtumors (bzw. der primären hämatologisch-myeloneoplastischen Erkrankung)"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft
* meta.profile 0..* MS
* encounter 0..1 MS
* subject 1..1 MS
* subject only Reference(Patient)
* verificationStatus MS 
* verificationStatus.coding ^slicing.discriminator.type = #pattern
* verificationStatus.coding ^slicing.discriminator.path = "$this"
* verificationStatus.coding ^slicing.rules = #open
* verificationStatus.coding contains
    condition-ver-status 1..1 MS and
    primaertumorDiagnosesicherung 0..1 MS
* verificationStatus.coding[condition-ver-status] ^patternCoding.system = $condition-ver-status
* verificationStatus.coding[condition-ver-status] from $verification-status-vs (required)
* verificationStatus.coding[primaertumorDiagnosesicherung] ^patternCoding.system = $mii-cs-onko-primaertumor-diagnosesicherung
* verificationStatus.coding[primaertumorDiagnosesicherung] from mii-vs-onko-primaertumor-diagnosesicherung (required)
* verificationStatus.coding[primaertumorDiagnosesicherung].code 1.. MS
* verificationStatus.coding[primaertumorDiagnosesicherung].system 1.. MS
* bodySite.coding contains
    primaertumorSeitenlokalisation 0..1 MS
* bodySite.coding[primaertumorSeitenlokalisation] from mii-vs-onko-seitenlokalisation
* bodySite.coding[primaertumorSeitenlokalisation].system 1.. MS
* bodySite.coding[primaertumorSeitenlokalisation] ^patternCoding.system = $mii-cs-onko-seitenlokalisation
* bodySite.coding[primaertumorSeitenlokalisation].code 1.. MS
* evidence 0..1 MS
* evidence.detail MS
* evidence.detail only Reference(MII_PR_Onko_Liste_Evidenz_Erstdiagnose)

/** extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains MII_EX_Onko_Histology_Morphology_Behavior_ICDO3 named morphology-behavior-icdo3 0..1 MS
*/
Mapping: FHIR-oBDS-Diagnose
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Diagnose_Primaertumor
* -> "5" "Diagnose"
* code.coding[icd10-gm].code -> "5.1" "Primärtumor Tumordiagnose ICD Code"
* code.coding[icd10-gm].version -> "5.2" "Primärtumor Tumordiagnose ICD-Version"
* code.text -> "5.3" "Primärtumor Tumordiagnose Text"
* bodySite.coding[icd-o-3].code -> "5.4" "Primärtumor Topographie ICD-O"
* bodySite.coding[icd-o-3].version -> "5.5" "Primärtumor Topographie ICD-O-Version"
* recordedDate -> "5.6" "Primärtumor Diagnosedatum"
* verificationStatus.coding[primaertumorDiagnosesicherung].code -> "5.7" "Primärtumor Diagnosesicherung"
* bodySite.coding[primaertumorSeitenlokalisation].code -> "5.8" "Primärtumor Seitenlokalisation"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.code -> "6.3" "Morphologie-Code"
* extension[morphology-behavior-icdo3].valueCodeableConcept.coding.version -> "6.4" "Morphologie ICD-O/Blue Book Version"
* extension[morphology-behavior-icdo3].valueCodeableConcept.text -> "6.5" "Morphologie-Freitext"
* -> "5.9" "Frühere Tumorerkrankungen"
