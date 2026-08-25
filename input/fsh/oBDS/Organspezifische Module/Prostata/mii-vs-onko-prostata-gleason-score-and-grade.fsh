ValueSet: MII_VS_Onko_Prostata_Gleason_Score
Id: mii-vs-onko-prostata-gleason-score
Title: "MII VS Onkologie Prostata Gleason Score"
Description: "Value Set für Gleason Score"
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version

* include $SCT#1279715000 "International Society of Urological Pathology grade group 1 (Gleason score 3 + 3 = 6) (qualifier value)"
* include $SCT#1279714001 "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
* include $SCT#1279716004 "International Society of Urological Pathology grade group 3 (Gleason score 4 + 3 = 7) (qualifier value)"
* include $SCT#1279718003 "International Society of Urological Pathology grade group 4 (Gleason score 3 + 5 = 8) (qualifier value)"
* include $SCT#1279717008 "International Society of Urological Pathology grade group 4 (Gleason score 4 + 4 = 8) (qualifier value)"
* include $SCT#1279719006 "International Society of Urological Pathology grade group 4 (Gleason score 5 + 3 = 8) (qualifier value)"
* include $SCT#1279720000 "International Society of Urological Pathology grade group 5 (Gleason score 4 + 5 = 9) (qualifier value)"
* include $SCT#1279721001 "International Society of Urological Pathology grade group 5 (Gleason score 5 + 4 = 9) (qualifier value)"
* include $SCT#1279722008 "International Society of Urological Pathology grade group 5 (Gleason score 5 + 5 = 10) (qualifier value)"