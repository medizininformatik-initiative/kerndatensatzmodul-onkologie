Instance: mii-cm-onko-fernmetastasen-lokalisation-icd-o
InstanceOf: ConceptMap
Usage: #definition
Title: "MII CM Onko Fernmetastasen-Lokalisation / ICD-O Mapping"
Description: "Mapping von \"Fernmetastasen-Lokalisation\" nach ICD-O"
* status = #draft
* name = "ConfoundingConditionMapping"
* sourceCanonical = Canonical(MII_VS_Onko_Fernmetastasen_Lokalisation)
* targetUri = $ICDO3
* group.source = Canonical(MII_VS_Onko_Fernmetastasen_Lokalisation)
* group.target = $ICDO3
* group.element[+].code = #PUL
* group.element[=].display = "Lunge"
* group.element[=].target.code = #C34
* group.element[=].target.display = "Bronchus und Lunge"
* group.element[=].target.equivalence = #wider
* group.element[+].code = #OSS
* group.element[=].display = "Knochen"
* group.element[=].target.code = #C40
* group.element[=].target.display = "Knochen, Gelenke und Gelenkknorpel der Extremitäten"
* group.element[=].target.equivalence = #wider
* group.element[+].code = #HEP
* group.element[=].display = "Leber"
* group.element[=].target.code = #C22.0
* group.element[=].target.display = "Leber"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #BRA
* group.element[=].display = "Hirn"
* group.element[=].target.code = #C71
* group.element[=].target.display = "Gehirn"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #LYM
* group.element[=].display = "Lymphknoten"
* group.element[=].target.code = #C77
* group.element[=].target.display = "Lymphknoten"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #MAR
* group.element[=].display = "Knochenmark"
* group.element[=].target.code = #C42.1
* group.element[=].target.display = "Knochmark"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #PLE
* group.element[=].display = "Pleura"
* group.element[=].target.code = #C38.4
* group.element[=].target.display = "Pleura o.n.A."
* group.element[=].target.equivalence = #equivalent
* group.element[+].code = #PER
* group.element[=].display = "Peritoneum"
* group.element[=].target.code = #C48
* group.element[=].target.display = "Retroperitoneum und Peritoneum"
* group.element[=].target.equivalence = #wider
* group.element[+].code = #ADR
* group.element[=].display = "Nebennieren"
* group.element[=].target.code = #C74
* group.element[=].target.display = "Nebenniere"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #SKI
* group.element[=].display = "Haut"
* group.element[=].target.code = #C44
* group.element[=].target.display = "Haut"
* group.element[=].target.equivalence = #equal
* group.element[+].code = #OTH
* group.element[=].display = "andere Organe"
* group.element[=].target.code = #C76
* group.element[=].target.display = "Sonstiger oder mangelhaft bezeichneter Sitz"
* group.element[=].target.equivalence = #inexact
* group.element[+].code = #GEN
* group.element[=].display = "generalisierte Metastasierung"
* group.element[=].target.equivalence = #unmatched
