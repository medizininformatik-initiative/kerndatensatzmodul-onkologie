Instance: mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc
InstanceOf: ConceptMap
Usage: #definition
Title: "Mapping oBDS Karnofsky zu LOINC"
Description: "Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LA29175-9"
* status = #active
* experimental = false
* insert Version

* sourceCanonical = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky"
* targetCanonical = "http://loinc.org/vs/LL4986-7"

* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky"
* group[=].target = "http://loinc.org"

* group[=].element[+].code = #100%
* group[=].element[=].display = "100%"
* group[=].element[=].target[+].code = #LA29165-0
* group[=].element[=].target[=].display = "Normal; no complaints; no evidence of disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #90%
* group[=].element[=].display = "90%"
* group[=].element[=].target[+].code = #LA29166-8
* group[=].element[=].target[=].display = "Able to carry on normal activity; minor signs or symptoms of disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #80%
* group[=].element[=].display = "80%"
* group[=].element[=].target[+].code = #LA29167-6
* group[=].element[=].target[=].display = "Normal activity with effort; some signs or symptoms of disease"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #70%
* group[=].element[=].display = "70%"
* group[=].element[=].target[+].code = #LA29168-4
* group[=].element[=].target[=].display = "Cares for self; unable to carry on normal activity or to do active work"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #60%
* group[=].element[=].display = "60%"
* group[=].element[=].target[+].code = #LA29169-2
* group[=].element[=].target[=].display = "Requires occasional assistance, but is able to care for most needs"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #50%
* group[=].element[=].display = "50%"
* group[=].element[=].target[+].code = #LA29170-0
* group[=].element[=].target[=].display = "Requires considerable assistance and frequent medical care"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #40%
* group[=].element[=].display = "40%"
* group[=].element[=].target[+].code = #LA29171-8
* group[=].element[=].target[=].display = "Disabled; requires special care and assistance"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #30%
* group[=].element[=].display = "30%"
* group[=].element[=].target[+].code = #LA29172-6
* group[=].element[=].target[=].display = "Severely disabled; hospitalization is indicated, although death not imminent"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #20%
* group[=].element[=].display = "20%"
* group[=].element[=].target[+].code = #LA29173-4
* group[=].element[=].target[=].display = "Very sick; hospitalization necessary; active supportive treatment necessary"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #10%
* group[=].element[=].display = "10%"
* group[=].element[=].target[+].code = #LA29174-2
* group[=].element[=].target[=].display = "Moribund; fatal processes progressing rapidly"
* group[=].element[=].target[=].equivalence = #equivalent

* group[=].element[+].code = #0%
* group[=].element[=].display = "0%"
* group[=].element[=].target[+].code = #LA9627-1
* group[=].element[=].target[=].display = "Dead"
* group[=].element[=].target[=].equivalence = #equivalent
