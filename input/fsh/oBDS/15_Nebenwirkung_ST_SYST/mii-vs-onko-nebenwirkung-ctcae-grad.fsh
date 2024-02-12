ValueSet: MII_VS_Onko_Nebenwirkung_CTCAE_Grad_Adverse_Event
Id: mii-vs-onko-nebenwirkung-ctcae-grad-adverse-event
Title: "MII VS Onkologie Nebenwirkung nach CTCAE Grad"
Description: "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE-Grad"
* insert Publisher
* insert PR_CS_VS_Version
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = $mii-vs-onko-nebenwirkung-ctcae-grad
* ^status = #draft
* ^experimental = false
* include codes from system $mii-cs-onko-nebenwirkung-ctcae-grad
// Wenn das ursprüngliche ValueSet (http://terminology.hl7.org/CodeSystem/adverse-event-severity) unötig ist, kann dieses ValueSet gelöscht werden
* include codes from system $adverse-event-severity