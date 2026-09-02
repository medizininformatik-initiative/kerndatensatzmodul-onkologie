ValueSet: MII_VS_Onko_TNM_Klassifikation_Typ
Id: mii-vs-onko-tnm-klassifikation-typ
Title: "MII VS Onkologie TNM Klassifikation Typ"
Description: "Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS
* $SCT#399390009 "TNM stage grouping"
* $SCT#399537006 "Clinical TNM stage grouping"
* $SCT#399588009 "Pathologic TNM stage grouping"
// 399703000 komplettiert die Typ-Achse (klinisch/pathologisch/integriert) für die
// synthetisierte Klassifikation. Bewusste Entscheidung trotz SCT-Hierarchie-Unschärfe:
// das Konzept sitzt im category-Ast (is-a 399566009), nicht im stage-grouping-Ast —
// ein Content-Request für 'Integrated TNM stage grouping' an SNOMED Intl ist angeraten.
* $SCT#399703000 "Integrated TNM category"