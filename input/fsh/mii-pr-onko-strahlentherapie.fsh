Profile: MII_PR_Onko_Strahlentherapie
Parent: $DeOnkoRadiotherapy
Id: mii-pr-onko-strahlentherapie
Title: "MII PR Onko Strahlentherapie"
* extension contains mii-ex-onko-therapie-ende-grund named terminationReason 0..1 MS
* extension[Intention] MS
  * value[x] from mii-vs-onko-intention
* extension[StellungZurOp] MS
  * value[x] from mii-vs-onko-stellung-op
* code from mii-vs-onko-strahlentherapie-code-ops (required)
* performed[x] MS
* performedPeriod MS
* bodySite MS
* outcome MS
