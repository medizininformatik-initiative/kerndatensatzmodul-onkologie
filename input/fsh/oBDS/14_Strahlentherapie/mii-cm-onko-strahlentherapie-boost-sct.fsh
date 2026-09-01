Instance: mii-cm-onko-strahlentherapie-boost-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-boost-sct"
* name = "MII CM Onko Strahlentherapie Boost SCT Mapping"
* title = "MII CM Onko Strahlentherapie Boost SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Boost Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-strahlentherapie-boost
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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