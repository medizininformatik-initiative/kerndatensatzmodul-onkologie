// HDB-696: Gesamt-ValueSet über das geteilte CodeSystem - Quelle (sourceCanonical)
// der modulübergreifenden oBDS-zu-SNOMED-ConceptMap.
ValueSet: MII_VS_Onko_Therapie_Ende_Grund
Id: mii-vs-onko-therapie-ende-grund
Title: "MII VS Onkologie Therapie Ende Grund (modulübergreifend)"
Description: "Alle Codes für den Grund des Therapieendes des oBDS (Strahlentherapie 14.13, Systemische Therapie 16.9). Modulübergreifendes Gesamt-ValueSet, u. a. als Quelle der ConceptMap mii-cm-onko-therapie-ende-sct; die Profile binden die therapiespezifischen Teilmengen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapie-ende-grund"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund
