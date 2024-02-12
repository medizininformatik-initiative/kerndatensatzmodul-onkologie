CodeSystem: MII_CS_Onko_Therapieempfehlung_Typ
Id: mii-cs-onko-therapieempfehlung-typ
Title: "MII CS Onkologie Therapieempfehlung Typ"
Description: "oBDS-spezifisches Codesystem für den Typ der Therapieempfehlung"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablecodesystem"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-therapieempfehlung-typ"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* ^caseSensitive = true
* ^valueSet = $mii-vs-onko-therapieempfehlung-typ
* ^content = #complete
* #OP "Operation"
* #ST "Strahlentherapie"
* #KW "keine weitere tumorspezifische Therapie empfohlen"