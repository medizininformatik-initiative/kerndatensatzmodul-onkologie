Instance: mii-cm-onko-therapie-ende-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-ende-sct"
* name = "MII CM Onko Therapie Ende SNOMED Mapping"
* title = "MII CM Onko Therapie Ende SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-11"
* description = "Mapping Therapie Ende Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-grund-ende"
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

* group[=].element[+].code = #E
* group[=].element[=].display = "reguläres Ende"
* group[=].element[=].target.code = #385656004
* group[=].element[=].target.display = "Ended (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent 
* group[=].element[=].target.comment = "keine Postkoordination zu andernen End-Konzepten möglich" 

* group[=].element[+].code = #R
* group[=].element[=].display = "reguläres Ende mit Dosisreduktion"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ggfs. Postkoordination von Dosisreduktion, aber keine Postkoordination mit 'qualifier value' möglich." 

* group[=].element[+].code = #W
* group[=].element[=].display = "reguläres Ende mit Substanzwechsel"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ggfs. Postkoordination von Substanzwechsel, aber keine Postkoordination mit 'qualifier value' möglich." 

* group[=].element[+].code = #A
* group[=].element[=].display = "Abbruch wegen Nebenwirkungen"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "ggfs. Postkoordination von Nebnwirkungen, aber keine Postkoordination mit 'qualifier value' möglich." 

* group[=].element[+].code = #P
* group[=].element[=].display = "Abbruch wegen Progress"
* group[=].element[=].target.code = #419835002
* group[=].element[=].target.display = "Tumor progression (finding)"
* group[=].element[=].target.equivalence = #wider 
* group[=].element[=].target.comment = "ggfs. Postkoordination von Abbruch" 

* group[=].element[+].code = #S
* group[=].element[=].display = "Abbruch aus sonstigen Gründen"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ggfs. Postkoordination" 

* group[=].element[+].code = #V
* group[=].element[=].display = "Patient verweigert weitere Therapie"
* group[=].element[=].target.code = #183948000
* group[=].element[=].target.display = " Procedure declined by parent (situation)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #T
* group[=].element[=].display = "Patient verstorben"
* group[=].element[=].target.code = #419099009
* group[=].element[=].target.display = "Dead (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #F
* group[=].element[=].display = "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
