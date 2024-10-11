CodeSystem: MII_CS_Onko_Intention
Id: mii-cs-onko-intention
Title: "MII CS Onkologie Intention"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP, der Strahlentherapie und der Systemischen Therapie."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
//* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-intention"
* ^content = #complete
* #K "kurativ"
* #P "palliativ"
* #D "diagnostisch"
* #R "Revision/Komplikation"
* #S "Sonstiges"
* #X "fehlende Angabe"
* #O "lokal kurativ bei Oligometastasierung"
