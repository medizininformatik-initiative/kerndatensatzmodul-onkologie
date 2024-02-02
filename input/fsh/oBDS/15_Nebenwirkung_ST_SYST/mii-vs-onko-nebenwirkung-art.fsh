ValueSet: MII_VS_Onko_Nebenwirkung_Art
Id: mii-vs-onko-nebenwirkung-art
Title: "MII VS Onkologie Nebenwirkung nach CTCAE Art"
Description: "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE Art"
* include codes from system $hl7-meddra-de
* insert Publisher
* insert PR_CS_VS_Version
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-nebenwirkung-ctcae-art"
* ^status = #draft
* ^experimental = false

// Hierfür existiert bereits CodeSystem von HL7 -> leider schon veraltet
// Alternativ gibt's noch eine Seite wo alle Codes (auf deutsch) gehostet sind: https://bioportal.bioontology.org/ontologies/MDRGER/?p=classes&conceptid=root
// kann es als codeSystem verwendet werden?