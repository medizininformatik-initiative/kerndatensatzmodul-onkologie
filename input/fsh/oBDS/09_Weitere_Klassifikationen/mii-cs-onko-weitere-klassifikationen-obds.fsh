CodeSystem: MII_CS_Onko_Weitere_Klassifikationen_OBDS
Id: mii-cs-onko-weitere-klassifikationen-obds
Title: "MII CodeSystem Onkologie - Weitere Klassifikationen oBDS"
Description: "oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes."
* ^status = #active
// QA-Fix: crmi-shareablecodesystem verlangt caseSensitive 1..1
* ^caseSensitive = true
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

// BINET Classification - Chronic Lymphocytic Leukemia
* #binet "BINET Staging System" "Staging system for chronic lymphocytic leukemia based on lymph node involvement and organ enlargement."
  * #binet-a "BINET A" "Early stage CLL: lymphocytosis in blood and bone marrow only"
  * #binet-b "BINET B" "Intermediate stage CLL: lymphocytosis with enlarged lymph nodes or spleen/liver"  
  * #binet-c "BINET C" "Advanced stage CLL: lymphocytosis with anemia or thrombocytopenia"

// Ann-Arbor Staging System - Lymphomas
* #ann-arbor-stadium "Ann-Arbor Stadium" "Staging system for Hodgkin and Non-Hodgkin lymphomas based on anatomical extent of disease."
  * #ann-arbor-i "I" "Single lymph node region or single extralymphatic organ"
  * #ann-arbor-ia "IA" "Single lymph node region, asymptomatic"
  * #ann-arbor-iae "IAE" "Single lymph node region with extranodal extension, asymptomatic"
  * #ann-arbor-ib "IB" "Single lymph node region with B symptoms"
  * #ann-arbor-ibe "IBE" "Single lymph node region with extranodal extension and B symptoms"
  * #ann-arbor-ie "IE" "Single extralymphatic organ involvement"
  * #ann-arbor-ix "IX" "Single lymph node region, symptoms unclear"
  * #ann-arbor-ixa "IXA" "Single lymph node region, symptoms unclear, asymptomatic features"
  * #ann-arbor-ixae "IXAE" "Single lymph node region with extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-ixb "IXB" "Single lymph node region, symptoms unclear, B symptom features"
  * #ann-arbor-ixbe "IXBE" "Single lymph node region with extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-ixe "IXE" "Single extralymphatic organ, symptoms unclear"
  * #ann-arbor-ii "II" "Two or more lymph node regions on same side of diaphragm"
  * #ann-arbor-ii1 "II1" "Two lymph node regions on same side of diaphragm"
  * #ann-arbor-ii1a "II1A" "Two lymph node regions on same side of diaphragm, asymptomatic"
  * #ann-arbor-ii1ae "II1AE" "Two lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
  * #ann-arbor-ii1b "II1B" "Two lymph node regions on same side of diaphragm with B symptoms"
  * #ann-arbor-ii1be "II1BE" "Two lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
  * #ann-arbor-ii1e "II1E" "Two lymph node regions on same side of diaphragm with extranodal extension"
  * #ann-arbor-ii1x "II1X" "Two lymph node regions on same side of diaphragm, symptoms unclear"
  * #ann-arbor-ii1xa "II1XA" "Two lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
  * #ann-arbor-ii1xae "II1XAE" "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-ii1xb "II1XB" "Two lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
  * #ann-arbor-ii1xbe "II1XBE" "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-ii1xe "II1XE" "Two lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
  * #ann-arbor-ii2 "II2" "Multiple lymph node regions on same side of diaphragm"
  * #ann-arbor-ii2a "II2A" "Multiple lymph node regions on same side of diaphragm, asymptomatic"
  * #ann-arbor-ii2ae "II2AE" "Multiple lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
  * #ann-arbor-ii2b "II2B" "Multiple lymph node regions on same side of diaphragm with B symptoms"
  * #ann-arbor-ii2be "II2BE" "Multiple lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
  * #ann-arbor-ii2e "II2E" "Multiple lymph node regions on same side of diaphragm with extranodal extension"
  * #ann-arbor-ii2x "II2X" "Multiple lymph node regions on same side of diaphragm, symptoms unclear"
  * #ann-arbor-ii2xa "II2XA" "Multiple lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
  * #ann-arbor-ii2xae "II2XAE" "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-ii2xb "II2XB" "Multiple lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
  * #ann-arbor-ii2xbe "II2XBE" "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-ii2xe "II2XE" "Multiple lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
  * #ann-arbor-iia "IIA" "Two or more lymph node regions on same side of diaphragm, asymptomatic"
  * #ann-arbor-iiae "IIAE" "Two or more lymph node regions on same side of diaphragm with extranodal extension, asymptomatic"
  * #ann-arbor-iib "IIB" "Two or more lymph node regions on same side of diaphragm with B symptoms"
  * #ann-arbor-iibe "IIBE" "Two or more lymph node regions on same side of diaphragm with extranodal extension and B symptoms"
  * #ann-arbor-iie "IIE" "Two or more lymph node regions on same side of diaphragm with extranodal extension"
  * #ann-arbor-iix "IIX" "Two or more lymph node regions on same side of diaphragm, symptoms unclear"
  * #ann-arbor-iixa "IIXA" "Two or more lymph node regions on same side of diaphragm, symptoms unclear, asymptomatic features"
  * #ann-arbor-iixae "IIXAE" "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-iixb "IIXB" "Two or more lymph node regions on same side of diaphragm, symptoms unclear, B symptom features"
  * #ann-arbor-iixbe "IIXBE" "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-iixe "IIXE" "Two or more lymph node regions on same side of diaphragm with extranodal extension, symptoms unclear"
  * #ann-arbor-iii "III" "Lymph node regions on both sides of diaphragm"
  * #ann-arbor-iiia "IIIA" "Lymph node regions on both sides of diaphragm, asymptomatic"
  * #ann-arbor-iiiae "IIIAE" "Lymph node regions on both sides of diaphragm with extranodal extension, asymptomatic"
  * #ann-arbor-iiiaes "IIIAES" "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, asymptomatic"
  * #ann-arbor-iiias "IIIAS" "Lymph node regions on both sides of diaphragm with spleen involvement, asymptomatic"
  * #ann-arbor-iiib "IIIB" "Lymph node regions on both sides of diaphragm with B symptoms"
  * #ann-arbor-iiibe "IIIBE" "Lymph node regions on both sides of diaphragm with extranodal extension and B symptoms"
  * #ann-arbor-iiibes "IIIBES" "Lymph node regions on both sides of diaphragm with extranodal extension, spleen involvement, and B symptoms"
  * #ann-arbor-iiibs "IIIBS" "Lymph node regions on both sides of diaphragm with spleen involvement and B symptoms"
  * #ann-arbor-iiie "IIIE" "Lymph node regions on both sides of diaphragm with extranodal extension"
  * #ann-arbor-iiies "IIIES" "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement"
  * #ann-arbor-iiis "IIIS" "Lymph node regions on both sides of diaphragm with spleen involvement"
  * #ann-arbor-iiix "IIIX" "Lymph node regions on both sides of diaphragm, symptoms unclear"
  * #ann-arbor-iiixa "IIIXA" "Lymph node regions on both sides of diaphragm, symptoms unclear, asymptomatic features"
  * #ann-arbor-iiixae "IIIXAE" "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-iiixaes "IIIXAES" "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear, asymptomatic features"
  * #ann-arbor-iiixas "IIIXAS" "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear, asymptomatic features"
  * #ann-arbor-iiixb "IIIXB" "Lymph node regions on both sides of diaphragm, symptoms unclear, B symptom features"
  * #ann-arbor-iiixbe "IIIXBE" "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-iiixbes "IIIXBES" "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear, B symptom features"
  * #ann-arbor-iiixbs "IIIXBS" "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear, B symptom features"
  * #ann-arbor-iiixe "IIIXE" "Lymph node regions on both sides of diaphragm with extranodal extension, symptoms unclear"
  * #ann-arbor-iiixes "IIIXES" "Lymph node regions on both sides of diaphragm with extranodal extension and spleen involvement, symptoms unclear"
  * #ann-arbor-iiixs "IIIXS" "Lymph node regions on both sides of diaphragm with spleen involvement, symptoms unclear"
  * #ann-arbor-iii1 "III1" "Limited lymph node regions on both sides of diaphragm"
  * #ann-arbor-iii1a "III1A" "Limited lymph node regions on both sides of diaphragm, asymptomatic"
  * #ann-arbor-iii1b "III1B" "Limited lymph node regions on both sides of diaphragm with B symptoms"
  * #ann-arbor-iii2 "III2" "Multiple lymph node regions on both sides of diaphragm"
  * #ann-arbor-iii2a "III2A" "Multiple lymph node regions on both sides of diaphragm, asymptomatic"
  * #ann-arbor-iii2b "III2B" "Multiple lymph node regions on both sides of diaphragm with B symptoms"
  * #ann-arbor-iv "IV" "Disseminated involvement of one or more extralymphatic organs"
  * #ann-arbor-iva "IVA" "Disseminated involvement of extralymphatic organs, asymptomatic"
  * #ann-arbor-ivae "IVAE" "Disseminated involvement of extralymphatic organs with additional extranodal extension, asymptomatic"
  * #ann-arbor-ivb "IVB" "Disseminated involvement of extralymphatic organs with B symptoms"
  * #ann-arbor-ivbe "IVBE" "Disseminated involvement of extralymphatic organs with additional extranodal extension and B symptoms"
  * #ann-arbor-ive "IVE" "Disseminated involvement of extralymphatic organs with extranodal extension"
  * #ann-arbor-ivx "IVX" "Disseminated involvement of extralymphatic organs, symptoms unclear"
  * #ann-arbor-ivxa "IVXA" "Disseminated involvement of extralymphatic organs, symptoms unclear, asymptomatic features"
  * #ann-arbor-ivxae "IVXAE" "Disseminated involvement of extralymphatic organs with additional extranodal extension, symptoms unclear, asymptomatic features"
  * #ann-arbor-ivxb "IVXB" "Disseminated involvement of extralymphatic organs, symptoms unclear, B symptom features"
  * #ann-arbor-ivxbe "IVXBE" "Disseminated involvement of extralymphatic organs with additional extranodal extension, symptoms unclear, B symptom features"
  * #ann-arbor-ivxe "IVXE" "Disseminated involvement of extralymphatic organs with extranodal extension, symptoms unclear"

