Profile: MII_PR_Onko_Fruehere_Tumorerkrankung
Parent: Condition
Id: mii-pr-onko-fruehere-tumorerkrankung
Title: "MII PR Onkologie Frühere Tumorerkrankung"
Description: "Dieses Profil beschreibt frühere Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden. Basiert auf FHIR Condition, da historische Daten oft nur als Freitext vorliegen."
* insert PR_CS_VS_Version
* insert Publisher
* insert OnkoCRMIProfile
* ^status = #active
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-fruehere-tumorerkrankung"
* insert Translation(^title, de-DE, Frühere Tumorerkrankung)

// Category - oncology
* category 1..* MS
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains oncology 1..1 MS
* category[oncology] = $SCT#394593009 "Medical oncology (qualifier value)"
* category[oncology] ^short = "Kategorisierung als onkologische Diagnose"
* insert Translation(category[oncology] ^short, de-DE, Kategorisierung als onkologische Diagnose)

// Basic elements
* meta.profile 0..* MS
* encounter 0..1 MS
* subject 1..1 MS
* subject only Reference(Patient)

// Onkologie-Kennzeichnung (User-Entscheid 2026-08-28): macht onkologische
// Diagnosen über Condition?category suchbar. Das extensible-Kern-Binding
// (problem-list-item/encounter-diagnosis) bleibt gewahrt - weitere Categories
// sind zulässig (rules #open), "Onkologie" ist dort nicht abgedeckt.
* category ^slicing.discriminator.type = #pattern
* category ^slicing.discriminator.path = "$this"
* category ^slicing.rules = #open
* category contains onkologie 1..1 MS
* category[onkologie] = $SCT#55342001 "Neoplastic disease"
* insert Label(category[onkologie], Onkologie-Kennzeichnung, Kennzeichnet die Diagnose als onkologische Diagnose des KDS-Moduls Onkologie und macht sie über die category-Suche auffindbar)
* insert Translation(category[onkologie] ^short, de-DE, Onkologie-Kennzeichnung)

// Clinical status
* clinicalStatus 0..1 MS
* clinicalStatus from http://hl7.org/fhir/ValueSet/condition-clinical (required)

// Verification status - optional for historical data
* verificationStatus 0..1 MS
* verificationStatus from http://hl7.org/fhir/ValueSet/condition-ver-status (required)

// Code - text is required, ICD-10-GM coding is optional (freetext data source)
* code 1..1 MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "system"
* code.coding ^slicing.rules = #open
* code.coding contains icd10-gm 0..1 MS
* code.coding[icd10-gm].system 1.. MS
* code.coding[icd10-gm].system = "http://fhir.de/CodeSystem/bfarm/icd-10-gm"
* code.coding[icd10-gm].version 1.. MS
* code.coding[icd10-gm].code 1.. MS
* code.coding[icd10-gm] ^short = "ICD-10-GM Kodierung (optional)"
* code.coding[icd10-gm] ^definition = "ICD-10-GM Kodierung der früheren Tumorerkrankung, falls verfügbar"

* code.text 1..1 MS
* code.text ^short = "Textuelle Beschreibung der früheren Tumorerkrankung (Pflichtfeld)"
* code.text ^definition = "Freitextbeschreibung der früheren Tumorerkrankung"

// Body site - optional for historical tumor data
* bodySite 0..1 MS
* bodySite.coding ^slicing.discriminator.type = #pattern
* bodySite.coding ^slicing.discriminator.path = "system"
* bodySite.coding ^slicing.rules = #open
* bodySite.coding contains icd-o-3 0..1 MS
* bodySite.coding[icd-o-3].system 1.. MS
* bodySite.coding[icd-o-3].system = $ICDO3
* bodySite.coding[icd-o-3].code 1.. MS
// Binding auf coding-Ebene (nicht .code): Bei nacktem code kann der Validator das
// System nicht bestimmen, sobald das VS mehrere Versions-Kanten hat (Union 2014+2019).
* bodySite.coding[icd-o-3] from MII_VS_Onko_ICDO3_Topographie (required)
* insert Label (bodySite.coding[icd-o-3], ICD-O-3 Topographie, Anatomische Lokalisation nach ICD-O-3)

// Recorded date
* recordedDate 0..1 MS

// Note for additional information
* note 0..* MS

// Extensions for diagnosis date and morphology
* extension MS
* extension ^slicing.discriminator.type = #value
* extension ^slicing.discriminator.path = "url"
* extension ^slicing.rules = #open
* extension contains
    http://hl7.org/fhir/StructureDefinition/condition-assertedDate named assertedDate 0..1 MS and
    MII_EX_Onko_Histology_Morphology_Behavior_ICDO3 named morphology-behavior-icdo3 0..1 MS
* extension[assertedDate] ^short = "Diagnosedatum der früheren Tumorerkrankung"
* extension[assertedDate] ^definition = "Datum der früheren Tumorerkrankung"
* insert Label (extension[morphology-behavior-icdo3], ICD-O-Morphologie, Morphologie der früheren Tumorerkrankung nach ICD-O-3)

Mapping: FHIR-oBDS-FruehereTumorerkrankung
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Fruehere_Tumorerkrankung
* -> "5.9" "Frühere Tumorerkrankungen"
* code.coding[icd10-gm].code -> "5.9" "Frühere Tumorerkrankung ICD-10-GM Code"
* code.coding[icd10-gm].version -> "5.9" "Frühere Tumorerkrankung ICD-10-GM Version"
* code.text -> "5.9" "Frühere Tumorerkrankung Beschreibung"
* extension[assertedDate].valueDateTime -> "5.9" "Frühere Tumorerkrankung Diagnosedatum"
* bodySite.coding[icd-o-3].code -> "5.9" "Frühere Tumorerkrankung ICD-O-3 Topographie"
