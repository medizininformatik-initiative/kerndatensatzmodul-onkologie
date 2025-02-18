Profile: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Parent: Procedure
Id: mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie
Title: "MII PR Onkologie Strahlentherapie"
Description: "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active

* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS
* code = $SCT#1287742003 "Radiotherapy (procedure)"


* extension contains 
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Gesamtdosis named Gesamtdosis 0..1 MS and
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis named Einzeldosis 0..1 MS and
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Boost named Boost 0..1 MS

* usedCode 2..* MS
* usedCode ^slicing.discriminator.type = #pattern
* usedCode ^slicing.discriminator.path = "$this"
* usedCode ^slicing.rules = #open
* usedCode contains 
    Strahlenart 1..1 MS and
    Applikationsart 1..1 MS

* usedCode[Strahlenart] ^short = "Strahlentherapie Strahlenart" 
* usedCode[Strahlenart] ^definition = "Gibt an, mit welcher Strahlenart (sowohl Strahlung als auch Metabolite) die Strahlentherapie durchgeführt wurde."
* usedCode[Strahlenart] from  MII_VS_Onko_Strahlentherapie_Strahlenart  
* insert Label(usedCode[Strahlenart], Strahlenart, Strahlenart der Bestrahlung gemäß 14.7 oBDS 2021.)
* insert Translation(usedCode[Strahlenart] ^short, de-DE, Applikationsart)
* insert Translation(usedCode[Strahlenart] ^definition, de-DE, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021. )


* usedCode[Applikationsart] ^short = "Strahlentherapie Applikationsart"
* usedCode[Applikationsart] ^definition = "Gibt an, mit welcher Technik die Strahlentherapie durchgeführt wurde."
* usedCode[Applikationsart] from MII_VS_Onko_Strahlentherapie_Applikationsart (extensible)
* insert Label(usedCode[Applikationsart], Applikationsart, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021.)
* insert Translation(usedCode[Applikationsart] ^short, de-DE, Applikationsart)
* insert Translation(usedCode[Applikationsart] ^definition, de-DE, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021. )



* bodySite 0..1 MS
* bodySite from MII_VS_Onko_Strahlentherapie_Zielgebiet (extensible)
* bodySite.extension contains MII_EX_Onko_Strahlentherapie_Bestrahlung_Seitenlokalisation named Seitenlokalisation 0..1 MS


* performed[x] MS
* performed[x] only Period //  wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performedPeriod.start 1..1 MS
* performedPeriod.end 0..1 MS
* insert Label(performedPeriod.start, Start der Strahlentherapie, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021.)
* insert Translation(performedPeriod.start ^short, de-DE, Start der Strahlentherapie)
* insert Translation(performedPeriod.start ^definition, de-DE, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021. )
* insert Label(performedPeriod.start, Ende der Strahlentherapie, Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021.)
* insert Translation(performedPeriod.end ^short, de-DE, Ende der Strahlentherapie )
* insert Translation(performedPeriod.end ^definition, de-DE, Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021. )


// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or Condition)

// Referenz auf letzte Verlaufsobservation zur zeitlichen und inhaltlichen Kopplung
* partOf MS
* partOf only Reference(Procedure or Observation)

/*
Mapping: FHIR-oBDS-Strahlentherapie-Besta
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Strahlentherapie
* -> "14" "Strahlentherapie"
* extension[Intention].valueCodeableConcept.coding.code -> "14.1" "Intention der Strahlentherapie"
* extension[StellungZurOp].valueCodeableConcept.coding.code -> "14.2" "Strahlentherapie Stellung zu operativer Therapie"
* extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding.code -> "14.3" "Strahlentherapie Zielgebiet"
* extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding.code -> "14.4" "Strahlentherapie Seite Zielgebiet"
* performed[x].start -> "14.5" "Strahlentherapie Beginn"
* performed[x].end -> "14.6" "Strahlentherapie Ende"
* extension[Bestrahlung].extension[Applikationsart].valueCodeableConcept.coding.code -> "14.7" "Strahlentherapie Applikationsart"
* extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding.code -> "14.8" "Strahlentherapie Strahlenart"
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value -> "14.9" "Strahlentherapie Gesamtdosis"
* extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value -> "14.10" "Strahlentherapie Einzeldosis pro Tag"
* extension[Bestrahlung].extension[Einzeldosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"

* extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding.code -> "14.12" "Strahlentherapie Boost"
*/ 
/*
* extension contains mii-ex-onko-strahlentherapie-bestrahlung named Bestrahlung 1..
* extension[Bestrahlung] MS
* extension[Bestrahlung] 1..*
// Strahlentherapie 14.3 Zielgebiet FDPG Label
* insert Label(extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding, Zielgebiet, Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021.) 
* insert Translation(extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding ^short, de-DE, Zielgebiet)
* insert Translation(extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding ^definition, de-DE, Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021. )
// Strahlentherapie 14.4 Zielgebiet FDPG Label
* insert Label(extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding, Zielgebiet Lateralität, Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021.)
* insert Translation(extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding ^short, de-DE, Zielgebiet Lateralität)
* insert Translation(extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding ^definition, de-DE, Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021. )
// Applikationsart
// Strahlenart
* insert Label(extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding, Strahlenart, Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021. Hier werden sowohl Bestrahlungen als auch Radioisotope angegeben.)
* insert Translation(extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding ^short, de-DE, Strahlenart)
* insert Translation(extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding ^definition, de-DE, Strahlenart der Bestrahlung gemäß 14.8 oBDS 2021. Hier werden sowohl Bestrahlungen als auch Radioisotope angegeben.)

//Gesamtdosis
* insert Label(extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value, Gesamtdosis, Gesamtdosis gemäß 14.9 oBDS 2021. )
* insert Translation(extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value ^short, de-DE, Gesamtdosis)
* insert Translation(extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value ^definition, de-DE, Gesamtdosis gemäß 14.9 oBDS 2021. )
* insert Translation(extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.unit ^short, de-DE, Einheit der Gesamtdosis)
* insert Translation(extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.unit ^definition, de-DE, Einheit der Gesamtdosis gemäß 14.11 oBDS 2021. Hier werden sowohl Bestrahlungen als auch Radioisotope angegeben.)

//Einzeldosis
* insert Label(extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value, Einzeldosis, Einzeldosis der Strahlentherapie gemäß 14.10 oBDS 2021.)
* insert Translation(extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value ^short, de-DE, Einzeldosis)
* insert Translation(extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value ^definition, de-DE, Einzeldosis der Strahlentherapie gemäß 14.10 oBDS 2021. )
* insert Translation(extension[Bestrahlung].extension[Einzeldosis].valueQuantity.unit ^short, de-DE, Einheit der Einzeldosis)
* insert Translation(extension[Bestrahlung].extension[Einzeldosis].valueQuantity.unit ^definition, de-DE, Einheit der Einzeldosis gemäß 14.11 oBDS 2021.)


// Boost
* insert Label(extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding, Boost, Verwendung von Boosts als Teil der Bestrahlung gemäß 14.12 oBDS 2021.)
* insert Translation(extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding ^short, de-DE, Boost)
* insert Translation(extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding ^definition, de-DE, Verwendung von Boosts als Teil der Bestrahlung gemäß 14.12 oBDS 2021. )



*/