// International Staging System - Multiple Myeloma
* #iss "International Staging System" "Staging system for multiple myeloma based on serum beta-2 microglobulin and albumin levels."
  * #iss-i "ISS I" "Beta-2 microglobulin <3.5 mg/L and albumin ≥3.5 g/dL"
  * #iss-ii "ISS II" "Not ISS I or ISS III"
  * #iss-iii "ISS III" "Beta-2 microglobulin ≥5.5 mg/L"

// International Scoring System for Waldenström's Macroglobulinemia
* #isswm "International Scoring System for Waldenström's Macroglobulinemia" "Prognostic scoring system for Waldenström's macroglobulinemia based on age, beta-2 microglobulin, and albumin levels."
  * #isswm-n "ISSWM Niedrig" "Low risk: age ≤65 years, beta-2 microglobulin ≤3 mg/L, albumin >3.5 g/dL"
  * #isswm-i "ISSWM Intermediär" "Intermediate risk: one adverse factor"
  * #isswm-h "ISSWM Hoch" "High risk: age >65 years or beta-2 microglobulin >3 mg/L, or albumin ≤3.5 g/dL (≥2 factors)"

// WHO Grade - Central Nervous System Tumors
* #who-grad "WHO Grade" "World Health Organization grading system for central nervous system tumors based on histological features."
  * #who-grad-i "WHO Grad I" "Well-differentiated, slow-growing, low proliferative potential"
  * #who-grad-ii "WHO Grad II" "Moderately differentiated, infiltrative, low proliferative potential"
  * #who-grad-iii "WHO Grad III" "Poorly differentiated, anaplastic, high proliferative potential"
  * #who-grad-iv "WHO Grad IV" "Poorly differentiated, high mitotic activity, necrosis, microvascular proliferation"

