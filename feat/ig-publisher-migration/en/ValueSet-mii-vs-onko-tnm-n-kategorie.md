# MII VS Onkologie TNM N Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie TNM N Kategorie 

 
Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN) 

 **References** 

* [MII PR Onkologie TNM N-Kategorie](StructureDefinition-mii-pr-onko-tnm-n-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-n-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-n-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_N_Kategorie",
  "title" : "MII VS Onkologie TNM N Kategorie",
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
  "description" : "Codes für Codes zur Differenzierung der TNM N-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "277206009",
        "display" : "N category (observable entity)"
      },
      {
        "code" : "399534004",
        "display" : "cN category (observable entity)"
      },
      {
        "code" : "371494008",
        "display" : "pN category (observable entity)"
      }]
    }]
  }
}

```
