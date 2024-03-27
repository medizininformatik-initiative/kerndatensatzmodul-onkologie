ValueSet: MII_VS_Onko_Gesamtbeurteilung_Residualstatus
Id: mii-vs-onko-gesamtbeurteilung-residualstatus
Title: "MII VS Onkologie Gesamtbeurteilung des Residualstatus"
Description: "Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* $mii-cs-onko-residualstatus#R0 "Kein Residualtumor"
* $mii-cs-onko-residualstatus#R1 "Mikroskopischer Residualtumor"
* $mii-cs-onko-residualstatus#R1(is) "In-Situ-Rest"
* $mii-cs-onko-residualstatus#R1(cy+) "Cytologischer Rest"
* $mii-cs-onko-residualstatus#R2 "Makroskopischer Residualtumor"
* $mii-cs-onko-residualstatus#RX "Vorhandensein von Residualtumor kann nicht beurteilt werden"