// Lymphoma Forms Classification
* #formen "Formen" "Classification of lymphoma forms distinguishing classical and variant presentations."
  * #formen-k "Klassisch" "Classical form of lymphoma presentation"
  * #formen-v "Variante" "Variant form of lymphoma presentation"

// European LeukemiaNet Classification
* #eln-klassifikation "ELN-Klassifikation" "European LeukemiaNet risk stratification for acute myeloid leukemia based on cytogenetic and molecular genetic abnormalities."
  * #eln-g "ELN Günstig" "Favorable risk: good prognosis cytogenetic/molecular markers"
  * #eln-i1 "ELN Intermediär I" "Intermediate risk I: intermediate prognosis markers"
  * #eln-i2 "ELN Intermediär II" "Intermediate risk II: intermediate prognosis markers"
  * #eln-u "ELN Ungünstig" "Unfavorable risk: poor prognosis cytogenetic/molecular markers"
  * #eln-cp "ELN Chronische Phase" "Chronic phase (CML context)"
  * #eln-ap "ELN Akzelierte Phase" "Accelerated phase (CML context)"
  * #eln-bk "ELN Blastenkrise" "Blast crisis phase (CML context)"

// Durie-Salmon Staging System
* #durie-salmon-stadium "Durie-Salmon Stadium" "Multiple myeloma staging system based on tumor burden and organ function."
  * #durie-salmon-i "Durie-Salmon I" "Low tumor burden: hemoglobin >10 g/dL, calcium normal, no bone lesions"
  * #durie-salmon-ia "Durie-Salmon IA" "Low tumor burden with normal renal function"
  * #durie-salmon-ib "Durie-Salmon IB" "Low tumor burden with abnormal renal function"
  * #durie-salmon-ii "Durie-Salmon II" "Intermediate tumor burden: neither stage I nor III criteria"
  * #durie-salmon-iia "Durie-Salmon IIA" "Intermediate tumor burden with normal renal function"
  * #durie-salmon-iib "Durie-Salmon IIB" "Intermediate tumor burden with abnormal renal function"
  * #durie-salmon-iii "Durie-Salmon III" "High tumor burden: hemoglobin <8.5 g/dL, calcium elevated, extensive bone lesions"
  * #durie-salmon-iiia "Durie-Salmon IIIA" "High tumor burden with normal renal function"
  * #durie-salmon-iiib "Durie-Salmon IIIB" "High tumor burden with abnormal renal function"

