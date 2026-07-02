# MII VS Onkologie Strahlentherapie Boost - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Strahlentherapie Boost 

 
oBDS-spezifisches ValueSet für Klassifikation von Boosts bei Strahlentherapie 

 **References** 

* [MII EX Onko Strahlentherapie Bestrahlung Boost](StructureDefinition-mii-ex-onko-strahlentherapie-bestrahlung-boost.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-strahlentherapie-boost",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-boost",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Strahlentherapie_Boosts",
  "title" : "MII VS Onkologie Strahlentherapie Boost",
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
  "description" : "oBDS-spezifisches ValueSet für Klassifikation von Boosts bei Strahlentherapie",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-boost"
    }]
  }
}

```
