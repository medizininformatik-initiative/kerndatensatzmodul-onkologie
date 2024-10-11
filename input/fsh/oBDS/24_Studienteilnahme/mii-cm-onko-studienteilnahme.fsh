Instance: mii-cm-onko-studienteilnahme-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-studienteilnahme-sct"
* name = "MII CM Onko Studienteilnahme SCT Mapping"
* title = "MII CM Onko Studienteilnahme SNOMED Mapping"
* status = #active
* experimental = false
* date = "2024-08-01"
* description = "Mapping Studienteilnahme Status Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-studienteilnahme
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #J
* group[=].element[=].display = "Ja"
* group[=].element[=].target.code = #373066001
* group[=].element[=].target.display = "Yes (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #N
* group[=].element[=].display = "Nein"
* group[=].element[=].target.code = #373067005
* group[=].element[=].target.display = "No (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
