Instance: mii-cm-onko-fernmetastasen-sct
InstanceOf: ConceptMap 
Usage: #example
Title: "MII CM Onko Fernmetastasen SCT Mapping"
Description: "Mapping der Fernmetastasen-Codesystems  auf SNOMED"
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-fernmetastasen-sct"
* name = "mii-cm-onko-fernmetastasen-sct-mapping"					
* title = "Fernmetastasen"					
* status = #draft
* experimental = true					
* description = "Fernmetastasen"					
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"					
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"					
* targetUri[+] = "http://snomed.info/sct"					
* group[+].source = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen"					
* group[=].target = "http://snomed.info/sct"					

* group[=].element[+].code = #PUL					
* group[=].element[=].display = "Lunge"					
* group[=].element[=].target.code = #258332000					
* group[=].element[=].target.display = "PUL (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #OSS					
* group[=].element[=].display = "Knochen"					
* group[=].element[=].target.code = #258333005					
* group[=].element[=].target.display = "OSS (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #HEP					
* group[=].element[=].display = "Leber"					
* group[=].element[=].target.code = #258334004					
* group[=].element[=].target.display = "HEP (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #BRA					
* group[=].element[=].display = "Hirn"					
* group[=].element[=].target.code = #313367003					
* group[=].element[=].target.display = "BRA - tumor site notation (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #LYM					
* group[=].element[=].display = "Lymphknoten"					
* group[=].element[=].target.code = #258336002					
* group[=].element[=].target.display = "LYM (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #MAR					
* group[=].element[=].display = "Knochenmark"					
* group[=].element[=].target.code = #14016003					
* group[=].element[=].target.display = "Bone marrow structure (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "In TNM 8. Edition ist MAR als Lokalisation mit aufgeführt, in der aktuellen SNOMED-Version so aber nicht enthalten."	

* group[=].element[+].code = #PLE					
* group[=].element[=].display = "Pleura"					
* group[=].element[=].target.code = #258337006					
* group[=].element[=].target.display = "PLE (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #PER					
* group[=].element[=].display = "Peritoneum"					
* group[=].element[=].target.code = #258338001					
* group[=].element[=].target.display = "PER (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #ADR					
* group[=].element[=].display = "Nebennieren"					
* group[=].element[=].target.code = #258339009					
* group[=].element[=].target.display = "ADR (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #SKI					
* group[=].element[=].display = "Haut"					
* group[=].element[=].target.code = #258340006					
* group[=].element[=].target.display = "SKI (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #OTH					
* group[=].element[=].display = "andere Organe"					
* group[=].element[=].target.code = #258348004					
* group[=].element[=].target.display = "OTH (body structure)"					
* group[=].element[=].target.equivalence = #equivalent					

* group[=].element[+].code = #GEN					
* group[=].element[=].display = "generalisierte Metastasierung"					
* group[=].element[=].target.code = #405843009					
* group[=].element[=].target.display = "Widespread metastatic malignant neoplastic disease (disorder)"					
* group[=].element[=].target.equivalence = #equivalent					
* group[=].element[=].target.comment = "Anmerkung: GEN ist nicht Teil der ursprünglich von der TNM veröffentlichen empfohlenen Lokalisationen. SNOMED CT beinhaltet kein Konzept zur Beschreibung einer generalisierten Metastasierung - weder unter dem Parent-Konzept 258331007 | Anatomical site notations for tumor staging (body structure) | noch allgemein unter 123037004 | Body structure (body structure) |."	
