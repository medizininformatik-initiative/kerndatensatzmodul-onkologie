CodeSystem: MII_CS_Onko_Operation_Resektionsstatus
Id: mii-cs-onko-operation-resektionsstatus
Title: "MII CS Onkologie Operation Resektionsstatus"
Description: "oBDS-spezifisches Codesystem für Klassifikation von Resektionsstatus der OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-operation-resektionsstatus"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #K "kurativ"
* #P "palliativ"
* #D "diagnostisch"
* #R "Revision/Komplikation"
* #S "Sonstiges"
* #X "fehlende Angabe"