Instance: mii-cm-onko-strahlentherapie-boost-snomed-mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-boost-sct"
* name = "MII CM Onko Strahlentherapie Boost SCT Mapping"
* title = "MII CM Onko Strahlentherapie Boost SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Boost Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-strahlentherapie-boost
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #J
* group[=].element[=].display = "ja, mit Boost o. n. A."
* group[=].element[=].target.code = #445232009
* group[=].element[=].target.display = "Boost radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SIB
* group[=].element[=].display = "simultan integrierter Boost"
* group[=].element[=].target.code = #445232009
* group[=].element[=].target.display = "Boost radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #SEQ
* group[=].element[=].display = "sequentieller Boost"
* group[=].element[=].target.code = #445232009
* group[=].element[=].target.display = "Boost radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #KON
* group[=].element[=].display = "konkomitanter Boost"
* group[=].element[=].target.code = #445232009
* group[=].element[=].target.display = "Boost radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #N
* group[=].element[=].display = "nein, ohne Boost"
* group[=].element[=].target.code = #373067005
* group[=].element[=].target.display = "No (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent