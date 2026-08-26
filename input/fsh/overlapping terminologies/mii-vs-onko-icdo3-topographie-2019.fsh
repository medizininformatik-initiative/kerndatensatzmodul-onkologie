// Revisionsspezifisches ICD-O-3-Topographie-ValueSet (Zweite Revision) — analog zu den
// ATC-Jahres-ValueSets. Versions-Pin ist notwendig: Der TermServ führt die
// Revisionen als getrennte CS-Ressourcen; ungepinnte Filter scheitern an der
// Versions-Ambiguität (siehe beads dq9/14w.30).
ValueSet: MII_VS_Onko_ICDO3_Topographie_2019
Id: mii-vs-onko-icdo3-topographie-2019
Title: "MII VS Onkologie ICD-O-3 Topographie 2019"
Description: "Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Zweite Revision (deutsche Ausgabe 2019)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* include codes from system http://terminology.hl7.org/CodeSystem/icd-o-3|2019 where concept descendent-of #T
