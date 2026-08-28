ValueSet: MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary
Id: mii-vs-onko-prostata-gleason-primary-secondary-tertiary
Title: "MII VS Onkologie Prostata Gleason Primary Secondary Tertiary"
Description: "Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS
* include $SCT#384994009 "Primary Gleason pattern (observable entity)"
* include $SCT#384995005 "Secondary Gleason pattern (observable entity)"
* include $SCT#385002007  "Tertiary Gleason pattern (observable entity)"


ValueSet: MII_VS_Onko_Prostata_Gleason_Patterns
Id: mii-vs-onko-prostata-gleason-patterns
Title: "MII VS Onkologie Prostata Gleason Patterns"
Description: "Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können."
* ^meta.profile = "http://hl7.org/fhir/StructureDefinition/shareablevalueset"
* ^url = "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns"
* ^status = #active
* ^experimental = false
* insert Publisher
* insert PR_CS_VS_Version
* insert OnkoCRMIValueSet
* insert SNOMEDCopyrightForVS
* include $SCT#369770006 "Gleason Pattern 1"
* include $SCT#369771005 "Gleason Pattern 2"
* include $SCT#369772003 "Gleason Pattern 3"
* include $SCT#369773008 "Gleason Pattern 4"
* include $SCT#369774002 "Gleason Pattern 5"
