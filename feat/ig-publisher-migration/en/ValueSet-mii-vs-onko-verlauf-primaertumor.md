# MII VS Onkologie Verlauf Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Verlauf Primärtumor 

 
oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf 

 **References** 

* [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-verlauf-primaertumor",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Verlauf_Primaertumor",
  "title" : "MII VS Onkologie Verlauf Primärtumor",
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
  "description" : "oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor"
    }]
  }
}

```
