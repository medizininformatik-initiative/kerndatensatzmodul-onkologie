ValueSet: MII_VS_Onko_Mamma_Operation_SCT
Id: mii-vs-onko-mamma-operation-sct
Title: "MII VS Onkologie Mamma Operation SNOMED CT"
Description: "Value Set für Mamma-Operationen basierend auf SNOMED CT"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS

* include codes from system $SCT where concept is-a #392090004 //Operation of the breast (procedure)