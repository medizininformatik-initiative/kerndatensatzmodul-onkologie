CodeSystem: MII_CS_Onko_Fernmetastasen
Id: mii-cs-onko-fernmetastasen
Title: "MII CS Onkologie Fernmetastasen"
Description: "oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-fernmetastasen"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-fernmetastasen"
* ^content = #complete
* #PUL "Lunge"
* #OSS "Knochen"
* #HEP "Leber"
* #BRA "Hirn"
* #LYM "Lymphknoten"
* #MAR "Knochenmark"
* #PLE "Pleura"
* #PER "Peritoneum"
* #ADR "Nebennieren"
* #SKI "Haut"
* #OTH "andere Organe"
* #GEN "generalisierte Metastasierung"