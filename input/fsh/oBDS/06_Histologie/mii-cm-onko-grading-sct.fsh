Instance: mii-cm-onko-grading-sct
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-grading-sct"
* name = "MII CM Onko Grading SCT Mapping"
* title = "MII CM Onko Grading SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Grading Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-grading
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #0
* group[=].element[=].display = "primär erworbene Melanose ohne zelluläre Atypien (nur beim malignen Melanom der Konjunktiva)"
* group[=].element[=].target.code = #415175000
* group[=].element[=].target.display = "Primary acquired melanosis of conjunctiva without atypia (disorder)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Hier der Vollständigkeit aufgeführt."

* group[=].element[+].code = #1
* group[=].element[=].display = "gut differenziert"
* group[=].element[=].target.code = #373375007
* group[=].element[=].target.display = "Well differentiated histological grade finding (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #2
* group[=].element[=].display = "mäßig differenziert"
* group[=].element[=].target.code = #373377004
* group[=].element[=].target.display = "Moderately differentiated histological grade finding (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #3
* group[=].element[=].display = "schlecht differenziert"
* group[=].element[=].target.code = #373373000
* group[=].element[=].target.display = "Poorly differentiated histological grade finding (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #4
* group[=].element[=].display = "undifferenziert"
* group[=].element[=].target.code = #373374006
* group[=].element[=].target.display = "Undifferentiated histological grade finding (finding)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #5
* group[=].element[=].display = "nur für C61, TNM8"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "wird im derzeitigen oBDS nicht mehr kodiert, kein passender SNOMED CT Code notwendig"

* group[=].element[+].code = #X
* group[=].element[=].display = "nicht bestimmbar"
* group[=].element[=].target.code = #1155705000
* group[=].element[=].target.display = "GX: Histologic grade cannot be assessed (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #L
* group[=].element[=].display = "low grade (G1 oder G2)"
* group[=].element[=].target.code = #1155708003
* group[=].element[=].target.display = "Low histologic grade (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #M
* group[=].element[=].display = "intermediate grade (G2 oder G3)"
* group[=].element[=].target.code = #1286893008
* group[=].element[=].target.display = "Intermediate histologic grade (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #H
* group[=].element[=].display = "high grade (G3 oder G4)"
* group[=].element[=].target.code = #1155707008
* group[=].element[=].target.display = "High histologic grade (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #B
* group[=].element[=].display = "Borderline"
* group[=].element[=].target.code = #1268929003
* group[=].element[=].target.display = "GB: Borderline tumor (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #U
* group[=].element[=].display = "unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #T
* group[=].element[=].display = "trifft nicht zu"
* group[=].element[=].target.code = #385432009
* group[=].element[=].target.display = "Not applicable (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
