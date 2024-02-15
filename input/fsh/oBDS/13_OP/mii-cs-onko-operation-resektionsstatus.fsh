CodeSystem: MII_CS_Onko_Operation_Intention
Id: mii-cs-onko-operation-intention
Title: "MII CS Onkologie Operation Intention"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-operation-intention"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention"
* ^content = #complete
* #K "kurativ"
* #P "palliativ"
* #D "diagnostisch"
* #R "Revision/Komplikation"
* #S "Sonstiges"
* #X "fehlende Angabe"
