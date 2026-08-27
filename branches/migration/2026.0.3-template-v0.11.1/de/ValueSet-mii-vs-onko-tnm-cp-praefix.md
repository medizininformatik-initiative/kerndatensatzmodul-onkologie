# MII VS Onkologie TNM c/p/u Praefix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie TNM c/p/u Praefix**

## ValueSet: MII VS Onkologie TNM c/p/u Praefix 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-cp-praefix | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_VS_Onko_TNM_cp_Praefix |

 
Codes für TNM c/p/u-Präfix. Gibt an, ob die Klassifikation klinisch (c), pathologisch (p) oder mittels Ultraschall (u) erfolgte. 

 **References** 

* [MII EX Onkologie TNM c/p Präfix](StructureDefinition-mii-ex-onko-tnm-cp-praefix.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-cp-praefix",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-cp-praefix",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_cp_Praefix",
  "title" : "MII VS Onkologie TNM c/p/u Praefix",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für TNM c/p/u-Präfix. Gibt an, ob die Klassifikation klinisch (c), pathologisch (p) oder mittels Ultraschall (u) erfolgte.",
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
        "code" : "c",
        "display" : "c"
      },
      {
        "code" : "p",
        "display" : "p"
      },
      {
        "code" : "u",
        "display" : "u"
      }]
    }]
  }
}

```
