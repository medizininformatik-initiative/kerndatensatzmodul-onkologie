# MII VS Onkologie Prostata Gleason Patterns - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Prostata Gleason Patterns (Experimental) 

 
Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können. 

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
  "id" : "mii-vs-onko-prostata-gleason-patterns",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-patterns",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Patterns",
  "title" : "MII VS Onkologie Prostata Gleason Patterns",
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
  "description" : "Value Set für die histopathologische Bewertung von Prostata-Adenokarzinomen mittels Gleason-Patterns. Dieser Value Set wird verwendet, um die verschiedenen Gleason-Patterns zu kodieren, die bei der Beurteilung von Prostatakarzinomen auftreten können.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "369770006",
        "display" : "Gleason Pattern 1"
      },
      {
        "code" : "369771005",
        "display" : "Gleason Pattern 2"
      },
      {
        "code" : "369772003",
        "display" : "Gleason Pattern 3"
      },
      {
        "code" : "369773008",
        "display" : "Gleason Pattern 4"
      },
      {
        "code" : "369774002",
        "display" : "Gleason Pattern 5"
      }]
    }]
  }
}

```
