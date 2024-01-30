CodeSystem: MII_CS_Onko_Systemische_Therapie_Stellung
Id: mii-cs-onko-systemische-therapie-stellung
Title: "MII CS Onkologie Systemische Therapie  Stellung"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-stellung"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-stellung"
* ^content = #complete
* #O "ohne Bezug zur operativen Therapie"
* #A "adjuvant"
* #N "neoadjuvant"
* #I "intraoperativ"
* #S "Sonstiges"