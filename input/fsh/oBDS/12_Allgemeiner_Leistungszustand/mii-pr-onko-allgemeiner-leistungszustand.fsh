Profile: MII_PR_Onko_Allgemeiner_Leistungszustand
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand
Title: "MII PR Onkologie Allgemeiner Leistungszustand"
Description: "OBDS Beschreibung des allgemeines Leistungszustandes"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

* code MS
* code.coding MS
* code.coding 1..*
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    loinc 0..1 and
    snomed 0..1
* code.coding[loinc] MS
* code.coding[loinc] = $LOINC#89262-0
* code.coding[loinc].system 1.. MS
* code.coding[loinc].code 1.. MS
* code.coding[snomed] = $SCT#423740007
* code.coding[snomed].system 1..
* code.coding[snomed].code 1..

* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept.coding from $mii-vs-onko-allgemeiner-leistungszustand (required)
* valueCodeableConcept.coding.system = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungsstatus"
* valueCodeableConcept.coding.code 1.. MS


Mapping: FHIR-oBDS-Allgemeiner_Leistungszustand
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand
* -> "12" "Allgemeiner Leistungszustand"
* valueCodeableConcept.coding.code -> "12.1" "Allgemeiner Leistungszustand " 