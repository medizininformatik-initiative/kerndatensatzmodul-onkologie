Profile: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand-karnofsky
Title: "MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky"
Description: "OBDS Beschreibung des allgemeines Leistungszustandes nach Karnofsky"
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
* code.coding = $SCT#761869008  //|Karnofsky Performance Status score (observable entity)|
* code.coding.system 1..
* code.coding.code 1..

* value[x] 0..1 MS
* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
* valueCodeableConcept.coding 1..1 MS
* valueCodeableConcept.coding from https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky
* insert Label(valueCodeableConcept.coding,Leistungszustand nach Karnofsky, Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021 )
* insert Translation(valueCodeableConcept.coding ^short, de-DE, Leistungszustand nach Karnofsky )
* insert Translation(valueCodeableConcept.coding ^definition, de-DE, Leistungszustand nach Karnofsky 0-100% gemäß 12.1 oBDS 2021 )



Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand-Karnofsky
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand_Karnofsky
* -> "12" "Allgemeiner Leistungszustand"
* valueCodeableConcept.coding.code -> "12.1" "Allgemeiner Leistungszustand" 
