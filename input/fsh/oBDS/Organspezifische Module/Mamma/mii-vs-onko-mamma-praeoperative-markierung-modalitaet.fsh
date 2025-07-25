ValueSet: MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet
Id: mii-vs-onko-mamma-praeoperative-markierung-modalitaet
Description: "Value Set für Imagingmodalität der präopertiven Markierung bei Mamma-Karzinom"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include $SCT#1269000008 "Insertion of guide wire into breast using mammography guidance (procedure)"
* include $SCT#433222002 "Insertion of guide wire into breast using ultrasound guidance (procedure)"
* include $SCT#911831000000104 "Wire guided localization of lesion of breast using magnetic resonance imaging guidance (procedure)"
* include $SCT#836381000000102 "Insertion of marker into breast using plain X-ray guidance (procedure)"
// im Original ValueSet: Mammografie, Sono, MRT, keine, unbekannt
// keine, unbekannt werden über Status abgebildet