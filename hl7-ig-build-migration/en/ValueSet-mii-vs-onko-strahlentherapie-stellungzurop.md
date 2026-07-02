# MII VS Onkologie Strahlentherapie Stellung zur OP - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Strahlentherapie Stellung zur OP 

 
oBDS-spezifisches ValueSet für Klassifikation von Stellung zur OP 

 **References** 

* [MII EX Onko Strahlentherapie Stellung zur OP](StructureDefinition-mii-ex-onko-strahlentherapie-stellungzurop.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-strahlentherapie-stellungzurop",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-strahlentherapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Strahlentherapie_StellungZurOp",
  "title" : "MII VS Onkologie Strahlentherapie Stellung zur OP",
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
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop"
    }]
  }
}

```
