Profile: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
Id: mii-pr-onko-mamma-rezeptorstatus-progesteron
Parent: Observation
Title: "MII PR Onkologie Rezeptorstatus Progesteron"
Description: "Dieses Profil beschreibt den diagnostischen Progesteron-Rezeptorstatus eines pathologisch untersuchten Probe beim Mamma-Karzinom in der Onkologie"
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
* code ^definition = "Rezeptorstatus Progesteron, abgeleitet aus der Immunhistochemie der Mamma-Biopsie oder des Mamma-Exzisionspräparates, basierend auf Zahl der positiven Zellen und Färbeintensität"
* code ^short = "Rezeptorstatus Progesteron"
* code.coding = $LNC#85339-0 // "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain" 
// achtung bei Metastasen ggfs. nicht zutreffend, da kein breast cancer specimen, dann 40557-1 "Progesterone receptor Ag [Presence] in Tissue by Immune stain"



* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept.coding ^slicing.discriminator.type = #value
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding ^slicing.description = "Slicing für die unterschiedliche Definition von Rezeptorstatus im oBDS und in den S3-Leitlinien"
* valueCodeableConcept.coding ^slicing.ordered = false
* valueCodeableConcept.coding contains DefinitionOBDS 0..1 MS and DefinitionLeitlinie 0..1 MS
* valueCodeableConcept.coding[DefinitionOBDS] from mii-vs-onko-mamma-rezeptorstatus-obds (extensible)
* valueCodeableConcept.coding[DefinitionOBDS].system = "http://loinc.org"
* valueCodeableConcept.coding[DefinitionLeitlinie] from mii-vs-onko-mamma-rezeptorstatus-leitlinie (extensible)
* valueCodeableConcept.coding[DefinitionLeitlinie].system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus-leitlinie"
* component MS


* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code.coding"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice for Receptor Status Progesteron primary data observations"
* component ^slicing.ordered = false
 
* component contains AnteilPositiveZellen 0..1 MS and Faerbeintensitaet 0..1 MS
* component[AnteilPositiveZellen].code.coding = $SCT#1234803000 "Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry"
* component[AnteilPositiveZellen].value[x] MS
* component[AnteilPositiveZellen].value[x] only Quantity
* component[AnteilPositiveZellen].valueQuantity MS
* component[AnteilPositiveZellen].valueQuantity 0..1
* component[AnteilPositiveZellen].valueQuantity.unit = "%" 
* component[AnteilPositiveZellen].valueQuantity.system = "http://unitsofmeasure.org"
* component[AnteilPositiveZellen].valueQuantity.code = #%
* component[AnteilPositiveZellen].valueQuantity.value 0..1 MS
* component[Faerbeintensitaet].code.coding = $SCT#1237278006 "Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
* component[Faerbeintensitaet].value[x] MS
* component[Faerbeintensitaet].value[x] only CodeableConcept
* component[Faerbeintensitaet].valueCodeableConcept MS
* component[Faerbeintensitaet].valueCodeableConcept 0..1
* component[Faerbeintensitaet].valueCodeableConcept from mii-vs-onko-mamma-faerbeintensitaet (extensible) // Weak, Moderate, Strong (≙ LOINC LL4358-9)

Mapping: FHIR-oBDS-MammaRezeptorstatusProgesteron
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Mamma_Rezeptorstatus_Progesteron
* -> "M3" "HormonrezeptorStatus: Progesteron"
* valueCodeableConcept -> "M3" "Kategoriale Bewertung des Progesteron-Rezeptorstatus"
* component[AnteilPositiveZellen].valueQuantity.value -> "M3 (Komponente)" "Anteil positiver Zellen in Prozent; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
* component[Faerbeintensitaet].valueCodeableConcept -> "M3 (Komponente)" "Färbeintensität; keine eigene oBDS-Feldnummer (S3-Leitlinie)"
