# MII VS Onkologie Strahlentherapie Ende Grund - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Strahlentherapie Ende Grund**

## ValueSet: MII VS Onkologie Strahlentherapie Ende Grund 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-ende-grund | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Strahlentherapie_Ende_Grund |

 
oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Strahlentherapie 

 **References** 

* [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-strahlentherapie-ende-grund",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-ende-grund",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Strahlentherapie_Ende_Grund",
  "title" : "MII VS Onkologie Strahlentherapie Ende Grund",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Klassifikation des Grundes der Beendigung der Strahlentherapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
      "concept" : [{
        "code" : "E",
        "display" : "reguläres Ende"
      },
      {
        "code" : "F",
        "display" : "Zieldosis erreicht mit Unterbrechung > 3 Kalendertage"
      },
      {
        "code" : "A",
        "display" : "Abbruch wegen Nebenwirkungen"
      },
      {
        "code" : "P",
        "display" : "Abbruch wegen Progress"
      },
      {
        "code" : "S",
        "display" : "Abbruch aus sonstigen Gründen"
      },
      {
        "code" : "V",
        "display" : "Patient verweigert weitere Therapie"
      },
      {
        "code" : "T",
        "display" : "Patient verstorben"
      },
      {
        "code" : "U",
        "display" : "unbekannt"
      }]
    }]
  }
}

```
