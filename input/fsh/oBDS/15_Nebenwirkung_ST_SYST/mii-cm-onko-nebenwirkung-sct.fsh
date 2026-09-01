Instance: mii-cm-onko-nebenwirkung-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-nebenwirkung-sct"
* name = "MII CM Onko Nebenwirkung SCT Mapping"
* title = "MII CM Onko Nebenwirkung SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-10"
* description = "Mapping Nebenwirkung CTCAE Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-nebenwirkung-ctcae-grad
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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
