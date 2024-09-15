Instance: mii-cm-onko-verlauf-primaertumor-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-primaertumor-sct"
* name = "MII CM Onko Verlauf Primaertumor SCT Mapping"
* title = "MII CM Onko Verlauf Primaertumor SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Verlauf-Primaertumor Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-verlauf-primaertumor
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #K
* group[=].element[=].display = "kein Tumor nachweisbar"
* group[=].element[=].target.code = #58899004
* group[=].element[=].target.display = "No evidence of neoplasm (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #T
* group[=].element[=].display = "Tumorreste (Residualtumor)"
* group[=].element[=].target.code = #65320000
* group[=].element[=].target.display = "Residual (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P
* group[=].element[=].display = "Tumorreste (Residualtumor) Progress"
* group[=].element[=].target.code = #255314001
* group[=].element[=].target.display = "Progressive (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #N
* group[=].element[=].display = "Tumorreste (Residualtumor) No Change"
* group[=].element[=].target.code = #260388006
* group[=].element[=].target.display = "No status change (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #R
* group[=].element[=].display = "Lokalrezidiv"
* group[=].element[=].target.code = #1259237005
* group[=].element[=].target.display = "Recurrent malignant neoplasm (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #F
* group[=].element[=].display = "fraglicher Befund"
* group[=].element[=].target.code = #64957009
* group[=].element[=].target.display = "Uncertain (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #X
* group[=].element[=].display = "fehlende Angabe"
* group[=].element[=].target.code = #1287211007
* group[=].element[=].target.display = " No information available (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
