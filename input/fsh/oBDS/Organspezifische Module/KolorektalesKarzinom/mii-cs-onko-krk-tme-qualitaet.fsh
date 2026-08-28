CodeSystem: MII_CS_Onko_KRK_TME_Qualitaet
Id: mii-cs-onko-krk-tme-qualitaet
Title: "MII CS Onkologie TME Qualität"
Description: "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
//* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-tme-qualitaet"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^content = #complete
* #1 "Grad 1 (gut)" 
* #2 "Grad 2 (moderat)" 
* #3 "Grad 3 (schlecht)" 