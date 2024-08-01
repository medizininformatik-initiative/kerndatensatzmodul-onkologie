Instance: mii-cm-onko-strahlentherapie-strahleneinheit-snomed-mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahleneinheit-sct"
* name = "MII CM Onko Strahlentherapie Strahleneinheit SCT Mapping"
* title = "MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $UCUM
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #Gy
* group[=].element[=].display = "Gy"
* group[=].element[=].target.code = #229029004
* group[=].element[=].target.display = "Gray (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #GBq
* group[=].element[=].display = "GBq"
* group[=].element[=].target.code = #418931004
* group[=].element[=].target.display = "Gigabecquerel (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MBq	
* group[=].element[=].display = "MBq"
* group[=].element[=].target.code = #229034000
* group[=].element[=].target.display = "Megabecquerel (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #kBq
* group[=].element[=].display = "kBq"
* group[=].element[=].target.code = #282143001
* group[=].element[=].target.display = "Kilobecquerel (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent