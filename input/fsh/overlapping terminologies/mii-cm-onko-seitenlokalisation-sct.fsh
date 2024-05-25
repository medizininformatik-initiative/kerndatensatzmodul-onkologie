Instance: MII-CM-Onko-Seitenlokalisation-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-seitenlokalisation-sct"
* name = "mii-cm-onko-seitenlokalisation-snomed-mapping"
* title = "MII CM Onko Seitenlokalisation SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Seitenlokalisation Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-seitenlokalisation
* group[=].target = "http://snomed.info/sct"


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
