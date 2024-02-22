CodeSystem: MII_CS_Onko_Residualstatus
Id: mii-cs-onko-residualstatus
Title: "MII CS Onkologie Residualstatus"
Description: "oBDS-spezifisches Codesystem für R-Klassifikation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-residualstatus"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-residualstatus"
* ^content = #complete
* #R0 "Kein Residualtumor"
* #R1 "Mikroskopischer Residualtumor"
* #R1(is) "In-Situ-Rest"
* #R1(cy+) "Cytologischer Rest"
* #R2 "Makroskopischer Residualtumor"
* #RX "Vorhandensein von Residualtumor kann nicht beurteilt werden"
* #U "Residualtumorstatus ist nicht bekannt"
