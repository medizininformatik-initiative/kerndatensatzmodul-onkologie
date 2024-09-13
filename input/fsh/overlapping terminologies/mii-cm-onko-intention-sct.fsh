Instance: mii-cm-onko-intention-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-intention-sct"
* name = "MII CM Onko Intention SNOMED Mapping"
* title = "MII CM Onko Intention SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Intention Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-intention
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #K
* group[=].element[=].display = "kurativ"
* group[=].element[=].target.code = #373808002
* group[=].element[=].target.display = "Curative - procedure intent (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P
* group[=].element[=].display = "palliativ"
* group[=].element[=].target.code = #363676003
* group[=].element[=].target.display = "Palliative - procedure intent (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #D
* group[=].element[=].display = "diagnostisch"
* group[=].element[=].target.code = #261004008
* group[=].element[=].target.display = "Diagnostic intent (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #R
* group[=].element[=].display = "Revision/Komplikation"
* group[=].element[=].target.code = #261560009 
* group[=].element[=].target.display = "Revision procedure (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Dieser Code befindet sich nicht wie die anderen Codes als direktes Children-Element des Konzepts 363675004 | Intents (nature of procedure values) (qualifier value) | , sondern stattdessenvon dem darüberliegenden Konzept 277367001 | Nature of procedure values (qualifier value)"

* group[=].element[+].code = #S
* group[=].element[=].display = "Sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #X
* group[=].element[=].display = "fehlende Angabe"
* group[=].element[=].target.code = #1287211007
* group[=].element[=].target.display = "No information available (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #O
* group[=].element[=].display = "lokal kurativ bei Oligometastasierung"
* group[=].element[=].target.code = #373808002
* group[=].element[=].target.display = "Curative - procedure intent (qualifier value)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Folgende Postkoordinierung möglich:1287742003 | Radiotherapy (procedure) | : 363702006 |Has focus (attribute)| = 1255358009 | Oligometastatic malignant neoplasm (disorder) |, 363703001 |Has intent (attribute)| = 373808002 | Curative - procedure intent (qualifier value) |"
