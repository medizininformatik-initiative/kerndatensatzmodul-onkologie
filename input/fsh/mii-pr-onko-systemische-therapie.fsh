Profile: MII_PR_Onko_Systemische_Therapie
// Parent: $DeOnkoSystemischeTherapie
Parent: MedicationStatement
Id: mii-pr-onko-systemische-therapie
Title: "MII PR Onko Systemische Therapie"
* subject only Reference(Patient)
* effective[x] MS
* effective[x] only Period
* effectivePeriod MS
* medication[x] MS
* extension contains $DeOnkoIntention named Intention 0..1 MS
* extension contains $DeOnkoStellungOp named StellungZurOp 0..1 MS
* extension contains mii-ex-onko-therapie-ende-grund named terminationReason 0..1 MS
* extension contains mii-ex-onko-systemische-therapie-art named type 0..1 MS
* extension[Intention].value[x] from mii-vs-onko-intention
* extension[StellungZurOp].value[x] from mii-vs-onko-stellung-op
