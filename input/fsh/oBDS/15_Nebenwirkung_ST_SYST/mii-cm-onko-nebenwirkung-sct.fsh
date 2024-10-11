Instance: mii-cm-onko-nebenwirkung-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-nebenwirkung-sct"
* name = "MII CM Onko Nebenwirkung SCT Mapping"
* title = "MII CM Onko Nebenwirkung SNOMED Mapping"
* status = #active
* experimental = false
* date = "2024-04-10"
* description = "Mapping Nebenwirkung CTCAE Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-nebenwirkung-ctcae-grad
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #K
* group[=].element[=].display = "keine"
* group[=].element[=].target.code = #260413007
* group[=].element[=].target.display = "None (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #1
* group[=].element[=].display = "mild"
* group[=].element[=].target.code = #255604002
* group[=].element[=].target.display = "Mild (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "moderat"
* group[=].element[=].target.code = #1255665007
* group[=].element[=].target.display = "Moderate (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "schwerwiegend"
* group[=].element[=].target.code = #24484000
* group[=].element[=].target.display = "Severe (severity modifier) (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "lebensbedrohlich"
* group[=].element[=].target.code = #442452003
* group[=].element[=].target.display = "Life threatening severity (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5
* group[=].element[=].display = "tödlich"
* group[=].element[=].target.code = #399166001
* group[=].element[=].target.display = "Fatal (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
