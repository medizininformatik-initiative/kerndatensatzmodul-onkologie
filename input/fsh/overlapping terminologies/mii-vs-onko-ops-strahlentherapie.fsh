ValueSet: MII_VS_Onko_OPS_Strahlentherapie
Id: mii-vs-onko-ops-strahlentherapie
Title: "MII VS Onkologie OPS Strahlentherapie"
Description: "OPS-Codes für Strahlentherapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ops-strahlentherapie"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include $OPS#8-52 
* include codes from system $OPS where concept descendent-of #8-52