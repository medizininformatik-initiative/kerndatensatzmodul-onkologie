Instance: mii-cm-onko-krk-stoma-obds-sct
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping oBDS Stoma-Anzeichnung zu SNOMED CT"
Description: "Mapping der oBDS-Codes für präoperative Stoma-Anzeichnung zu SNOMED CT"
* status = #active
* experimental = true
* insert Version

* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-cs-onko-krk-stoma-anzeichnung"
* targetCanonical = "http://snomed.info/sct"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-cs-onko-krk-stoma-anzeichnung"
* group[=].target = "http://snomed.info/sct"
* group[=].targetVersion = "http://snomed.info/sct/900000000000207008/version/20250701"

* group[=].element[+].code = #K
* group[=].element[=].display = "Kein Stoma"
* group[=].element[=].target[+].code = #428119001
* group[=].element[=].target[=].display = "Procedure not indicated (situation)"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #N
* group[=].element[=].display = "Anzeichnung nicht durchgeführt"
* group[=].element[=].target[+].code = #262008008
* group[=].element[=].target[=].display = "Not performed (qualifier value)"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #S
* group[=].element[=].display = "Stoma angelegt, Anzeichnungsstatus unbekannt"
* group[=].element[=].target[+].code = #373068000
* group[=].element[=].target[=].display = "Undetermined (qualifier value)"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target[+].code = #261665006
* group[=].element[=].target[=].display = "Unknown"
* group[=].element[=].target[=].equivalence = #equivalent