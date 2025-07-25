ValueSet: MII_VS_Onko_KRK_Stoma_Status_Reason
Id: mii-vs-onko-krk-stoma-status-reason
Description: "Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* $SCT#428119001 "Procedure not indicated (situation)"  // For K = kein Stoma
* $SCT#262008008 "Not performed (qualifier value)"  // For N = Anzeichnung nicht durchgeführt
* $SCT#261665006 "Unknown"  // For U = Unbekannt
* $SCT#373068000 "Undetermined (qualifier value)"  // Placeholder for S = Stoma angelegt, Anzeichnungsstatus unbekannt
