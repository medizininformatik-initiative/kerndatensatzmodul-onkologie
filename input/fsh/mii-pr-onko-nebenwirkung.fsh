Profile: MII_PR_Onko_Nebenwirkung
Parent: AdverseEvent
Id: mii-pr-onko-nebenwirkung
Title: "MII PR Onko Nebenwirkung"
Description: "Nebenwirkung einer Therapie"
* severity 0..0
* actuality = #actual (exactly)
* event from mii-vs-onko-ctcae-term
* extension contains mii-ex-onko-nebenwirkung-grad named grade 0..1 MS
* extension[grade].valueCodeableConcept.coding
  * code MS
  * version MS
