Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante 
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS beschrieben"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter MS

* note MS 
* note.text MS 

* interpretation MS
* interpretation from mii-vs-onko-genetische-variante-auspraegung (required)
* interpretation.coding.system MS
* interpretation.coding.code MS
* value[x] ^slicing.discriminator.type = #pattern
* value[x] ^slicing.rules = #open
* value[x] ^slicing.ordered = false
* value[x] only CodeableConcept
* valueCodeableConcept 0..1 MS
* valueCodeableConcept.coding.system MS
* valueCodeableConcept.coding.code MS


Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* note -> "23.1" "Genetische Variante Name" 
* interpretation -> "23.2" "Genetische Variante Ausprägung" 
