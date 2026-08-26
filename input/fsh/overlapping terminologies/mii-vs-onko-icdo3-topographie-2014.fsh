// Revisionsspezifisches ICD-O-3-Topographie-ValueSet (Erste Revision) — analog zu den
// ATC-Jahres-ValueSets. Versions-Pin ist notwendig: Der TermServ führt die
// Revisionen als getrennte CS-Ressourcen; ungepinnte Filter scheitern an der
// Versions-Ambiguität (siehe beads dq9/14w.30).
ValueSet: MII_VS_Onko_ICDO3_Topographie_2014
Id: mii-vs-onko-icdo3-topographie-2014
Title: "MII VS Onkologie ICD-O-3 Topographie 2014"
Description: "Codes für die Topographie einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* include codes from system http://terminology.hl7.org/CodeSystem/icd-o-3|2014 where concept descendent-of #T
