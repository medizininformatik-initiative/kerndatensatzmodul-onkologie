ValueSet: MII_VS_Onko_TNM_ITC_Suffix
Id: mii-vs-onko-tnm-itc-suffix
Title: "MII VS Onkologie TNM ITC Suffix"
Description: "Das ValueSet enthält die isolierten Tumorzellen (ITC) Suffixe für die N- und M-Kategorien aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-itc-suffix"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* $UICC#i+ "(i+)"
* $UICC#i- "(i-)"
* $UICC#mol+ "(mol+)"
* $UICC#mol- "(mol-)"