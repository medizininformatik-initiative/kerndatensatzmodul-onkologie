// HDB-696: Gesamt-ValueSet über das geteilte CodeSystem - Quelle (sourceCanonical)
// der modulübergreifenden oBDS-zu-SNOMED-ConceptMap.
ValueSet: MII_VS_Onko_Intention
Id: mii-vs-onko-intention
Title: "MII VS Onkologie Intention (modulübergreifend)"
Description: "Alle Intentions-Codes des oBDS (OP 13.2, Strahlentherapie 14.2, Systemische Therapie 16.2). Modulübergreifendes Gesamt-ValueSet, u. a. als Quelle der ConceptMap mii-cm-onko-intention-sct; die Profile binden die therapiespezifischen Teilmengen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-intention"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention
