CodeSystem: MII_CS_Onko_Therapie_Stellung
Id: mii-cs-onko-therapie-stellung
Title: "MII CS Onkologie Therapie Stellung"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Stellung zur OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapie-stellung"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
//* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-stellung"
* ^content = #complete
* #O "ohne Bezug zur operativen Therapie"
* #A "adjuvant"
* #N "neoadjuvant"
* #I "intraoperativ"
* #Z "additiv"
* #S "Sonstiges"