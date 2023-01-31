Profile: MII_PR_Onko_Strahlentherapie
Parent: $DeOnkoRadiotherapy
Id: mii-pr-onko-strahlentherapie
Title: "MII PR Onko Strahlentherapie"
* extension contains mii-ex-onko-strahlentherapie-ende-grund named terminationReason 0..1 MS
* extension contains $CtcaeGrade named sideEffect 0..1 MS
* extension[Intention].value[x] from mii-vs-onko-intention
// * extension[Intention].value[x].coding.system = Canonical(MII_CS_Onko_Intention) (exactly)
* extension[StellungZurOp].value[x] from mii-vs-onko-stellung-op
// * extension[StellungZurOp].valueCodeableConcept.coding.system = Canonical(MII_CS_Onko_Stellung_OP) (exactly)
* code from mii-vs-onko-strahlentherapie-code-ops (required)