// FIGO Staging System - gynecological malignancies
// Union of the substages used by the entity-specific FIGO systems (ovary/fallopian tube/peritoneum,
// endometrium, cervix, vulva, vagina, uterine sarcoma, gestational trophoblastic neoplasia) across
// current and historical FIGO revisions, as reported to German cancer registries.
// The entity and the FIGO revision are conveyed via Observation.method / Observation.code.
* #figo "FIGO" "Staging system of the International Federation of Gynecology and Obstetrics (FIGO) for gynecological malignancies."
  * #figo-i "FIGO I" "Tumor confined to the organ of origin"
  * #figo-ia "FIGO IA" "Stage I with limited local extent (entity-specific definition)"
  * #figo-ia1 "FIGO IA1" "Stage IA, subgroup 1 (e.g. cervix: measured stromal invasion <3 mm)"
  * #figo-ia2 "FIGO IA2" "Stage IA, subgroup 2 (e.g. cervix: measured stromal invasion 3 to <5 mm)"
  * #figo-ia3 "FIGO IA3" "Stage IA, subgroup 3 (entity-specific definition)"
  * #figo-ib "FIGO IB" "Stage I with extended local extent (entity-specific definition)"
  * #figo-ib1 "FIGO IB1" "Stage IB, subgroup 1 (e.g. cervix: invasive carcinoma <2 cm)"
  * #figo-ib2 "FIGO IB2" "Stage IB, subgroup 2 (e.g. cervix: invasive carcinoma 2 to <4 cm)"
  * #figo-ib3 "FIGO IB3" "Stage IB, subgroup 3 (e.g. cervix: invasive carcinoma 4 cm or larger)"
  * #figo-ic "FIGO IC" "Stage I with capsule rupture, surface involvement or malignant ascites"
  * #figo-ic1 "FIGO IC1" "Stage IC due to intraoperative surgical spill"
  * #figo-ic2 "FIGO IC2" "Stage IC due to preoperative capsule rupture or surface tumor"
  * #figo-ic3 "FIGO IC3" "Stage IC due to malignant cells in ascites or peritoneal washings"
  * #figo-ii "FIGO II" "Tumor extending beyond the organ of origin within the pelvis"
  * #figo-iia "FIGO IIA" "Stage II with limited extension (entity-specific definition)"
  * #figo-iia1 "FIGO IIA1" "Stage IIA, subgroup 1 (e.g. cervix: lesion <4 cm)"
  * #figo-iia2 "FIGO IIA2" "Stage IIA, subgroup 2 (e.g. cervix: lesion 4 cm or larger)"
  * #figo-iib "FIGO IIB" "Stage II with extended extension (entity-specific definition)"
  * #figo-iic "FIGO IIC" "Stage II with capsule rupture, surface involvement or malignant ascites (historical FIGO revisions)"
  * #figo-iii "FIGO III" "Tumor with extrapelvic peritoneal spread and/or regional lymph node involvement"
  * #figo-iiia "FIGO IIIA" "Stage III with microscopic or limited extrapelvic spread (entity-specific definition)"
  * #figo-iiia1 "FIGO IIIA1" "Stage III with retroperitoneal lymph node metastasis only"
  * #figo-iiia1i "FIGO IIIA1(i)" "Stage IIIA1 with lymph node metastasis 10 mm or smaller"
  * #figo-iiia1ii "FIGO IIIA1(ii)" "Stage IIIA1 with lymph node metastasis larger than 10 mm"
  * #figo-iiia2 "FIGO IIIA2" "Stage III with microscopic extrapelvic peritoneal involvement"
  * #figo-iiib "FIGO IIIB" "Stage III with macroscopic extrapelvic peritoneal metastasis 2 cm or smaller"
  * #figo-iiic "FIGO IIIC" "Stage III with macroscopic extrapelvic peritoneal metastasis larger than 2 cm and/or regional lymph node metastasis"
  * #figo-iiic1 "FIGO IIIC1" "Stage III with pelvic lymph node metastasis"
  * #figo-iiic1r "FIGO IIIC1r" "Stage IIIC1 established by imaging"
  * #figo-iiic1p "FIGO IIIC1p" "Stage IIIC1 established by pathology"
  * #figo-iiic2 "FIGO IIIC2" "Stage III with para-aortic lymph node metastasis"
  * #figo-iiic2r "FIGO IIIC2r" "Stage IIIC2 established by imaging"
  * #figo-iiic2p "FIGO IIIC2p" "Stage IIIC2 established by pathology"
  * #figo-iv "FIGO IV" "Distant metastasis beyond the peritoneal cavity"
  * #figo-iva "FIGO IVA" "Stage IV with spread to adjacent pelvic organs or pleural effusion with positive cytology (entity-specific definition)"
  * #figo-ivb "FIGO IVB" "Stage IV with distant metastasis including extra-abdominal organs and lymph nodes"
  * #figo-ivc "FIGO IVC" "Stage IV with distant metastasis (entity-specific definition)"

