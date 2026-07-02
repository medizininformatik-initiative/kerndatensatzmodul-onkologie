# MII VS Onkologie Systemische Therapie Intention - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Systemische Therapie Intention 

 
Value Set für oBDS-Codes für Klassifikation von Intention der Systemischen Therapie 

 **References** 

* [MII EX Onko Systemische Therapie Intention](StructureDefinition-mii-ex-onko-systemische-therapie-intention.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-intention",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-intention",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Intention",
  "title" : "MII VS Onkologie Systemische Therapie Intention",
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
  "description" : "Value Set für oBDS-Codes für Klassifikation von Intention der Systemischen Therapie",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
      "concept" : [{
        "code" : "K",
        "display" : "kurativ"
      },
      {
        "code" : "P",
        "display" : "palliativ"
      },
      {
        "code" : "S",
        "display" : "Sonstiges"
      },
      {
        "code" : "X",
        "display" : "keine Angabe"
      }]
    }]
  }
}

```
