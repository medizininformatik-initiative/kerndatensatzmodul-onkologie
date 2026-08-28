Profile: MII_PR_Onko_Strahlentherapie
Parent: MII_PR_Prozedur_Procedure
Id: mii-pr-onko-strahlentherapie
Title: "MII PR Onkologie Strahlentherapie"
Description: "Strahlentherapie. Dieses Profil beschreibt eine Strahlentherapie in der Onkologie."
* insert PR_CS_VS_Version
* insert Publisher
* ^status = #active


// Logical Modell see:  https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532153/Strahlentherapie+ST+Typ
* meta.profile 0..* MS
* subject 1..1 MS
* subject only Reference(Patient)
* encounter 0..1 MS


// Intention der Strahlentherapie
* extension contains mii-ex-onko-strahlentherapie-intention named Intention 1..1
* extension[Intention] MS
* insert Label (extension[Intention], Intention der Strahlentherapie,Intention der Strahlentherapie gemäß 14.1 oBDS 2021. )
* insert Translation(extension[Intention] ^short, de-DE, Intention der Strahlentherapie )
* insert Translation(extension[Intention] ^definition, de-DE, Intention der Strahlentherapie gemäß 14.1 oBDS 2021. )

// Strahlentherapie Stellung zu operativer Therapie
* extension contains MII_EX_Onko_Strahlentherapie_StellungZurOp named StellungZurOp 0..
* extension[StellungZurOp] MS
* insert Label (extension[StellungZurOp], Stellung der Strahlentherapie zu einer Operation,Stellung der Strahlentherapie zu einer Operation gemäß 14.2 oBDS 2021. )
* insert Translation(extension[StellungZurOp] ^short, de-DE, Stellung der Strahlentherapie zu einer Operation)
* insert Translation(extension[StellungZurOp] ^definition, de-DE, Stellung der Strahlentherapie zu einer Operation gemäß 14.2 oBDS 2021. )


// Strahlentherapie Beginn und Ende
* performed[x] MS
* performed[x] only Period //  wird über Period.start und Period.stop des MII Prozedurmoduls erfasst
* performedPeriod.start 1..1 MS
* performedPeriod.end 0..1 MS
* insert Label(performedPeriod.start, Start der Strahlentherapie, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021.)
* insert Translation(performedPeriod.start ^short, de-DE, Start der Strahlentherapie)
* insert Translation(performedPeriod.start ^definition, de-DE, Start der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.5 oBDS 2021. )
* insert Label(performedPeriod.end, Ende der Strahlentherapie, Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021.)
// Seeds-Konvention (oBDS 14.6): Bei Permanentstrahlern ist der Applikationstag
// als Ende zu dokumentieren — start == end ist dann korrekt und FHIR-valide
// (per-1 verlangt nur start <= end). DQ-Regel siehe GH #292 (beads ioj.1).
* performedPeriod.end ^comment = "Bei Permanentstrahlern (Seeds, typischerweise interstitielle LDR-Brachytherapie) ist gemäß oBDS der Tag der Applikation als Ende zu dokumentieren — Beginn und Ende sind dann identisch."
* insert Translation(performedPeriod.end ^short, de-DE, Ende der Strahlentherapie )
* insert Translation(performedPeriod.end ^definition, de-DE, Ende der gesamten Strahlentherapie mit allen Einzelbestrahlungen gemäß 14.6 oBDS 2021. )

// Strahlentherapie Ende Grund
* outcome MS
* outcome 0..1
* outcome.coding MS
* outcome.coding.code MS
* outcome.coding.system MS
* outcome.coding from MII_VS_Onko_Strahlentherapie_Ende_Grund (required)
* insert Label(outcome.coding, Grund für Ende der Strahlentherapie, Grund für Ende der Strahlentherapie - planmäßig oder abgebrochen -  gemäß 14.12 oBDS 2021.)
* insert Translation(outcome.coding ^short, de-DE, Grund für Ende der Strahlentherapie)
* insert Translation(outcome.coding ^definition, de-DE, Grund für Ende der Strahlentherapie - planmäßig oder abgebrochen -  gemäß 14.12 oBDS 2021.)


// Referenz auf Tumorboard
* basedOn MS
* basedOn only Reference(CarePlan)
// agi: Tumorkonferenz typsicher referenzierbar (Muster: mii-pr-onko-befund)
* basedOn ^slicing.discriminator.type = #type
* basedOn ^slicing.discriminator.path = "$this.resolve()"
* basedOn ^slicing.rules = #open
* basedOn contains tumorkonferenz 0..1 MS
* basedOn[tumorkonferenz] only Reference(MII_PR_Onko_Tumorkonferenz)

// Referenz auf Primaerdiagnose oder andere Condition
* reasonReference MS
* reasonReference only Reference(MII_PR_Onko_Diagnose_Primaertumor or Condition)

// Referenz auf letzte Verlaufsobservation zur zeitlichen und inhaltlichen Kopplung
* partOf MS
* partOf only Reference(Observation)



Mapping: FHIR-oBDS-Strahlentherapie
Id: oBDS
Title: "Mapping FHIR zu oBDS"
Source: MII_PR_Onko_Strahlentherapie
* -> "14" "Strahlentherapie"
* extension[Intention].valueCodeableConcept.coding.code -> "14.1" "Intention der Strahlentherapie"
* extension[StellungZurOp].valueCodeableConcept.coding.code -> "14.2" "Strahlentherapie Stellung zu operativer Therapie"
* performed[x].start -> "14.5" "Strahlentherapie Beginn"
* performed[x].end -> "14.6" "Strahlentherapie Ende"
* outcome.coding.code -> "14.13" "Strahlentherapie Ende Grund"