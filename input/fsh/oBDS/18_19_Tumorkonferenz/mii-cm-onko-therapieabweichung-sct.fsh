Instance: MII-CM-Onko-Therapieabweichung-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieabweichung-sct"
* name = "MII_CM_Onko_Therapieabweichung_SNOMED_Mapping"
* title = "MII CM Onko Therapieabweichung SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Therapieabweichung Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-therapieabweichung
* group[=].target = "http://snomed.info/sct"

* group[=].element[0].code = #J
* group[=].element[=].display = "ja"
* group[=].element[=].target.code = #373066001
* group[=].element[=].target.display = "Yes (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[0].code = #N
* group[=].element[=].display = "nein"
* group[=].element[=].target.code = #373067005
* group[=].element[=].target.display = "No (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[0].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
