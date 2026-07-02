# MII VS Onko Prostata Operation SNOMED CT - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onko Prostata Operation SNOMED CT 

 

| | |
| :--- | :--- |
| Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 | Procedure on prostate (procedure) |

 

 **References** 

* [MII PR Onko Prostata Operation](StructureDefinition-mii-pr-onko-prostata-operation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-operation-snomedct",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-operation-snomedct",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Operation_SNOMEDCT",
  "title" : "MII VS Onko Prostata Operation SNOMED CT",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Prostata-spezifische Operationen basierend auf SNOMED CT. Enthält alle Kinder von 118877007 |Procedure on prostate (procedure)|",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "118877007"
      }]
    }]
  }
}

```
