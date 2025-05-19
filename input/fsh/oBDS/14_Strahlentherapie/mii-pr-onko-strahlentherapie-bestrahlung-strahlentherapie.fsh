Profile: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
Parent: MII_PR_Prozedur_Procedure
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
* category 0..1 MS
* category = $SCT#1287742003 "Radiotherapy (procedure)"
* code 1..1 MS
* code from MII_VS_Onko_OPS_Strahlentherapie (extensible)


* extension contains 
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Gesamtdosis named Gesamtdosis 0..1 MS and
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Einzeldosis named Einzeldosis 0..1 MS and
    MII_EX_Onko_Strahlentherapie_Bestrahlung_Boost named Boost 0..1 MS

* usedCode 0..* MS
* usedCode ^slicing.discriminator.type = #pattern
* usedCode ^slicing.discriminator.path = "system"
* usedCode ^slicing.rules = #open
* usedCode contains 
    Strahlenart 0..1 MS and
    Applikationsart 0..1 MS

* usedCode[Strahlenart] ^short = "Strahlentherapie Strahlenart" 
* usedCode[Strahlenart] ^definition = "Gibt an, mit welcher Strahlenart (sowohl Strahlung als auch Metabolite) die Strahlentherapie durchgeführt wurde."
* usedCode[Strahlenart] from  MII_VS_Onko_Strahlentherapie_Strahlenart (extensible)
* usedCode[Strahlenart].coding.code 1..1 MS
* usedCode[Strahlenart].coding.system 1..1 MS
* usedCode[Strahlenart].coding.system = $mii-cs-onko-strahlentherapie-strahlenart
* insert Label(usedCode[Strahlenart], Strahlenart, Strahlenart der Bestrahlung gemäß 14.7 oBDS 2021.)
* insert Translation(usedCode[Strahlenart] ^short, de-DE, Applikationsart)
* insert Translation(usedCode[Strahlenart] ^definition, de-DE, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021. )


* usedCode[Applikationsart] ^short = "Strahlentherapie Applikationsart"
* usedCode[Applikationsart] ^definition = "Gibt an, mit welcher Technik die Strahlentherapie durchgeführt wurde."
* usedCode[Applikationsart] from MII_VS_Onko_Strahlentherapie_Applikationsart (extensible)
* usedCode[Applikationsart].coding.code 1..1 MS
* usedCode[Applikationsart].coding.system 1..1 MS
* usedCode[Applikationsart].coding.system = $mii-cs-onko-strahlentherapie-applikationsart
* insert Label(usedCode[Applikationsart], Applikationsart, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021.)
* insert Translation(usedCode[Applikationsart] ^short, de-DE, Applikationsart)
* insert Translation(usedCode[Applikationsart] ^definition, de-DE, Applikationsart der Bestrahlung gemäß 14.7 oBDS 2021. )



* bodySite 0..1 MS
* bodySite from MII_VS_Onko_Strahlentherapie_Zielgebiet (extensible)
* bodySite.extension contains MII_EX_Onko_Strahlentherapie_Bestrahlung_Seitenlokalisation named Seitenlokalisation 0..1 MS
* insert Label(bodySite.coding,Zielgebiet, Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021.)
* insert Translation(bodySite.coding ^short, de-DE, Zielgebiet)
* insert Translation(bodySite.coding ^definition, de-DE, Zielgebiet der Strahlentherapie gemäß 14.3 oBDS 2021.  )
* insert Label(bodySite.extension[Seitenlokalisation].valueCodeableConcept.coding,  Zielgebiet Lateralität, Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021.)
* insert Translation(bodySite.extension[Seitenlokalisation].valueCodeableConcept.coding ^short, de-DE, Zielgebiet Lateralität )
* insert Translation(bodySite.extension[Seitenlokalisation].valueCodeableConcept.coding ^definition, de-DE, Lateralität des Zielgebiets der Strahlentherapie gemäß 14.4 oBDS 2021. )



* performed[x] MS
* performed[x] only Period //  wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performedPeriod.start 1..1 MS
* performedPeriod.end 0..1 MS
* insert Label(performedPeriod.start, Start der Strahlentherapie, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021.)
* insert Translation(performedPeriod.start ^short, de-DE, Start der Strahlentherapie)
* insert Translation(performedPeriod.start ^definition, de-DE, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021. )
* insert Label(performedPeriod.end, Ende der Strahlentherapie, Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021.)
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


Mapping: FHIR-oBDS-Strahlentherapie-Bestrahlung-Strahlentherapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Strahlentherapie_Bestrahlung_Strahlentherapie
* -> "14" "Strahlentherapie"
* bodySite.coding.code -> "14.3" "Strahlentherapie Zielgebiet"
* bodySite.extension[Seitenlokalisation].valueCodeableConcept.coding.code -> "14.4" "Strahlentherapie Seite Zielgebiet"
* performed[x].start -> "14.5" "Strahlentherapie Beginn"
* performed[x].end -> "14.6" "Strahlentherapie Ende"
* usedCode[Applikationsart].coding.code -> "14.7" "Strahlentherapie Applikationsart"
* usedCode[Strahlenart].coding.code -> "14.8" "Strahlentherapie Strahlenart"
* extension[Gesamtdosis].valueQuantity.value -> "14.9" "Strahlentherapie Gesamtdosis"
* extension[Gesamtdosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"
* extension[Einzeldosis].valueQuantity.value -> "14.10" "Strahlentherapie Einzeldosis pro Tag"
* extension[Einzeldosis].valueQuantity.unit -> "14.11" "Strahlentherapie Einheit"
* extension[Boost].valueCodeableConcept.coding.code -> "14.12" "Strahlentherapie Boost"





