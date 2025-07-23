ValueSet: MII_VS_Onko_Mamma_Operationen
Id: mii-vs-onko-mamma-operationen
Description: "Value Set für oBDS-Rezeptorstatus Mamma"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include codes from system $SCT where concept is-a #392090004 //Operation of the breast (procedure)

