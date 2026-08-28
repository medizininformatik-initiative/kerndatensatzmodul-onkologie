ValueSet: MII_VS_Onko_TNM_M_Kategorie_Werte_SCT
Id: mii-vs-onko-tnm-m-kategorie-werte-sct
Title: "MII VS Onkologie TNM M Kategorie Werte SNOMED CT"
Description: "SNOMED CT Codes für die TNM M-Kategorie (alle Präfix-Kombinationen: cM, pM, rcM, rpM)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie-werte-sct"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS
// UICC clinical M category allowable values
* include codes from system $SCT where concept is-a #1352509004
// UICC pathological M category allowable values
* include codes from system $SCT where concept is-a #1352570001
// UICC rcM category allowable values
* include codes from system $SCT where concept is-a #1352704006
// UICC rpM category allowable values
* include codes from system $SCT where concept is-a #1352506006
