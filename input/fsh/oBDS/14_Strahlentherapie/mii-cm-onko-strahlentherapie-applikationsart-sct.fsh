Instance: MII-CM-Onko-Strahlentherapie-Applikationsart-SCT-Mapping
InstanceOf: ConceptMap
Usage: #definition
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct"
* name = "mii-cm-onko-strahlentherapie-applikationsart-snomed-mapping"
* title = "MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping"
* status = #draft
* experimental = false
* date = "2024-04-11"
* description = "Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT"
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct"
* group[+].source = $mii-cs-onko-strahlentherapie-applikationsart
* group[=].target = "http://snomed.info/sct"

* group[=].element[+].code = #P
* group[=].element[=].display = "perkutan (Teletherapie)"
* group[=].element[=].target.code = #33195004
* group[=].element[=].target.display = "External beam radiation therapy procedure (procedure)"
* group[=].element[=].target.equivalence = #equivalent 

* group[=].element[+].code = #P-ST
* group[=].element[=].display = "perkutan stereotaktisch"
* group[=].element[=].target.code = #395096001
* group[=].element[=].target.display = "Stereotactic radiotherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #p-4D
* group[=].element[=].display = "perkutan, atemgetriggert"
* group[=].element[=].target.code = #721061000124106
* group[=].element[=].target.display = "External beam radiotherapy with respiratory gating (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P-ST4D
* group[=].element[=].display = "perkutan, stereotaktisch, atemgetriggert"
* group[=].element[=].target.equivalence = #unmatched
* group[=].element[=].target.comment = "Einzelkonzepte über SNOMED abbildbar"

* group[=].element[+].code = #PRCN-ST
* group[=].element[=].display = "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #PRCN-4D
* group[=].element[=].display = "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #PRCN-ST4D
* group[=].element[=].display = "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #PRCJ
* group[=].element[=].display = "perkutan mit Chemotherapie/Sensitizer"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #PRCJ-4D
* group[=].element[=].display = "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #K
* group[=].element[=].display = "endokavitäre Kontakttherapie"
* group[=].element[=].target.code = #384692006
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #KHDR
* group[=].element[=].display = "endokavitäre Kontakttherapie, high dose rate therapy"
* group[=].element[=].target.code = #384692006
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #KLDR
* group[=].element[=].display = "endokavitäre Kontakttherapie, low dose rate therapy"
* group[=].element[=].target.code = #384692006
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #KPDR
* group[=].element[=].display = "endokavitäre Kontakttherapie, pulsed dose rate therapy"
* group[=].element[=].target.code = #384692006
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #I
* group[=].element[=].display = "intersitielle Kontakttherapie"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #IHDR
* group[=].element[=].display = "intersitielle Kontakttherapie, high dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #ILDR
* group[=].element[=].display = "intersitielle Kontakttherapie, low dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #IPDR
* group[=].element[=].display = "intersitielle Kontakttherapie, pulsed dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Intracavitary brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #MSIRT
* group[=].element[=].display = "selektive interne Radio-Therapie"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #MPRRT
* group[=].element[=].display = "Peptid-Radio-Rezeptor-Therapie"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #MPSMA
* group[=].element[=].display = "PSMA-TherapiePSMA-Therapie"
* group[=].element[=].target.equivalence = #unmatched

* group[=].element[+].code = #MRJT
* group[=].element[=].display = "Radiojod-Therapie"
* group[=].element[=].target.code = #64291000052106
* group[=].element[=].target.display = "Radioactive iodine therapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #MRIT
* group[=].element[=].display = "Radioimmun-Therapie"
* group[=].element[=].target.code = #118640001
* group[=].element[=].target.display = "Radioimmunotherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #M
* group[=].element[=].display = "sonstige metabolische Radionuklidtherapie"
* group[=].element[=].target.code = #399315003
* group[=].element[=].target.display = "Radionuclide therapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #S
* group[=].element[=].display = "Sonstiges"
* group[=].element[=].target.code = #74964007
* group[=].element[=].target.display = "Other (qualifier value)"
* group[=].element[=].target.equivalence = #equivalent