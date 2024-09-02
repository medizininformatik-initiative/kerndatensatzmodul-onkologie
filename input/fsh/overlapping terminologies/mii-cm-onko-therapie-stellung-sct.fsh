Instance: mii-cm-onko-therapie-stellung-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-stellung-sct"
* name = "MII CM Onko Therapie Stellung SNOMED Mapping"
* title = "MII CM Onko Therapie Stellung SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Therapie Stellung Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-therapie-stellung
* group[=].target = "http://snomed.info/sct"

// should be checked
* group[=].element[+].code = #O
* group[=].element[=].display = "ohne Bezug zur operativen Therapie"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #A
* group[=].element[=].display = "adjuvant"
* group[=].element[=].target.code = #373846009
* group[=].element[=].target.display = "Adjuvant - intent (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #N
* group[=].element[=].display = "neoadjuvant"
* group[=].element[=].target.code = #373847000
* group[=].element[=].target.display = "Neoadjuvant intent (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #I
* group[=].element[=].display = "intraoperativ"
* group[=].element[=].target.code = #277671009
* group[=].element[=].target.display = "Intraoperative (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Z
* group[=].element[=].display = "additiv"
* group[=].element[=].target.code = #260364009
* group[=].element[=].target.display = "Additive (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #S
* group[=].element[=].display = "Sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
