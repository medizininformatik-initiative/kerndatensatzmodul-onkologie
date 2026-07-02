# MII VS Onkologie TNM M Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie TNM M Kategorie 

 
Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN) 

 **References** 

* [MII PR Onkologie TNM M-Kategorie](StructureDefinition-mii-pr-onko-tnm-m-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-m-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-m-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_M_Kategorie",
  "title" : "MII VS Onkologie TNM M Kategorie",
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
  "description" : "Codes für Codes zur Differenzierung der TNM M-Kategorie als entweder klinisch (cN) oder pathologisch (pN)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "277208005",
        "display" : "M category (observable entity)"
      },
      {
        "code" : "399387003",
        "display" : "cM category (observable entity)"
      },
      {
        "code" : "371497001",
        "display" : "pM category (observable entity)"
      }]
    }]
  }
}

```