// Bismuth Classification
* #bismuth "Bismuth" "Classification system for hilar cholangiocarcinoma based on the extent of biliary involvement and resectability."
  * #bismuth-i "Bismuth I" "Tumor below confluence of left and right hepatic ducts"
  * #bismuth-ii "Bismuth II" "Tumor reaching confluence but not involving secondary ducts"
  * #bismuth-iii "Bismuth III" "Tumor involving confluence and either right or left secondary ducts"
  * #bismuth-iiia "Bismuth IIIA" "Tumor involving confluence and right secondary ducts"
  * #bismuth-iiib "Bismuth IIIB" "Tumor involving confluence and left secondary ducts"
  * #bismuth-iv "Bismuth IV" "Tumor involving confluence and both right and left secondary ducts"

// Masaoka Classification
* #masaoka "Masaoka" "Staging system for thymomas based on invasiveness and extent of disease."
  * #masaoka-i "Masaoka I" "Encapsulated tumor without invasion"
  * #masaoka-ii "Masaoka II" "Invasion into surrounding fatty tissue or mediastinal pleura"
  * #masaoka-iii "Masaoka III" "Invasion into neighboring organs"
  * #masaoka-iv "Masaoka IV" "Pleural or pericardial dissemination"
  * #masaoka-iva "Masaoka IVA" "Pleural or pericardial implants"
  * #masaoka-ivb "Masaoka IVB" "Lymphogenous or hematogenous metastasis"

// GIST Mitosis Rate Assessment
* #mitoserate-gist "Mitoserate-GIST" "Mitotic rate assessment for gastrointestinal stromal tumors."
  * #mitoserate-gist-n "Mitoserate-GIST Niedrig" "Low mitotic rate: ≤5 mitoses per 50 HPF"
  * #mitoserate-gist-h "Mitoserate-GIST Hoch" "High mitotic rate: >5 mitoses per 50 HPF"

