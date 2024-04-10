Instance: MII-CM-Onko-Primaertumor-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-primaertumor-sct"
* name = "MII_CM_Onko_Primaertumor_SNOMED_Mapping"
* title = "MII CM Onko Primaertumor SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-10"
* description = "Mapping Primärtumor Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $ICD10GM
* group[=].target = "http://snomed.info/sct"

//unsicher ob es so überhaupt Sinn macht
* group[=].element[+].target.code = #372087000
* group[=].element[=].target.display = "Primary malignant neoplasm (disorder)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "Primary malignant neoplasm"
