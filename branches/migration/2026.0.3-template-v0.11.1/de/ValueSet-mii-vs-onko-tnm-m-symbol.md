# MII VS Onkologie TNM m-Symbol - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie TNM m-Symbol**

## ValueSet: MII VS Onkologie TNM m-Symbol 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-symbol | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_TNM_m_Symbol |

 
Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk. 

 **References** 

* [MII PR Onkologie TNM m-Symbol](StructureDefinition-mii-pr-onko-tnm-m-symbol.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-m-symbol",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-symbol",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_m_Symbol",
  "title" : "MII VS Onkologie TNM m-Symbol",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "m",
        "display" : "(m)"
      },
      {
        "code" : "2",
        "display" : "(2)"
      },
      {
        "code" : "3",
        "display" : "(3)"
      },
      {
        "code" : "4",
        "display" : "(4)"
      },
      {
        "code" : "5",
        "display" : "(5)"
      },
      {
        "code" : "6",
        "display" : "(6)"
      },
      {
        "code" : "7",
        "display" : "(7)"
      },
      {
        "code" : "8",
        "display" : "(8)"
      },
      {
        "code" : "9",
        "display" : "(9)"
      },
      {
        "code" : "10",
        "display" : "(10)"
      }]
    }]
  }
}

```
