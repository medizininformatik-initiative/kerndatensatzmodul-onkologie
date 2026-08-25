ValueSet: MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat
Id: mii-vs-onko-mamma-intraoperatives-imaging-praeparat
Title: "MII VS Onkologie Mamma Intraoperatives Imaging Präparat"
Description: "Value Set für intraoperatives Imaging des Präparats nach Exzision bei Mamma-Karzinom"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include codes from system $SCT where concept is-a #1332559003 "Imaging of tissue specimen (procedure)"

// im Original ValueSet: Mammografie, Sono, MRT, keine, unbekannt
// keine, unbekannt werden über Status abgebildet