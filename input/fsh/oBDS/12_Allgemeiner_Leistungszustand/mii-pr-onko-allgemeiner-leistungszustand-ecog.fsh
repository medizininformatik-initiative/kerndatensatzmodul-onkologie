Profile: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand-ecog
Title: "MII PR Onkologie Allgemeiner Leistungszustand ECOG"
Description: "OBDS Beschreibung des allgemeines Leistungszustandes nach ECOG"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


* code MS
* code.coding MS
* code.coding ^slicing.discriminator.type = #pattern
* code.coding ^slicing.discriminator.path = "$this"
* code.coding ^slicing.rules = #open
* code.coding contains
    snomed 1..1 MS and
    loinc 0..* MS
* code.coding[snomed] = $SCT#423740007  //|Eastern Cooperative Oncology Group performance status (observable entity)|
* code.coding[snomed].system 1.. MS
* code.coding[snomed].code 1.. MS
* code.coding[loinc] = $LNC#89262-0
* code.coding[loinc].system 1..
* code.coding[loinc].code 1..

* value[x] 1..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept.coding MS
* valueCodeableConcept.coding ^slicing.discriminator.type = #pattern
* valueCodeableConcept.coding ^slicing.discriminator.path = "system"
* valueCodeableConcept.coding ^slicing.rules = #open
* valueCodeableConcept.coding contains
    obds 1..1 MS and
    loinc 0..* MS
* valueCodeableConcept.coding[obds] from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog
* valueCodeableConcept.coding[obds].system 1.. MS
* valueCodeableConcept.coding[obds].code 1.. MS
* valueCodeableConcept.coding[loinc].system 1..
* valueCodeableConcept.coding[loinc].system = $LNC (exactly)
* valueCodeableConcept.coding[loinc].code 1..
* insert Label(valueCodeableConcept.coding, Leistungszustand nach ECOG, Leistungszustand nach ECOG Stufen 0-4 gemäß 12.1 oBDS 2021 )
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Leistungszustand nach ECOG )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Leistungszustand nach ECOG Stufen 0-4 gemäß 12.1 oBDS 2021)



Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand_ECOG
* -> "12" "Allgemeiner Leistungszustand"
* valueCodeableConcept.coding.code -> "12.1" "Allgemeiner Leistungszustand" 
