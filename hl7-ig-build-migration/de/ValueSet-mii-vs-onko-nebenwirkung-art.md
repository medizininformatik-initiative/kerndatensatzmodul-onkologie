# MII VS Onkologie Nebenwirkung nach CTCAE Art - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Nebenwirkung nach CTCAE Art 

 
oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE oder MedDRA code 

 **References** 

* [MII PR Onkologie Nebenwirkung von Strahlentherapie und systemische Therapie](StructureDefinition-mii-pr-onko-nebenwirkung-adverse-event.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-nebenwirkung-art",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-nebenwirkung-art",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Nebenwirkung_Art",
  "title" : "MII VS Onkologie Nebenwirkung nach CTCAE Art",
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
  "description" : "oBDS-spezifisches ValueSet für Nebenwirkung nach CTCAE oder MedDRA code",
  "compose" : {
    "include" : [{
      "system" : "https://www.meddra.org"
    },
    {
      "system" : "https://www.meddra.org",
      "concept" : [{
        "code" : "10016256",
        "display" : "Fatigue"
      },
      {
        "code" : "10034620",
        "display" : "Peripheral sensory neuropathy"
      }]
    }]
  }
}

```
