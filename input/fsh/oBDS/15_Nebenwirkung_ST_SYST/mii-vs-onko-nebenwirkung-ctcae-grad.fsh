ValueSet: MII_VS_Onko_Nebenwirkung_CTCAE_Grad
Id: mii-vs-onko-nebenwirkung-ctcae-grad
Title: "MII VS Onkologie Nebenwirkung nach CTCAE Grad"
Description: "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad"
* insert Publisher
* insert PR_CS_VS_Version
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-nebenwirkung-ctcae-grad"
* ^status = #draft
* ^experimental = false
* include $us-ctcae-grade#1 "Mild Adverse Event"
* include $us-ctcae-grade#2 "Moderate Adverse Event"
* include $us-ctcae-grade#3 "Severe Adverse Event"
* include $us-ctcae-grade#4 "Life Threatening or Disabling Adverse Event"
* include $us-ctcae-grade#5 "Death Related to Adverse Event"
* include codes from system $mii-cs-onko-nebenwirkung-ctcae-grad

// die Frage ist, sollte das ValueSet deutsch und englisch gemischt?
// Auch wenn es bereits codesystem in FHIR gibt (Status Draft), sollte neues CodeSystem auf deutsch zu erstellen?
//https://build.fhir.org/ig/standardhealth/fsh-ae/ValueSet-ctcae-grade-value-set.html
//Warnung bei der Benneung von ValueSet -> wegen CTCAE (große Buchstaben) -> schlimm?