Profile: MII_PR_Onko_Krebsdiagnose
Parent: Condition
Id: mii-pr-onko-krebsdiagnose
Title: "MII PR Onko Krebsdiagnose"
* clinicalStatus 1..1
* code 1..1 MS
* code.coding only CodingICD10GM
  * code MS
  * version MS
  * system MS
  * display MS
  * extension[Diagnosesicherheit] MS
  * extension[Seitenlokalisation] MS
// * stage.assessment only Reference(UICC_TNM)
* extension contains mii-ex-onko-icd-o named topography 0..1 MS
* extension[topography].valueCoding
  * code MS
  * version MS
  * system MS
  * display MS
* recordedDate MS
* stage
  * assessment ^slicing.discriminator[+].type = #profile
  * assessment ^slicing.discriminator[=].path = "resolve().code"
  * assessment ^slicing.rules = #open
  * assessment contains tnm-classification 0..*
  * assessment[tnm-classification] only Reference(MII_PR_Onko_TNM_Klassifikation)
