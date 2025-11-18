ValueSet: MII_VS_Onko_Nebenwirkung_Art
Id: mii-vs-onko-nebenwirkung-art
Title: "MII VS Onkologie Nebenwirkung nach CTCAE Art"
Description: "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE oder MedDRA code"
* insert Publisher
* insert PR_CS_VS_Version
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art"
* ^status = #active
* ^experimental = false

// Include all codes from MedDRA system
* include codes from system $MEDDRA

// Explicitly include commonly used MedDRA codes for testing/validation
// This may help validators that cannot access the full MedDRA terminology server
* $MEDDRA#10016256 "Fatigue"
* $MEDDRA#10034620 "Peripheral sensory neuropathy"