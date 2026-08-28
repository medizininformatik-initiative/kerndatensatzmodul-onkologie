# MII VS Onkologie Systemische Therapie Art - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Art**

## ValueSet: MII VS Onkologie Systemische Therapie Art 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-art | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Systemische_Therapie_Art |

 
oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie 

 **References** 

* [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-art",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-art",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Art",
  "title" : "MII VS Onkologie Systemische Therapie Art",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:40:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
      "concept" : [{
        "code" : "CH",
        "display" : "Chemotherapie"
      },
      {
        "code" : "HO",
        "display" : "Hormontherapie"
      },
      {
        "code" : "IM",
        "display" : "Immun-/Antikörpertherapie"
      },
      {
        "code" : "ZS",
        "display" : "zielgerichtete Substanzen"
      },
      {
        "code" : "SZ",
        "display" : "Stammzelltransplantation (inklusive Knochenmarktransplantation)"
      },
      {
        "code" : "CI",
        "display" : "Chemo- + Immun-/Antikörpertherapie"
      },
      {
        "code" : "CZ",
        "display" : "Chemotherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "CIZ",
        "display" : "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "IZ",
        "display" : "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
      },
      {
        "code" : "WW",
        "display" : "Watchful Waiting"
      },
      {
        "code" : "AS",
        "display" : "Active Surveillance"
      },
      {
        "code" : "WS",
        "display" : "Wait and see"
      },
      {
        "code" : "SO",
        "display" : "Sonstiges"
      }]
    }]
  }
}

```
