# MII VS Onkologie Systemische Therapie Art - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Systemische Therapie Art 

 
oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie 

 **References** 

* [MII PR Onkologie Systemische Therapie](StructureDefinition-mii-pr-onko-systemische-therapie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für Klassifikation der Art der systemischen oder abwartenden Therapie",
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
