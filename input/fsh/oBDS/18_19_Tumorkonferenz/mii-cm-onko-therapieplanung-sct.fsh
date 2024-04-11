Instance: MII-CM-Onko-Therapieplanung-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieplanung-sct"
* name = "MII_CM_Onko_Therapieplanung_SNOMED_Mapping"
* title = "MII CM Onko Therapieplanung SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Therapieplanung Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-therapieplanung-typ
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #praeth
* group[=].element[=].display = "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
* group[=].element[=].target.code = #307153007
* group[=].element[=].target.display = "Before procedure (qualifier value)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #postop
* group[=].element[=].display = "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
* group[=].element[=].target.code = #262061000
* group[=].element[=].target.display = "Postoperative period (qualifier value)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #postth
* group[=].element[=].display = "posttherapeutische Tumorkonferenz (manche Tumore werden nicht operiert)"
* group[=].element[=].target.code = #303110006
* group[=].element[=].target.display = "Postprocedural period (qualifier value)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #ther
* group[=].element[=].display = "Therapieplanung ohne Tumorkonferenz"
* group[=].element[=].target.equivalence = #unmatched
