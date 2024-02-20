CodeSystem: MII_CS_Onko_Verlauf_Fernmetastasen
Id: mii-cs-onko-verlauf-fernmetastasen
Title: "MII CS Onkologie Verlauf Fernmetastasen"
Description: "oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf "
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-verlauf-fernmetastasen"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = $mii-vs-onko-verlauf-fernmetastasen
* ^content = #complete
* #K "kein Lymphknotenbefall nachweisbar"
* #R "neu aufgetretenes Lymphknotenrezidiv"
* #T "bekannter Lymphknotenbefall Residuen"
* #P "bekannter Lymphknotenbefall Progress"
* #N "bekannter Lymphknotenbefall No Change"
* #F "fraglicher Befund"
* #U "unbekannt"
* #X "fehlende Angabe"