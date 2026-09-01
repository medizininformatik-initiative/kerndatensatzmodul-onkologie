Instance: mii-cm-onko-therapieplanung-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapieplanung-sct"
* name = "MII CM Onko Therapieplanung SCT Mapping"
* title = "MII CM Onko Therapieplanung SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-11"
* description = "Mapping Therapieplanung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-therapieplanung-typ
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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
