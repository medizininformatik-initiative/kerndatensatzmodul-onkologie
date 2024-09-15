Profile: MII_PR_Onko_Allgemeiner_Leistungszustand
Parent: Observation
Id: mii-pr-onko-allgemeiner-leistungszustand
Title: "MII PR Onkologie Allgemeiner Leistungszustand"
Description: "OBDS Beschreibung des allgemeines Leistungszustandes"
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #draft

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
/*
* value[x] MS
* value[x] only CodeableConcept
* valueCodeableConcept MS
* valueCodeableConcept 1..1
* valueCodeableConcept from mii-vs-onko-allgemeiner-leistungszustand (required)
* valueCodeableConcept.coding.system = $mii-cs-onko-allgemeiner-leistungszustand
* valueCodeableConcept.coding.code 1.. MS
*/

* component MS
* component ^slicing.discriminator.type = #pattern
* component ^slicing.discriminator.path = "$this"
* component ^slicing.rules = #open
* component contains
    ecog 0..1 and
    karnofsky 0..1 and 
    who 0..1

* component[ecog].code.coding =  $SCT#423740007 //|Eastern Cooperative Oncology Group performance status (observable entity)|
* component[karnofsky].code.coding =  $SCT#761869008  //|Karnofsky Performance Status score (observable entity)|
* component[who].code.coding =  $SCT#1230348002  //|World Health Organization performance status score (observable entity)|


/*TODO: 
* value löschen
Values im Code überprüfen
neuen Value nochmal in SNOMED überprüfen
Code system udn value set umbenenenn in ECOG
neues Code System und Value Set für Karnofsy
optional: neues Code Sysstem udn value set für WHO? 
*/ 

Mapping: FHIR-oBDS-Allgemeiner-Leistungszustand
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Allgemeiner_Leistungszustand
* -> "12" "Allgemeiner Leistungszustand"
* valueCodeableConcept.coding.code -> "12.1" "Allgemeiner Leistungszustand " 