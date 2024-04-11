Instance: MII-CM-Onko-Genetische-Variante-Auspraegung-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct"
* name = "MII_CM_Onko_Genetische_Variante_Auspraegung_SNOMED_Mapping"
* title = "MII CM Onko Genetische Variante Auspraegung SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Therapieabweichung Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-genetische-variante-auspraegung
* group[=].target = "http://snomed.info/sct"

* group[=].element[0].code = #M
* group[=].element[=].display = "Mutation/positiv"
* group[=].element[=].target.code = #55446002
* group[=].element[=].target.display = "Genetic mutation (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"

* group[=].element[0].code = #W
* group[=].element[=].display = "Wildtyp/nicht mutiert/ negativ"
* group[=].element[=].target.code = #412730000
* group[=].element[=].target.display = "Genetic finding not detected (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"

* group[=].element[0].code = #P
* group[=].element[=].display = "Polymorphismus"
* group[=].element[=].target.code = #50334000
* group[=].element[=].target.display = "Genetic polymorphism (finding)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"

* group[=].element[0].code = #S
* group[=].element[=].display = "Sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"

* group[=].element[0].code = #N
* group[=].element[=].display = "Nicht bestimmbar"
* group[=].element[=].target.code = #1156316003
* group[=].element[=].target.display = "Cannot be determined (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"

* group[=].element[0].code = #U
* group[=].element[=].display = "Unbekannt"
* group[=].element[=].target.code = #261665006
* group[=].element[=].target.display = "Unknown (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Genetic variants to SNOMED mapping"