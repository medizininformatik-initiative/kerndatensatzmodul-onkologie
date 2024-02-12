ValueSet: MII_VS_Onko_Therapieempfehlung_Typ
Id: mii-vs-onko-therapieempfehlung-typ
Title: "MII VS Onkologie Therapieempfehlung Typ"
Description: "oBDS-spezifisches ValueSet für den Typ der Therapieempfehlung"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-therapieempfehlung-typ"
* ^status = #draft
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* include codes from system $mii-cs-onko-therapieempfehlung-typ
// es kann sein, dass es jetzt noch Fehler geben könnte, da CodeSystem $mii-cs-onko-systemische-therapie-art in diesem Branch noch nicht existiert
//* include codes from system $mii-cs-onko-systemische-therapie-art