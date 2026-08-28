ValueSet: MII_VS_Onko_Prostata_Gleason_Pattern_LOINC
Id: mii-vs-onko-prostata-gleason-pattern-loinc
Title: "MII VS Onkologie Prostata Gleason Pattern LOINC"
Description: "Value Set der LOINC-Codes für Primär-, Sekundär- und Tertiär-Gleason-Pattern. Dient als optionale LOINC-Zweitkodierung zum verpflichtenden SNOMED-CT-Slice im Profil MII_PR_Onko_Prostata_Gleason_Pattern (GitHub-Issue #259)."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-pattern-loinc"
* ^status = #active
* ^experimental = true
* insert Publisher
* insert PR_CS_VS_Version
* include $LNC#44641-9 "Gleason pattern.primary in Prostate tumor"
* include $LNC#44642-7 "Gleason pattern.secondary in Prostate tumor"
* include $LNC#44643-5 "Gleason pattern.tertiary in Prostate tumor"
