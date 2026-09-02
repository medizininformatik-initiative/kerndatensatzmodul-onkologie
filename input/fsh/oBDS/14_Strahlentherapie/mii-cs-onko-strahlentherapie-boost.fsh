CodeSystem: MII_CS_Onko_Strahlentherapie_Boost
Id: mii-cs-onko-strahlentherapie-boost
Title: "MII CS Onkologie Strahlentherapie Boost"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Strahlentherapie-Boosts"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMICodeSystem
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-boost"
* ^content = #complete
* #J "ja, mit Boost o. n. A."
* #SIB "simultan integrierter Boost"
* #SEQ "sequentieller Boost"
* #KON "konkomitanter Boost"
* #N "nein, ohne Boost"