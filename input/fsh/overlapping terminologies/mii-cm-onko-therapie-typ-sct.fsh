Instance: mii-cm-onko-therapie-typ-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-typ-sct"
* name = "MII CM Onko Therapie Typ SNOMED Mapping"
* title = "MII CM Onko Therapie Typ SNOMED Mapping"
* status = #active
* experimental = false
* date = "2024-04-10"
* description = "Mapping Therapie Typ Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-therapie-typ
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #CH
* group[=].element[=].display = "Chemotherapie"
* group[=].element[=].target.code = #367336001
* group[=].element[=].target.display = "Chemotherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #HO
* group[=].element[=].display = "Hormontherapie"
* group[=].element[=].target.code = #169413002
* group[=].element[=].target.display = "Hormone therapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #IM
* group[=].element[=].display = "Immun-/Antikörpertherapie"
* group[=].element[=].target.code = #897713009
* group[=].element[=].target.display = "Immunotherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ZS
* group[=].element[=].display = "zielgerichtete Substanzen"
* group[=].element[=].target.code = #1255831008
* group[=].element[=].target.display = "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SZ
* group[=].element[=].display = "Stammzelltransplantation (inklusive Knochenmarktransplantation)"
* group[=].element[=].target.code = #1269349006
* group[=].element[=].target.display = "Transplantation of stem cell (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CI
* group[=].element[=].display = "Chemo- + Immun-/Antikörpertherapie"
* group[=].element[=].target.code = #897713009
* group[=].element[=].target.display = "Antineoplastic chemoimmunotherapy (regime/therapy)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CZ
* group[=].element[=].display = "Chemotherapie + zielgerichtete Substanzen"
* group[=].element[=].target.code = #1255831008
* group[=].element[=].target.display = "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #CIZ
* group[=].element[=].display = "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* group[=].element[=].target.code = #897713009
* group[=].element[=].target.display = "Antineoplastic chemoimmunotherapy (regime/therapy)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[+].target.code = #1255831008
* group[=].element[=].target.display = "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #IZ
* group[=].element[=].display = "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
* group[=].element[=].target.code = #76334006
* group[=].element[=].target.display = "Immunotherapy (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[+].target.code = #1255831008
* group[=].element[=].target.display = "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)"
* group[=].element[=].target.equivalence = #narrower

* group[=].element[+].code = #WW
* group[=].element[=].display = "Watchful Waiting"
* group[=].element[=].target.code = #373818007
* group[=].element[=].target.display = "No anti-cancer treatment - watchful waiting (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #AS
* group[=].element[=].display = "Active Surveillance"
* group[=].element[=].target.code = #424313000
* group[=].element[=].target.display = "Active surveillance (regime/therapy)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #WS
* group[=].element[=].display = "Wait and see"
* group[=].element[=].target.code = #310341009
* group[=].element[=].target.display = "Follow-up (wait and see) (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #OP
* group[=].element[=].display = "Operation"
* group[=].element[=].target.code = #387713003
* group[=].element[=].target.display = "Surgical procedure (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #ST
* group[=].element[=].display = "Strahlentherapie"
* group[=].element[=].target.code = #1287742003
* group[=].element[=].target.display = "Radiotherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KW
* group[=].element[=].display = "keine weitere tumorspezifische Therapie empfohlen"
* group[=].element[=].target.code = #897016006
* group[=].element[=].target.display = "Not recommended (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #SO
* group[=].element[=].display = "Sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
