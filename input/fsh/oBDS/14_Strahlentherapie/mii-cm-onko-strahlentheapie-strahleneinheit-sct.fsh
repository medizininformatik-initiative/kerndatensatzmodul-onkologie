Instance: mii-cm-onko-strahlentherapie-strahleneinheit-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahleneinheit-sct"
* name = "MII CM Onko Strahlentherapie Strahleneinheit SCT Mapping"
* title = "MII CM Onko Strahlentherapie Strahleneinheit SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Strahleneinheit Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $UCUM
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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