ValueSet: MII_VS_Onko_Weitere_Klassifikationen_Auspraegungen
Id: mii-vs-onko-weitere-klassifikationen-auspraegungen
Title: "MII Value Set Onkologie - Weitere Klassifikationen - Auspraegungen"
Description: "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors."
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

// oBDS-specific classification systems - include only descendant values, not parent concepts - GitHub issue #206
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #binet
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #ann-arbor-stadium
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #iss
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #isswm
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #who-grad
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #formen
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #eln-klassifikation
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #durie-salmon-stadium
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #figo
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #bismuth
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #masaoka
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #mitoserate-gist
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #p16
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #eutos-score
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #sanz-score
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #ipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #flipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #mipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #risikogruppen-ghsg
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #ipss
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept is-a #her2-neu


// FIGO Grading System for gynecological tumors - histological grading
* $SCT#1290294004 "International Federation of Gynecology and Obstetrics grading system (qualifier value)"
* $SCT#1290302009 "International Federation of Gynecology and Obstetrics grading system grade 1 (qualifier value)"
* $SCT#1290303004 "International Federation of Gynecology and Obstetrics grading system grade 2 (qualifier value)"  
* $SCT#1290304005 "International Federation of Gynecology and Obstetrics grading system grade 3 (qualifier value)"
