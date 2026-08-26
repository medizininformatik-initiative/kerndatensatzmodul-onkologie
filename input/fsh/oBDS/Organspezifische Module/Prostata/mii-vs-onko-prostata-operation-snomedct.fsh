ValueSet: MII_VS_Onko_Prostata_Operation_SNOMEDCT
Id: mii-vs-onko-prostata-operation-snomedct
Title: "MII VS Onko Prostata Operation SNOMED CT"
Description: "Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 |Procedure on prostate (procedure)|"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-operation-snomedct"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert SNOMEDCopyrightForVS

* include codes from system $SCT where concept descendent-of #118877007

// TURP: bei Prostatakarzinom u.a. als palliative/desobstruierende Operation eingesetzt.
// Explizit aufgenommen, da das Konzept je nach SNOMED-Edition nicht zuverlässig unter
// 118877007 |Procedure on prostate (procedure)| expandiert wird.
* $SCT#90199006 "Transurethral prostatectomy"