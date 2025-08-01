ValueSet: MII_VS_Onko_Weitere_Klassifikationen
Id: mii-vs-onko-weitere-klassifikationen
Title: "MII Value Set Onkologie - Weitere Klassifikationen"
Description: "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors."
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

// SNOMED CT from mCODE
* $SCT#444256004 "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
* $SCT#443830009 "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
* $SCT#897275008 "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition tumor staging system"
* $SCT#254381008 "American Urological Association staging system for prostate cancer"
* $SCT#254373007 "Ann Arbor Hodgkin's disease tumor staging system"
* $SCT#254372002 "Ann Arbor lymphoma staging system"
* $SCT#254374001 "Ann Arbor non-Hodgkin's lymphoma tumour staging system"
* $SCT#254361007 "Astler-Coller staging system"
* $SCT#1149164009 "ACPS (Australian Clinico-pathological Staging) System for colorectal cancer"
* $SCT#1149099005 "Binet staging classification for chronic lymphocytic leukaemia"
* $SCT#385346008 "Breslow system for melanoma staging (tumor staging)"
* $SCT#385345007 "Clark system for melanoma staging (tumor staging)"
* $SCT#254375000 "Cotswolds Hodgkin's disease tumor staging system"
* $SCT#254360008 "Dukes staging system"
* $SCT#254379006 "Indiana University testicular tumour staging system"
* $SCT#254386003 "Federation Internationale de gynecologie et d'obstetrique staging of ovarian malignancy"
* $SCT#106250008 "FIGO staging of cervical carcinoma"
* $SCT#106244003 "FIGO staging of endometrial carcinoma"
* $SCT#106247005 "FIGO staging for epithelial tumor of ovary"
* $SCT#106245002 "FIGO staging of vulvar carcinoma"
* $SCT#106246001 "FIGO staging of vulvar melanoma"
* $SCT#254383006 "Federation internationale de gynecologie et d'obstetrique staging of gynaecological malignancy"
* $SCT#254385004 "Federation internationale de gynecologie et d'obstetrique staging of corpus uteri malignancy"
* $SCT#254384000 "FIGO Vaginal tumor staging"
* $SCT#1149162008 "International Staging System for multiple myeloma (staging scale)"
* $SCT#254380009 "Marshall Modification of Jewett-Strong staging system for urinary bladder tumor"
* $SCT#254362000 "Modified Astler-Coller staging system"
* $SCT#385359000 "Modified Dukes staging system (tumor staging)"
* $SCT#1149131009 "Rai staging system for chronic lymphocytic leukaemia"
* $SCT#1149163003 "Revised International Staging System for multiple myeloma (staging scale)"
* $SCT#254366002 "Stannard staging system for retinoblastoma"
* $SCT#254382001 "Trophoblastic malignancy staging system"
* $SCT#254378003 "Walter Reed testicular tumor staging system"
* $SCT#1287648008 "Masaoka-Koga stage classification for thymic malignancies (tumor staging)"
* $SCT#1287643004 "INRG (International Neuroblastoma Risk Group) staging system"
* $SCT#1287646007 "International Germ Cell Consensus Classification (tumor staging)"

// NCIt from mCODE
* $NCIT#C188404 "Union for International Cancer Control Stage"
* $NCIT#C186527 "Atypical Teratoid/Rhabdoid Tumor Staging System"
* $NCIT#C141206 "Chronic Lymphocytic Leukemia- Modified Rai Staging System"
* $NCIT#C62575 "Collaborative Staging"
* $NCIT#C128932 "Derkay Staging System"
* $NCIT#C186536 "Embryonal Tumor with Multilayered Rosettes Staging System"
* $NCIT#C140258 "Enneking Staging System"
* $NCIT#C85407 "Evans Staging System"
* $NCIT#C99408 "FIGO Staging System and Modified World Health Organization [WHO] Prognostic Scoring System for Gestational Trophoblastic Neoplasms"
* $NCIT#C115132 "Hepatocellular Carcinoma by BCLC Stage"
* $NCIT#C111073 "International Germ Cell Consensus Risk Classification"
* $NCIT#C141168 "Lugano Classification Hodgkin Lymphoma by AJCC v8 Stage"
* $NCIT#C141189 "Lugano Classification Adult Hodgkin Lymphoma by AJCC v8 Stage"
* $NCIT#C141178 "Lugano Classification Childhood Hodgkin Lymphoma by AJCC v8 Stage"
* $NCIT#C141158 "Lugano Classification Adult Non-Hodgkin Lymphoma by AJCC v8 Stage"
* $NCIT#C186520 "Medulloblastoma Staging System"
* $NCIT#C198826 "Modified Chang Staging System for Medulloblastoma"
* $NCIT#C177308 "Non-Seminomatous Germ Cell Tumor International Germ Cell Consensus Risk Classification"
* $NCIT#C186567 "Pineoblastoma Staging System"
* $NCIT#C123333 "Reese-Ellsworth Staging System"
* $NCIT#C177309 "Seminoma International Germ Cell Tumor Consensus Risk Classification"
* $NCIT#C112006 "Thymoma by Masaoka-Koga Stage"
* $NCIT#C18008 "TNM Ovary Neoplasm Staging"
* $NCIT#C141685 "Veterans Administration Lung Study Group Clinical Classification"
* $NCIT#C18214 "Whitmore-Jewett Staging System"

// oBDS-specific classification systems - include only descendant values, not parent concepts - GitHub issue #206
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #binet
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #ann-arbor-stadium
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #iss
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #isswm
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #who-grad
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #formen
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #eln-klassifikation
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #durie-salmon-stadium
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #bismuth
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #masaoka
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #mitoserate-gist
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #p16
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #eutos-score
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #sanz-score
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #ipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #flipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #mipi
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #risikogruppen-ghsg
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #ipss
* include codes from system $mii-cs-onko-weitere-klassifikationen-obds where concept descendant-of #her2-neu

// SNOMED CT codes for established scoring systems  
* $SCT#716567001 "International Prognostic Index (assessment scale)"
* $SCT#708736003 "Follicular Lymphoma International Prognostic Index (assessment scale)"
* $SCT#763236005 "Mantle Cell Lymphoma International Prognostic Index (assessment scale)"

// FIGO Grading System for gynecological tumors - histological grading
* $SCT#1290294004 "International Federation of Gynecology and Obstetrics grading system (qualifier value)"
* $SCT#1290302009 "International Federation of Gynecology and Obstetrics grading system grade 1 (qualifier value)"
* $SCT#1290303004 "International Federation of Gynecology and Obstetrics grading system grade 2 (qualifier value)"  
* $SCT#1290304005 "International Federation of Gynecology and Obstetrics grading system grade 3 (qualifier value)"
