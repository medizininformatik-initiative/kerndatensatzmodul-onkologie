ValueSet: MII_VS_Onko_TNM_N_Kategorie_Werte_SCT
Id: mii-vs-onko-tnm-n-kategorie-werte-sct
Title: "MII VS Onkologie TNM N Kategorie Werte SNOMED CT"
Description: "SNOMED CT Codes für die TNM N-Kategorie (alle Präfix-Kombinationen: cN, pN, ycN, ypN, rcN, rpN)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie-werte-sct"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
// UICC clinical N category allowable values
* include codes from system $SCT where concept is-a #1353038000
// UICC pathological N category allowable values
* include codes from system $SCT where concept is-a #1352604000
// UICC ycN category allowable values
* include codes from system $SCT where concept is-a #1353068009
// UICC ypN category allowable values
* include codes from system $SCT where concept is-a #1352793009
// UICC rcN category allowable values
* include codes from system $SCT where concept is-a #1352733007
// UICC rpN category allowable values
* include codes from system $SCT where concept is-a #1352584006
