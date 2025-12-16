Profile: MII_PR_Onko_Mamma_Her2neu_Status
Id: mii-pr-onko-mamma-her2neu-status
Parent: Observation
Title: "MII PR Onkologie Her2neu Status"
Description: "Dieses Profil beschreibt den Her2neu Status einer pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS

* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)

* code MS
* code 1..1
* code ^definition = "Her2neu Status, abgeleitet aus der Immunhistochemie und ggf. In-situ-Hybridisierung der Mamma-Biopsie oder des Mamma-Exzisionspräparates"
* code ^short = "Her2neu Status"
* code.coding = $LNC#48676-1 "HER2 [Interpretation] in Tissue"

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slicing für die unterschiedliche Definition von Her2neu Status im oBDS und in den S3-Leitlinien/ASCO-CAP Guidelines"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding contains DefinitionOBDS 0..1 MS and DefinitionLeitlinie 0..1 MS
* valueCodeableConcept.coding[DefinitionOBDS] from mii-vs-onko-mamma-her2neu-status-obds (extensible)
* valueCodeableConcept.coding[DefinitionOBDS].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds"
* valueCodeableConcept.coding[DefinitionLeitlinie] from mii-vs-onko-mamma-her2neu-status-leitlinie (extensible)
* valueCodeableConcept.coding[DefinitionLeitlinie].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie"

* valueCodeableConcept.coding.code 1.. MS

* component MS

* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice for Her2neu primary data observations (IHC score and ISH result)"
* component ^slicing.ordered = false

* component contains IHCScore 0..1 MS and ISHResult 0..1 MS

* component[IHCScore].code = $LNC#85319-2 "HER2 [Presence] in Breast cancer specimen by Immune stain"
* component[IHCScore].value[x] MS
* component[IHCScore].value[x] only CodeableConcept
* component[IHCScore].valueCodeableConcept MS
* component[IHCScore].valueCodeableConcept 0..1
* component[IHCScore].valueCodeableConcept from http://loinc.org/vs/LL4396-9 (extensible) // 0, 1+, 2+, 3+

* component[ISHResult].code = $LNC#96893-3 "ERBB2 gene duplication in Tumor by FISH"
* component[ISHResult].value[x] MS
* component[ISHResult].value[x] only CodeableConcept
* component[ISHResult].valueCodeableConcept MS
* component[ISHResult].valueCodeableConcept 0..1
* component[ISHResult].valueCodeableConcept from http://loinc.org/vs/LL4678-0 (extensible) // Positive, Negative, Equivocal


Mapping: FHIR-oBDS-MammaHer2neuStatus
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Mamma_Her2neu_Status
* -> "M4" "Her2neu Status"
* valueCodeableConcept.coding -> "M4" "Her2neu Status (oBDS 243)"
