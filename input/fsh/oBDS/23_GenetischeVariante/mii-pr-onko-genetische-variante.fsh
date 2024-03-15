Profile: MII_PR_Onko_Genetische_Variante
Parent: https://www.medizininformatik-initiative.de/fhir/ext/modul-molgen/StructureDefinition/variante 
Id: mii-pr-onko-genetische-variante
Title: "MII PR Onkologie Genetische Variante"
Description: "Genetische Variante wie im oBDS "
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft


* subject 1..1 MS
* subject only Reference(Patient)

* component MS
* component 1..*
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.description = "Slice based on the component.code pattern"

* component[conclusion-string] MS
* component[molecular-consequence] MS
* value[x] ^slicing.discriminator.type = #pattern
* value[x] ^slicing.discriminator.path = "code"
* value[x] ^slicing.rules = #open
* value[x] ^slicing.description = "Slice based on the value.code pattern"

* value[x] only CodeableConcept
* valueCodeableConcept from $mii-cs-onko-genetische-variante-auspraegung (required)

Mapping: FHIR-oBDSGenetischeVariante
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Genetische_Variante
* -> "23" "Genetische Variante"
* component[conclusion-string].value[x] -> "23.1" "Genetische Variante Name" 
* component[molecular-consequence].value[x] -> "23.2" "Genetische Variante Ausprägung" 
