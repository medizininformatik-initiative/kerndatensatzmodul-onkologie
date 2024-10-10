ValueSet: MII_VS_Onko_Strahlentherapie_Intention
Id: mii-vs-onko-strahlentherapie-intention
Title: "MII VS Onkologie Strahlentherapie Intention"
Description: "Value Set für oBDS-Codes für Klassifikation von Intention der Strahlentherapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-intention"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* $mii-cs-onko-intention#K "kurativ"
* $mii-cs-onko-intention#P "palliativ"
* $mii-cs-onko-intention#S "Sonstiges"
* $mii-cs-onko-intention#X "keine Angabe"
* $mii-cs-onko-intention#O "lokal kurativ bei Oligometastasierung"