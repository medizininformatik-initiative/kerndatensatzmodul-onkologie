ValueSet: MII_VS_Onko_Mamma_Rezeptorstatus
Id: mii-vs-onko-mamma-rezeptorstatus
Description: "Value Set für oBDS-Rezeptorstatus Mamma"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include $LNC#LA6576-8 "Positive"
* include $LNC#LA6577-6 "Negative"
* include $LNC#LA4489-6 "Unknown"