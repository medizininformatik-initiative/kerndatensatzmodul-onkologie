CodeSystem: MII_CS_Onko_Mamma_Rezeptorstatus_Leitlinie
Id: mii-cs-onko-mamma-rezeptorstatus-leitlinie
Title: "MII CS Onkologie Mamma Rezeptorstatus"
Description: "oBDS-spezifisches Codesystem Mamma-Rezeptorstatus, basierend auf der S3-Leitlinie Mammakarzinom v5.02 Abschnitt 4.5.4"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-rezeptorstatus"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^content = #complete
* #positiv "positiv" "Positiv: > 10% positive Tumorzellen"
* #gering-positiv "gering positiv""Gering positiv: 1-10% positive Tumorzellen"
* #negativ "negativ" "Negativ: < 1% positive Tumorzellen"