// p16 Status
* #p16 "p16" "p16 protein expression status assessment."
  * #p16-p "p16 Positiv" "Positive p16 protein expression"
  * #p16-n "p16 Negativ" "Negative p16 protein expression"

// EUTOS Score
* #eutos-score "EUTOS-Score" "European Treatment and Outcome Study prognostic score for chronic myeloid leukemia."
  * #eutos-score-n "EUTOS-Score Niedrigrisiko" "Low risk EUTOS score: ≤87"
  * #eutos-score-h "EUTOS-Score Hochrisiko" "High risk EUTOS score: >87"

// Sanz Score
* #sanz-score "Sanz-Score" "Risk assessment score for acute promyelocytic leukemia."
  * #sanz-score-n "Sanz-Score Niedrig" "Low risk: WBC <10x10⁹/L and platelets >40x10⁹/L"
  * #sanz-score-i "Sanz-Score Intermediär" "Intermediate risk: WBC <10x10⁹/L and platelets ≤40x10⁹/L"
  * #sanz-score-h "Sanz-Score Hoch" "High risk: WBC ≥10x10⁹/L"

// International Prognostic Index
* #ipi "IPI" "International Prognostic Index for aggressive non-Hodgkin lymphoma."
  * #ipi-n "IPI Niedrig" "Low risk: 0-1 risk factors"
  * #ipi-ni "IPI Niedrig-Intermediär" "Low-intermediate risk: 2 risk factors"
  * #ipi-hi "IPI Hoch-Intermediär" "High-intermediate risk: 3 risk factors"
  * #ipi-h "IPI Hoch" "High risk: 4-5 risk factors"

// Follicular Lymphoma International Prognostic Index
* #flipi "FLIPI" "Follicular Lymphoma International Prognostic Index."
  * #flipi-l "FLIPI Low risk" "Low risk: 0-1 risk factors"
  * #flipi-i "FLIPI Intermediate risk" "Intermediate risk: 2 risk factors"
  * #flipi-h "FLIPI High risk" "High risk: ≥3 risk factors"

// Mantle Cell Lymphoma International Prognostic Index
* #mipi "MIPI" "Mantle Cell Lymphoma International Prognostic Index."
  * #mipi-n "MIPI Niedrig" "Low risk MIPI score"
  * #mipi-i "MIPI Intermediär" "Intermediate risk MIPI score"
  * #mipi-h "MIPI Hoch" "High risk MIPI score"

// German Hodgkin Study Group Risk Classification
* #risikogruppen-ghsg "Risikogruppen GHSG" "German Hodgkin Study Group risk stratification."
  * #risikogruppen-ghsg-fr "GHSG Frühe" "Early favorable risk group"
  * #risikogruppen-ghsg-i "GHSG Intermediär" "Intermediate risk group"
  * #risikogruppen-ghsg-fo "GHSG Fortgeschritten" "Advanced risk group"

// International Prognostic Scoring System
* #ipss "IPSS" "International Prognostic Scoring System for myelodysplastic syndromes."
  * #ipss-l "IPSS Low" "Low risk: score 0"
  * #ipss-i1 "IPSS Intermediate-I" "Intermediate-1 risk: score 0.5-1.0"
  * #ipss-i2 "IPSS Intermediate-II" "Intermediate-2 risk: score 1.5-2.0"
  * #ipss-h "IPSS High risk" "High risk: score ≥2.5"

// HER2-neu Status
* #her2-neu "HER2-neu" "HER2-neu protein expression and gene amplification status."
  * #her2-neu-p "HER2-neu Positiv" "Positive HER2-neu status (IHC 3+ or FISH amplified)"
  * #her2-neu-n "HER2-neu Negativ" "Negative HER2-neu status (IHC 0-1+ or FISH not amplified)"

// Note: Per CLAUDE.md GitHub issue #206, research priorities:
// HIGH PRIORITY: IPSS, EUTOS, Sanz - likely have SNOMED CT/LOINC codes
// RESOLVED: IPI (716567001), FLIPI (708736003), MIPI (763236005) - now use SNOMED CT
// LOWER PRIORITY: ISSWM, ELN, GHSG, p16 Status, GIST Mitosis, Bismuth - check specialized terminologies