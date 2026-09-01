Instance: mii-cm-onko-verlauf-gesamtbeurteilung-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-gesamtbeurteilung-sct"
* name = "MII CM Onko Verlauf Gesamtbeurteilung SCT Mapping"
* title = "MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2024-04-10"
* description = "Mapping Gesamtbeurteilung Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20240401"
* group[+].source = $mii-cs-onko-verlauf-gesamtbeurteilung
* group[=].target = "http://snomed.info/sct/900000000000207008/version/20240401"

* group[=].element[+].code = #V
* group[=].element[=].display = "Vollremission (complete remission, CR)"
* group[=].element[=].target.code = #550991000124107
* group[=].element[=].target.display = "Malignant neoplasm in full remission (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #T
* group[=].element[=].display = "Teilremission (partial remission, PR)"
* group[=].element[=].target.code = #551001000124108
* group[=].element[=].target.display = "Malignant neoplasm in partial remission (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #K
* group[=].element[=].display = "keine Änderung (no change, NC) = stable disease"
* group[=].element[=].target.code = #260388006
* group[=].element[=].target.display = "No status change (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P
* group[=].element[=].display = "Progression"
* group[=].element[=].target.code = #419835002
* group[=].element[=].target.display = "Tumor progression (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #D
* group[=].element[=].display = "divergentes Geschehen"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "kein SNOMED-Term für divergentes Geschehen"

* group[=].element[+].code = #B
* group[=].element[=].display = "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
* group[=].element[=].target.code = #84190002
* group[=].element[=].target.display = "Minimal therapeutic response (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #R
* group[=].element[=].display = "Vollremission mit residualen Auffälligkeiten (CRr)"
* group[=].element[=].target.code = #550991000124107
* group[=].element[=].target.display = "Malignant neoplasm in full remission (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Residuale Auffälligkeiten ggfs. über Postkoordination kodierbar"


* group[=].element[+].code = #Y
* group[=].element[=].display = "Rezidiv"
* group[=].element[=].target.code = #1259237005
* group[=].element[=].target.display = "Recurrent malignant neoplasm (disorder)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "Beurteilung unmöglich"
* group[=].element[=].target.code = #385432009
* group[=].element[=].target.display = "Not applicable (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #X
* group[=].element[=].display = "fehlende Angabe"
* group[=].element[=].target.code = #1287211007
* group[=].element[=].target.display = "No information available (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
