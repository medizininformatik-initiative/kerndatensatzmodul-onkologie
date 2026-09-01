Instance: mii-cm-onko-verlauf-primaertumor-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-primaertumor-sct"
* name = "MII CM Onko Verlauf Primaertumor SCT Mapping"
* title = "MII CM Onko Verlauf Primaertumor SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-10"
* description = "Mapping Verlauf-Primaertumor Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-verlauf-primaertumor
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

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
* group[=].element[=].target.display = "No information available (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
