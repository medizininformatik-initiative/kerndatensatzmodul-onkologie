ValueSet: MII_VS_Onko_Systemische_Therapie_Stellung
Id: mii-vs-onko-systemische-therapie-stellung
Title: "MII VS Onkologie Systemische Therapie Stellung"
Description: "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-stellung"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
//* include codes from system $mii-cs-onko-systemische-therapie-stellung

* $mii-cs-onko-therapie-stellung#O "ohne Bezug zur operativen Therapie"
* $mii-cs-onko-therapie-stellung#A "adjuvant"
* $mii-cs-onko-therapie-stellung#N "neoadjuvant"
* $mii-cs-onko-therapie-stellung#I "intraoperativ"
* $mii-cs-onko-therapie-stellung#S "Sonstiges"