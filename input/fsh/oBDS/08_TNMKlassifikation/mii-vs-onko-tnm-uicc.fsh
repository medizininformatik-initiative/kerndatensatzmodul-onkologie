// HDB-697: Gesamt-ValueSet über das UICC-CodeSystem des Moduls - Quelle
// (sourceCanonical) der beiden TNM-zu-SNOMED-ConceptMaps. Die Profile binden
// weiterhin die kategoriespezifischen Teilmengen (T, N, M, Stadium, Präfixe …).
ValueSet: MII_VS_Onko_TNM_UICC
Id: mii-vs-onko-tnm-uicc
Title: "MII VS Onkologie TNM UICC (gesamt)"
Description: "Alle TNM-Werte des Moduls nach UICC (Kategorien T/N/M, Stadien, Präfixe c/p/u/y/r/a, Symbole m, sn, i+/i-, mol+/mol-, L, V, Pn, S) als Gesamt-ValueSet, u. a. als Quelle der ConceptMaps mii-cm-onko-tnm-uicc-sct-clinical und -pathological. Die Profile binden die kategoriespezifischen Teilmengen."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* include codes from system https://www.uicc.org/resources/tnm
