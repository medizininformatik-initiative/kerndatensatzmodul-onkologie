ValueSet: MII_VS_Onko_OPS_Nuklearmedizin
Id: mii-vs-onko-ops-nuklearmedizin
Title: "MII VS Onkologie OPS Nuklearmedizin"
Description: "OPS-Codes für Nuklearmedizinische Therapie"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ops-nuklearmedizin"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include $OPS#8-53 
* include codes from system $OPS where concept descendent-of #8-53