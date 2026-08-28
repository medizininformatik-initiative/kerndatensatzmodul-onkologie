# MII VS Onkologie TNM SN Suffix - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie TNM SN Suffix**

## ValueSet: MII VS Onkologie TNM SN Suffix 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-sn-suffix | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_TNM_SN_Suffix |

 
Das ValueSet enthält das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix für die N-Kategorie aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII EX Onkologie TNM SN Suffix](StructureDefinition-mii-ex-onko-tnm-sn-suffix.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-sn-suffix",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-sn-suffix",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_SN_Suffix",
  "title" : "MII VS Onkologie TNM SN Suffix",
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
  "description" : "Das ValueSet enthält das Schildwächterlymphknoten (Sentinel Lymph Node) Suffix für die N-Kategorie aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
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
        "code" : "sn",
        "display" : "(sn)"
      }]
    }]
  }
}

```
