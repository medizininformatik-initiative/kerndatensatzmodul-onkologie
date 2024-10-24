Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante 
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS beschrieben"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active
* meta.profile 0..* MS
* encounter 0..1 MS

* subject 1..1 MS
* subject only Reference(Patient)

* note MS 
* note.text MS 
* insert Translation(note.text ^short, de-DE, Genetische Variante Name)
* insert Translation(note.text ^definition, de-DE, Genetische Variante Name gemäß 23.1 oBDS 2021   )

* interpretation MS
* interpretation ^slicing.discriminator.type = #type
* interpretation ^slicing.discriminator.path = "$this"
* interpretation ^slicing.rules = #open
* interpretation only CodeableConcept 
* interpretation contains oBDS 0..1
* interpretation[oBDS] from mii-vs-onko-genetische-variante-auspraegung (required)
* interpretation[oBDS].coding.system MS
* interpretation[oBDS].coding.code MS
* insert Translation(interpretation[oBDS] ^short, de-DE, Genetische Variante Ausprägung)
* insert Translation(interpretation[oBDS] ^definition, de-DE, Genetische Variante Ausprägung gemäß 23.2 oBDS 2021   )

* value[x] ^slicing.discriminator.type = #type
* value[x] ^slicing.discriminator.path = "$this"
* value[x] ^slicing.rules = #closed
* value[x] only CodeableConcept 
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS


// Referenz zu Primärtumor
* focus MS
* focus only Reference(MII_PR_Onko_Diagnose_Primaertumor)


Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* note -> "23.1" "Genetische Variante Name" 
* interpretation -> "23.2" "Genetische Variante Ausprägung" 
