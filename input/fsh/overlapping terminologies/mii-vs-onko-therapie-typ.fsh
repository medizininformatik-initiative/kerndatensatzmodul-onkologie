// HDB-696: Gesamt-ValueSet über das geteilte CodeSystem - Quelle (sourceCanonical)
// der modulübergreifenden oBDS-zu-SNOMED-ConceptMap.
ValueSet: MII_VS_Onko_Therapie_Typ
Id: mii-vs-onko-therapie-typ
Title: "MII VS Onkologie Therapie Typ (modulübergreifend)"
Description: "Alle Therapie-Typ-Codes des oBDS (Systemische Therapie 16.1, Tumorkonferenz-Empfehlung 18). Modulübergreifendes Gesamt-ValueSet, u. a. als Quelle der ConceptMap mii-cm-onko-therapie-typ-sct."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapie-typ"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ
