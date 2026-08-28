# MII VS Onkologie Mamma Operation OPS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Mamma Operation OPS**

## ValueSet: MII VS Onkologie Mamma Operation OPS (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-operation-ops | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Mamma_Operation_OPS |

 
Value Set für Mamma-Operationen basierend auf OPS 

 **References** 

* [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-operation-ops",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-operation-ops",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Operation_OPS",
  "title" : "MII VS Onkologie Mamma Operation OPS",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Mamma-Operationen basierend auf OPS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "filter" : [{
        "property" : "code",
        "op" : "is-a",
        "value" : "5-87"
      }]
    }]
  }
}

```
