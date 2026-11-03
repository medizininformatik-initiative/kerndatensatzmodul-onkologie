// HDB-696: Gesamt-ValueSet über das geteilte CodeSystem - Quelle (sourceCanonical)
// der modulübergreifenden oBDS-zu-SNOMED-ConceptMap.
ValueSet: MII_VS_Onko_Therapie_StellungZurOP
Id: mii-vs-onko-therapie-stellungzurop
Title: "MII VS Onkologie Therapie Stellung zur OP (modulübergreifend)"
Description: "Alle Codes für die Stellung der Therapie zur Operation (oBDS 14.3, 16.3). Modulübergreifendes Gesamt-ValueSet, u. a. als Quelle der ConceptMap mii-cm-onko-therapie-stellung-sct."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-therapie-stellungzurop"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop
