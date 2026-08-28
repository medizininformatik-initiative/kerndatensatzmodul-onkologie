ValueSet: MII_VS_Onko_Mamma_Operation_OPS
Id: mii-vs-onko-mamma-operation-ops
Title: "MII VS Onkologie Mamma Operation OPS"
Description: "Value Set für Mamma-Operationen basierend auf OPS"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet

// Brustoperationen - expandable concept hierarchies
* include codes from system $OPS where code is-a #5-87 "Operationen an der Mamma"