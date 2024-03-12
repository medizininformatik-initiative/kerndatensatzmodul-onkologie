ValueSet: MII_VS_Onko_Operation_Intention
Id: mii-vs-onko-operation-intention
Title: "MII VS Onkologie Operation Intention"
Description: "Value Set für oBDS-Codes für Klassifikation von Intention der OP"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-intention"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
//* include codes from system $mii-cs-onko-operation-intention

* $mii-cs-onko-intention#K "kurativ"
* $mii-cs-onko-intention#P "palliativ"
* $mii-cs-onko-intention#D "diagnostisch"
* $mii-cs-onko-intention#R "Revision/Komplikation"
* $mii-cs-onko-intention#S "Sonstiges"
* $mii-cs-onko-intention#X "fehlende Angabe"