ValueSet: MII_VS_Onko_Strahlentherapie_Zielgebiet
Id: mii-vs-onko-strahlentherapie-zielgebiet
Title: "MII VS Onkologie Strahlentherapie Zielgebiet"
Description: "oBDS-spezifisches ValueSet für Klassifikation von Zielgebiet bei Strahlentherapie - unterstützt sowohl oBDS 2021 als auch oBDS 2014 Legacy-Codes"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-zielgebiet"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system $mii-cs-onko-strahlentherapie-zielgebiet
* include codes from system $mii-cs-onko-strahlentherapie-zielgebiet-2014