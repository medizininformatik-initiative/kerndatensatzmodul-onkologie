Profile: MII_PR_Onko_Lokale_Interventionelle_Therapie
Parent: Procedure
Id: mii-pr-onko-lokale-interventionelle-therapie
Title: "MII PR Onko Lokale Interventionelle Therapie"
* extension contains $DeOnkoIntention named Intention 0..1 MS
* extension contains $DeOnkoStellungOp named StellungZurOp 0..1 MS
* extension[Intention].value[x] from mii-vs-onko-intention
* extension[StellungZurOp].value[x] from mii-vs-onko-stellung-op
* bodySite MS
* outcome MS
* complication MS
* outcome from $DeOnkoResidualStatusVS
* complication from $DeOnkoOpComplicationsVS
* performed[x] MS
* performedDateTime MS
