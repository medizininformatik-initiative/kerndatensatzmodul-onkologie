Profile: MII_PR_Onko_Allgemeiner_Leistungszustand
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand
Title: "MII PR Onkologie Allgemeiner Leistungszustand"
Description: "OBDS Beschreibung des allgemeines Leistungszustandes"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


* code MS
* code.coding MS
* code.coding 1..*
* code.coding = $SCT#423690003  
* code.coding.system 1..
* code.coding.code 1..


* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
    ecog 0..1 and
    karnofsky 0..1  

* component[ecog].code 1..1 MS
* component[ecog].code.coding 1..1  MS
* component[ecog].code.coding =  $SCT#423740007 //|Eastern Cooperative Oncology Group performance status (observable entity)|
* component[ecog].value[x] 1..1 MS
* component[ecog].value[x] only CodeableConcept
* component[ecog].value[x] from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog
* insert Translation(value[x] ^short, de-DE, Leistungszustand nach ECOG )
* insert Translation(value[x] ^definition, de-DE, Leistungszustand nach ECOG Stufen 0-4 gemäß 12.1 oBDS 2021)

* component[karnofsky] 1..1 MS
* component[karnofsky].code 1..1 MS
* component[karnofsky].code.coding 1..1 MS
* component[karnofsky].code.coding =  $SCT#761869008  //|Karnofsky Performance Status score (observable entity)|
* component[karnofsky].value[x] 1..1 MS
* component[karnofsky].value[x] only CodeableConcept
* component[karnofsky].valueCodeableConcept from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky
* insert Translation(value[x] ^short, de-DE, Leistungszustand nach Karnofsky )
* insert Translation(value[x] ^definition, de-DE, Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021 )



Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand
* -> "12" "Allgemeiner Leistungszustand"
* valueCodeableConcept.coding.code -> "12.1" "Allgemeiner Leistungszustand " 
