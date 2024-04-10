Instance: MII-CM-Onko-Primaertumor-Diagnosesicherung-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-primaertumor-diagnosesicherung-sct"
* name = "MII_CM_Onko_Primaertumor_Diagnosesicherung_SNOMED_Mapping"
* title = "MII CM Onko Primaertumor Diagnosesicherung SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Primärtumor Diagnosesicherung Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-primaertumor-diagnosesicherung
* group[=].target = "http://snomed.info/sct"

// #0 "Totenschein"

* group[=].element[0].code = #1
* group[=].element[=].display = "klinisch"
* group[=].element[=]
* group[=].element[=].target.code = #373795004
* group[=].element[=].target.display = "Cancer diagnosis based on clinical evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #2
* group[=].element[=].display = "klinische Diagnostik"
* group[=].element[=].target.code = #373796003
* group[=].element[=].target.display = "Cancer diagnosis based on investigations, without a tissue diagnosis (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"
* group[=].element[+].target.code = #363680008
* group[=].element[=].target.display = "Radiographic imaging procedure (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Procedure: X-ray"
* group[=].element[+].target.code = #423827005
* group[=].element[=].target.display = "Endoscopy (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Procedure: Endoscopy"
* group[=].element[+].target.code = #363679005
* group[=].element[=].target.display = "Imaging (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Procedure: Imaging"
* group[=].element[+].target.code = #16310003
* group[=].element[=].target.display = "Ultrasonography (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Procedure: Ultrassound"
* group[=].element[+].target.code = #122458006
* group[=].element[=].target.display = "Exploration procedure (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Procedure: surgery"

* group[=].element[0].code = #4
* group[=].element[=].display = "spezifische Tumor-Marker"
* group[=].element[=].target.code = #373797007
* group[=].element[=].target.display = "Cancer diagnosis based on specific tumor markers (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #5
* group[=].element[=].display = "Zytologie"
* group[=].element[=].target.code = #373798002
* group[=].element[=].target.display = "Cancer diagnosis based on cytological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #6
* group[=].element[=].display = "histologische Untersuchung einer Metastase"
* group[=].element[=].target.code = #373799005
* group[=].element[=].target.display = "Cancer diagnosis based on metastatic histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #7
* group[=].element[=].display = "histologische Untersuchung eines Primärtumors"
* group[=].element[=].target.code = #373800009
* group[=].element[=].target.display = "Cancer diagnosis based on primary site histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #7.1
* group[=].element[=].display = "histologische Untersuchung eines Primärtumors"
* group[=].element[=].target.code = #373800009
* group[=].element[=].target.display = "Cancer diagnosis based on primary site histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #7.2
* group[=].element[=].display = "histologische Untersuchung einer Metastase"
* group[=].element[=].target.code = #373799005
* group[=].element[=].target.display = "Cancer diagnosis based on metastatic histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

//* #7.3 "Histologie der Autopsie"

* group[=].element[0].code = #8
* group[=].element[=].display = "Zytogenetisch und/oder molekularer Test"
* group[=].element[=].target.code = #394804000
* group[=].element[=].target.display = "Clinical cytogenetics and molecular genetics (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"

* group[=].element[0].code = #9
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Diagnostic certainty for primary tumor"
