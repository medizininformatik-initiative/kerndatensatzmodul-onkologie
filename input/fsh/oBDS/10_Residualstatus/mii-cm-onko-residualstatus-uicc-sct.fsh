Instance: mii-cm-onko-residualstatus-uicc-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-residualstatus-uicc-sct"
* name = "MII CM Onko Residualstatus UICC SCT Mapping"
* title = "MII CM Onko Residualstatus UICC SNOMED"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-01-05"
* description = "Mapping Residualstatus UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."

* group.source = "https://www.uicc.org/resources/r-classification" 
* group.target = "http://snomed.info/sct/900000000000207008/version/20240401"

* group.element[+].code = #R0
* group.element[=].display = "Kein Residualtumor"
* group.element[=].target.code = #1352526005
* group.element[=].target.display = "Union for International Cancer Control R0 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #R1
* group.element[=].display = "Mikroskopischer Residualtumor"
* group.element[=].target.code = #1352529003
* group.element[=].target.display = "Union for International Cancer Control R1 (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #R1(is)
* group.element[=].display = "In-Situ-Rest"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #R1(cy+)
* group.element[=].display = "Cytologischer Rest"
* group.element[=].target.equivalence = #unmatched

* group.element[+].code = #R2
* group.element[=].display = "Makroskopischer Residualtumor"
* group.element[=].target.code = #1352528006
* group.element[=].target.display = "Union for International Cancer Control R2 (qualifier value)	R2 (UICC)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #RX
* group.element[=].display = "Vorhandensein von Residualtumor kann nicht beurteilt werden"
* group.element[=].target.code = #1352527001
* group.element[=].target.display = "Union for International Cancer Control RX (qualifier value)"
* group.element[=].target.equivalence = #equivalent

* group.element[+].code = #U
* group.element[=].display = "Residualtumorstatus ist nicht bekannt"
* group.element[=].target.equivalence = #unmatched
