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


// Primaertumor Diagnosesicherung
* group[+].source = $mii-cs-onko-primaertumor-diagnosesicherung
* group[=].target = "http://snomed.info/sct"

// #0 "Totenschein"

* group[=].element[+].code = #1
* group[=].element[=].display = "klinisch"
* group[=].element[=].target.code = #373795004
* group[=].element[=].target.display = "Cancer diagnosis based on clinical evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "klinische Diagnostik"
* group[=].element[=].target.code = #373796003
* group[=].element[=].target.display = "Cancer diagnosis based on investigations, without a tissue diagnosis (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "übergreifender Begriff, gültig für alle diagnostischen Mittel"
* group[=].element[+].target.code = #363680008
* group[=].element[=].target.display = "Radiographic imaging procedure (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Röntgen als Spezifizierung"
* group[=].element[+].target.code = #423827005
* group[=].element[=].target.display = "Endoscopy (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Endoskopie als Spezifizierung"
* group[=].element[+].target.code = #363679005
* group[=].element[=].target.display = "Imaging (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Imaging als Spezifizierung"
* group[=].element[+].target.code = #16310003
* group[=].element[=].target.display = "Ultrasonography (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Ultraschall als Spezifizierung"
* group[=].element[+].target.code = #122458006
* group[=].element[=].target.display = "Exploration procedure (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "Explorativer Eingriff als Spezifizierung"

* group[=].element[+].code = #4
* group[=].element[=].display = "spezifische Tumor-Marker"
* group[=].element[=].target.code = #373797007
* group[=].element[=].target.display = "Cancer diagnosis based on specific tumor markers (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5
* group[=].element[=].display = "Zytologie"
* group[=].element[=].target.code = #373798002
* group[=].element[=].target.display = "Cancer diagnosis based on cytological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #6
* group[=].element[=].display = "histologische Untersuchung einer Metastase"
* group[=].element[=].target.code = #373799005
* group[=].element[=].target.display = "Cancer diagnosis based on metastatic histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Auswahlmöglichkeit veraltet, entspricht 7.2"

* group[=].element[+].code = #7
* group[=].element[=].display = "histologische Untersuchung eines Primärtumors"
* group[=].element[=].target.code = #373800009
* group[=].element[=].target.display = "Cancer diagnosis based on primary site histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Auswahlmöglichkeit veraltet, entspricht 7.1"

* group[=].element[+].code = #7.1
* group[=].element[=].display = "histologische Untersuchung eines Primärtumors"
* group[=].element[=].target.code = #373800009
* group[=].element[=].target.display = "Cancer diagnosis based on primary site histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.2
* group[=].element[=].display = "histologische Untersuchung einer Metastase"
* group[=].element[=].target.code = #373799005
* group[=].element[=].target.display = "Cancer diagnosis based on metastatic histological evidence (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #7.3
* group[=].element[=].display = "histologische Untersuchung des Gewebes bei Autopsie"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "keine direktes Mapping möglich, ggfs. über Postkoordination mit Autopsie -Prozedur"

* group[=].element[+].code = #8
* group[=].element[=].display = "Zytogenetisch und/oder molekularer Test"
* group[=].element[=].target.code = #394804000
* group[=].element[=].target.display = "Clinical cytogenetics and molecular genetics (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #9
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
