Instance: mii-cm-onko-seitenlokalisation-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-seitenlokalisation-sct"
* name = "MII CM Onko Seitenlokalisation SNOMED Mapping"
* title = "MII CM Onko Seitenlokalisation SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-10"
* description = "Mapping Seitenlokalisation Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-seitenlokalisation
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"


* group[=].element[+].code = #L
* group[=].element[=].display = "links"
* group[=].element[=].target.code = #7771000
* group[=].element[=].target.display = "Left (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #R
* group[=].element[=].display = "rechts"
* group[=].element[=].target.code = #24028007
* group[=].element[=].target.display = "Right (qualifier value) "
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #B
* group[=].element[=].display = "beidseitig"
* group[=].element[=].target.code = #51440002
* group[=].element[=].target.display = "Right and left (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #M
* group[=].element[=].display = "Mittellinie/mittig"
* group[=].element[=].target.code = #260528009
* group[=].element[=].target.display = "Median (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #T
* group[=].element[=].display = "trifft nicht zu"
* group[=].element[=].target.code = #385432009
* group[=].element[=].target.display = "Not applicable (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
