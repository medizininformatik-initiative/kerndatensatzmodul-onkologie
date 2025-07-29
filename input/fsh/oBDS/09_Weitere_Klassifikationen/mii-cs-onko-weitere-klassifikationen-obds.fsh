CodeSystem: MII_CS_Onko_Weitere_Klassifikationen_OBDS
Id: mii-cs-onko-weitere-klassifikationen-obds
Title: "MII CodeSystem Onkologie - Weitere Klassifikationen oBDS"
Description: "oBDS-specific classification systems and scoring systems not yet covered by international terminologies (SNOMED CT, NCI Thesaurus). These codes supplement the existing ValueSet for additional classifications. Research required: Check if SNOMED CT or LOINC codes exist for these scoring systems before using oBDS-specific codes."
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://www.medizininformatik-initiative.de"

// Multiple Myeloma Classifications
* #durie-salmon "Durie-Salmon Staging System" "Multiple myeloma staging system based on tumor burden and organ function. Assesses M-protein levels, hemoglobin, calcium, bone lesions, and renal function."
* #isswm "International Scoring System for Waldenström's Macroglobulinemia" "Prognostic scoring system for Waldenström's macroglobulinemia based on age, beta-2 microglobulin, and albumin levels."

// Leukemia Classifications  
* #eln "European LeukemiaNet Classification" "Risk stratification system for acute myeloid leukemia based on cytogenetic and molecular genetic abnormalities."
* #eutos "EUTOS Score" "European Treatment and Outcome Study prognostic score for chronic myeloid leukemia patients in chronic phase."
* #sanz "Sanz Score" "Risk assessment score for acute promyelocytic leukemia based on white blood cell count and platelet count."

// Lymphoma Classifications - Research required: IPI, FLIPI, MIPI likely have SNOMED CT codes
* #ipi "International Prognostic Index" "Prognostic index for aggressive non-Hodgkin lymphoma based on age, performance status, LDH, extranodal sites, and stage. Research: Check for existing SNOMED CT code."
* #flipi "Follicular Lymphoma International Prognostic Index" "Prognostic index for follicular lymphoma based on age, stage, hemoglobin, LDH, and number of nodal areas. Research: Check latest SNOMED CT release."
* #mipi "Mantle Cell Lymphoma International Prognostic Index" "Prognostic index for mantle cell lymphoma based on age, performance status, LDH, and leukocyte count. Research: Check latest SNOMED CT release."
* #ghsg "German Hodgkin Study Group Risk Classification" "Risk stratification for Hodgkin lymphoma distinguishing early favorable, early unfavorable, and advanced stages."

// Myelodysplastic Syndrome - Research required: IPSS likely has LOINC/SNOMED CT codes
* #ipss "International Prognostic Scoring System" "Prognostic scoring system for myelodysplastic syndromes based on bone marrow blast percentage, karyotype, and cytopenia. Research: Check for LOINC/SNOMED CT codes."

// Molecular Markers
* #p16-status "p16 Status" "p16 protein expression status assessment, particularly relevant for HPV-associated cancers and risk stratification."

// GIST Assessment
* #gist-mitosis "GIST Mitosis Rate Assessment" "Mitotic rate assessment for gastrointestinal stromal tumors measured as mitoses per 50 high power fields."

// Cholangiocarcinoma
* #bismuth "Bismuth Classification" "Classification system for hilar cholangiocarcinoma based on the extent of biliary involvement and resectability."

// Additional scoring systems from GitHub issue #206 - Lower priority for research
* #ipss-r "Revised International Prognostic Scoring System" "Revised IPSS for myelodysplastic syndromes with enhanced prognostic accuracy."
* #ipss-m "Molecular International Prognostic Scoring System" "Molecular-enhanced prognostic scoring system for myelodysplastic syndromes."
* #flipi2 "Follicular Lymphoma International Prognostic Index 2" "Updated prognostic index for follicular lymphoma incorporating beta-2 microglobulin."

// Note: Per CLAUDE.md GitHub issue #206, research priorities:
// HIGH PRIORITY: IPI, FLIPI, MIPI, IPSS, EUTOS, Sanz - likely have SNOMED CT/LOINC codes
// LOWER PRIORITY: ISSWM, ELN, GHSG, p16 Status, GIST Mitosis, Bismuth - check specialized terminologies