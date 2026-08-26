ValueSet: MII_VS_Onko_TNM_T_Kategorie_Werte_SCT
Id: mii-vs-onko-tnm-t-kategorie-werte-sct
Title: "MII VS Onkologie TNM T Kategorie Werte SNOMED CT"
Description: "SNOMED CT Codes für die TNM T-Kategorie (alle Präfix-Kombinationen: cT, pT, ycT, ypT, rcT, rpT)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie-werte-sct"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMEDCopyrightForVS
// UICC clinical T category allowable values
* include codes from system $SCT where concept is-a #1352957001
// UICC pathological T category allowable values
* include codes from system $SCT where concept is-a #1352530008
// UICC ycT category allowable values
* include codes from system $SCT where concept is-a #1352752001
// UICC ypT category allowable values
* include codes from system $SCT where concept is-a #1352625000
// UICC rcT category allowable values
* include codes from system $SCT where concept is-a #1352998008
// UICC rpT category allowable values
* include codes from system $SCT where concept is-a #1352665001
