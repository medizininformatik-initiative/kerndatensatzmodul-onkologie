# MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimental) 

 
Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. 

 **References** 

* [MII PR Onkologie Prostata Gleason Primär](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-gleason-primary-secondary-tertiary",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-primary-secondary-tertiary",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_PrimarySecondaryTertiary",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Primär-, Sekundär- und Tertiär-Gleason Patterns in der Onkologie Prostata. Der häufigste Gleason Pattern wird als primär, der zweithäufigste als sekundär und (seltener, meistens bei Gleason Pattern 5) der dritthäufigste als tertiär bezeichnet. Diese Value Set wird verwendet, um die verschiedenen Gleason Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "384994009",
        "display" : "Primary Gleason pattern (observable entity)"
      },
      {
        "code" : "384995005",
        "display" : "Secondary Gleason pattern (observable entity)"
      },
      {
        "code" : "385002007",
        "display" : "Tertiary Gleason pattern (observable entity)"
      }]
    }]
  }
}

```
