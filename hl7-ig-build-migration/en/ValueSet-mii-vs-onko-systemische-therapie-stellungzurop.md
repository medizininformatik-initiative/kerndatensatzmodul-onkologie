# MII VS Onkologie Systemische Therapie Stellung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Systemische Therapie Stellung 

 
oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP 

 **References** 

* [MII EX Onko Systemische Therapie Stellung zur OP](StructureDefinition-mii-ex-onko-systemische-therapie-stellungzurop.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-stellungzurop",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-systemische-therapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_StellungZurOp",
  "title" : "MII VS Onkologie Systemische Therapie Stellung",
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
  "description" : "oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
      "concept" : [{
        "code" : "O",
        "display" : "ohne Bezug zur operativen Therapie"
      },
      {
        "code" : "A",
        "display" : "adjuvant"
      },
      {
        "code" : "N",
        "display" : "neoadjuvant"
      },
      {
        "code" : "I",
        "display" : "intraoperativ"
      },
      {
        "code" : "S",
        "display" : "Sonstiges"
      }]
    }]
  }
}

```
