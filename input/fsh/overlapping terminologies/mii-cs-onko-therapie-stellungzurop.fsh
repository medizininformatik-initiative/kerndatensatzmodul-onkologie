CodeSystem: MII_CS_Onko_Therapie_StellungZurOp
Id: mii-cs-onko-therapie-stellungzurop
Title: "MII CS Onkologie Therapie Stellung"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^content = #complete
* #O "ohne Bezug zur operativen Therapie"
* #A "adjuvant"
* #N "neoadjuvant"
* #I "intraoperativ"
* #Z "additiv"
* #S "Sonstiges"