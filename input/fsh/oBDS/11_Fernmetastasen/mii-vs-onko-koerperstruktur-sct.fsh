ValueSet: MII_VS_Onko_Koerperstruktur_SCT
Id: mii-vs-onko-koerperstruktur-sct
Title: "MII VS Onkologie Körperstruktur (SNOMED CT)"
Description: "SNOMED CT Körperstrukturen (Body structure) zur optionalen exakten Lokalisationsangabe (z.B. bei Fernmetastasen)."
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMEDCopyrightForVS
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-koerperstruktur-sct"
* ^status = #active
* ^experimental = false
* include codes from system $SCT where concept descendent-of #123037004
