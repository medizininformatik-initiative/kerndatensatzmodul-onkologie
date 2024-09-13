Instance: mii-cm-onko-tod-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tod-sct"
* name = "MII CM Onko Tod SCT Mapping"
* title = "MII CM Onko Tod SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Tod Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-tod
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #J
* group[=].element[=].display = "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* group[=].element[=].target.code = #373066001
* group[=].element[=].target.display = "Yes (qualifier value)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #N
* group[=].element[=].display = "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
* group[=].element[=].target.code = #373067005
* group[=].element[=].target.display = "No (qualifier value)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #wider
