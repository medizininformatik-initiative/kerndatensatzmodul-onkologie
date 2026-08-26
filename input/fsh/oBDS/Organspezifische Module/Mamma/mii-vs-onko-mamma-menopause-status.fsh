ValueSet: MII_VS_Onko_Mamma_Menopause_Status
Id: mii-vs-onko-mamma-menopause-status
Title: "MII VS Onkologie Mamma Menopause Status"
Description: "Value Set für (prätherapeutischen) Status der Menopause Score"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMEDCopyrightForVS

* include $SCT#22636003 "Premenopausal state (finding)"
* include $SCT#76498008 "Postmenopausal state (finding)"
* include $SCT#261665006 "Unknown (qualifier value)"