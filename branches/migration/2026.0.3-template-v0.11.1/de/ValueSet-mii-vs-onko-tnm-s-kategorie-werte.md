# MII VS Onkologie TNM S Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie TNM S Kategorie Werte**

## ValueSet: MII VS Onkologie TNM S Kategorie Werte 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-s-kategorie-werte | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_TNM_S_Kategorie_Werte |

 
Das ValueSet enthält die TNM Codes für Serumtumormarker aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM S-Kategorie](StructureDefinition-mii-pr-onko-tnm-s-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-s-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-s-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_S_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM S Kategorie Werte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das ValueSet enthält die TNM Codes für Serumtumormarker aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
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
        "code" : "S0",
        "display" : "S0"
      },
      {
        "code" : "S1",
        "display" : "S1"
      },
      {
        "code" : "S2",
        "display" : "S2"
      },
      {
        "code" : "S3",
        "display" : "S3"
      },
      {
        "code" : "SX",
        "display" : "SX"
      }]
    }]
  }
}

```
