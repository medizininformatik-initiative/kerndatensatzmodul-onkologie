Instance: mii-cm-onko-intention-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* version = "2025.1.0" 
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-intention-sct"
* name = "MII CM Onko Intention SNOMED Mapping"
* title = "MII CM Onko Intention SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-10"
* description = "Mapping Intention Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-intention
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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
* group[=].element[=].target.code = #255231005
* group[=].element[=].target.display = "Revision - value (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

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
* group[=].element[=].target.comment = "ggfs. Postkoordination mit 1255358009 | Oligometastatic malignant neoplasm (disorder) |"
