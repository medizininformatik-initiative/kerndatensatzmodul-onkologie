Instance: mii-cm-onko-strahlentherapie-applikationsart-sct
InstanceOf: ConceptMap
Usage: #definition
* insert OnkoCRMIConceptMap
* insert Version
* url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct"
* name = "MII CM Onko Strahlentherapie Applikationsart SCT Mapping"
* title = "MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping"
* status = #active
* insert SNOMEDCopyrightForInstance
* experimental = true
* date = "2026-11-04"
* description = "Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt gegen SNOMED CT International 20240401; am 2026-11-04 gegen International 20261001 nachkuratiert (alle Zielkonzepte auf Aktivitaet geprueft, inaktivierte Ziele ersetzt, seit 2024 neu veroeffentlichte Konzepte fuer bisher unbesetzte Werte ergaenzt, Ober-/Unterkonzepte mit equivalence wider/narrower nachgetragen). Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich."
* purpose = "Technical mapping to transform oBDS-Data into SNOMED"
* sourceUri = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/"
* targetUri[+] = "http://snomed.info/sct/900000000000207008/version/20261001"
* group[+].source = $mii-cs-onko-strahlentherapie-applikationsart
* group[=].target = "http://snomed.info/sct"
* group[=].targetVersion = "http://snomed.info/sct/900000000000207008/version/20261001"

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

* group[=].element[+].code = #P-4D
* group[=].element[=].display = "perkutan, atemgetriggert"
* group[=].element[=].target.code = #721061000124106
* group[=].element[=].target.display = "External beam radiotherapy with respiratory gating (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #P-ST4D
* group[=].element[=].display = "perkutan, stereotaktisch, atemgetriggert"
* group[=].element[=].target.code = #721061000124106
* group[=].element[=].target.display = "External beam radiotherapy with respiratory gating (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: stereotaktische Komponente (395096001) nicht abbildbar, nur Atemtriggerung"

* group[=].element[+].code = #PRCN-ST
* group[=].element[=].display = "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.code = #395096001
* group[=].element[=].target.display = "Stereotactic radiotherapy (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Qualifikation ohne Chemotherapie/Sensitizer nicht abbildbar"

* group[=].element[+].code = #PRCN-4D
* group[=].element[=].display = "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.code = #721061000124106
* group[=].element[=].target.display = "External beam radiotherapy with respiratory gating (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Qualifikation ohne Chemotherapie/Sensitizer nicht abbildbar"

* group[=].element[+].code = #PRCN-ST4D
* group[=].element[=].display = "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer"
* group[=].element[=].target.code = #721061000124106
* group[=].element[=].target.display = "External beam radiotherapy with respiratory gating (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: stereotaktische Komponente (395096001) und Qualifikation ohne Chemotherapie/Sensitizer nicht abbildbar"

* group[=].element[+].code = #PRCJ
* group[=].element[=].display = "perkutan mit Chemotherapie/Sensitizer"
* group[=].element[=].target.code = #703423002
* group[=].element[=].target.display = "Combined chemotherapy and radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Applikationsart perkutan (33195004) nicht enthalten"

* group[=].element[+].code = #PRCJ-4D
* group[=].element[=].display = "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer"
* group[=].element[=].target.code = #703423002
* group[=].element[=].target.display = "Combined chemotherapy and radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #wider
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Applikationsart perkutan und Atemtriggerung (721061000124106) nicht enthalten"

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
* group[=].element[=].target.display = "Interstitial brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #IHDR
* group[=].element[=].display = "intersitielle Kontakttherapie, high dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Interstitial brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #ILDR
* group[=].element[=].display = "intersitielle Kontakttherapie, low dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Interstitial brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #IPDR
* group[=].element[=].display = "intersitielle Kontakttherapie, pulsed dose rate therapy"
* group[=].element[=].target.code = #113120007
* group[=].element[=].target.display = "Interstitial brachytherapy (procedure)"
* group[=].element[=].target.equivalence = #wider

* group[=].element[+].code = #MSIRT
* group[=].element[=].display = "selektive interne Radio-Therapie"
* group[=].element[=].target.code = #722183007
* group[=].element[=].target.display = "Embolization of hepatic artery using selective internal radiation therapy (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: nur hepatische SIRT; allgemeines SIRT-Konzept fehlt"

* group[=].element[+].code = #MPRRT
* group[=].element[=].display = "Peptid-Radio-Rezeptor-Therapie"
* group[=].element[=].target.code = #1103661000000108
* group[=].element[=].target.display = "Radioligand therapy using lutetium (177-Lu) labeled somatostatin analog (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20241001; Lu-177-spezifisch, PRRT mit Y-90 nicht erfasst; alternativ 1356887006 (NET, Lu-177-Dotatate, 20250201)"

* group[=].element[+].code = #MPSMA
* group[=].element[=].display = "PSMA-Therapie"
* group[=].element[=].target.code = #1263784000
* group[=].element[=].target.display = "Radioligand therapy using lutetium (177-Lu) vipivotide tetraxetan (procedure)"
* group[=].element[=].target.equivalence = #narrower
* group[=].element[=].target.comment = "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20241001; Lu-177-spezifisch, Ac-225-PSMA nicht erfasst"

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