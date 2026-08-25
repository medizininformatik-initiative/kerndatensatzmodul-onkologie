// Kuratiertes ICD-10-GM-Subset entlang der Krebsregister-Meldepflicht (§65c/KFRG):
// C00-C97, D00-D09, benigne NUR intrakraniell/ZNS-nah (D32, D33, D35.2-D35.4)
// sowie D37-D48 (unsicheres Verhalten, inkl. D42/D43/D44.3-.5 und hämato D45-D47).
// D10-D31/D34-D36 (benigne außerhalb ZNS, z. B. D29.1) sind bewusst NICHT enthalten.
// Verwendung: Warning-Invariante onko-icd-meldepflicht auf der Diagnose (extensible-
// Semantik) — das required-Binding des Basis-Diagnose-Profils bleibt unberührt.
// Filter nutzen die ICD-10-GM-Gruppen-/Blockcodes der ClaML-Hierarchie (is-a).
ValueSet: MII_VS_Onko_ICD10_Meldepflichtige_Tumoren
Id: mii-vs-onko-icd10-meldepflichtige-tumoren
Title: "MII VS Onkologie ICD-10-GM Meldepflichtige Tumoren"
Description: "ICD-10-GM-Codes der nach KFRG/§65c krebsregister-meldepflichtigen Neubildungen: bösartige Neubildungen (C00-C97), In-situ-Neubildungen (D00-D09), gutartige Neubildungen der Meningen, des Gehirns/ZNS und intrakranieller endokriner Strukturen (D32, D33, D35.2-D35.4) sowie Neubildungen unsicheren oder unbekannten Verhaltens (D37-D48, einschließlich hämatologischer Entitäten D45-D47)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version

* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #C00-C97
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D00-D09
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D32
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D33
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D35.2
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D35.3
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D35.4
* include codes from system http://fhir.de/CodeSystem/bfarm/icd-10-gm where concept is-a #D37-D48
