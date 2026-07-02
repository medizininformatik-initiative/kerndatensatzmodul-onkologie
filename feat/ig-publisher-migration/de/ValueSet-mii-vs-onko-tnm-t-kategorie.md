# MII VS Onkologie TNM T Kategorie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie TNM T Kategorie 

 
Codes für Codes zur Differenzierung der TNM T-Kategorie als entweder klinisch (cT) oder pathologisch (pT) 

 **References** 

* [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-t-kategorie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_T_Kategorie",
  "title" : "MII VS Onkologie TNM T Kategorie",
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
  "description" : "Codes für Codes zur Differenzierung der TNM T-Kategorie als entweder klinisch (cT) oder pathologisch (pT)",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "78873005",
        "display" : "T category (observable entity)"
      },
      {
        "code" : "399504009",
        "display" : "cT category (observable entity)"
      },
      {
        "code" : "384625004",
        "display" : "pT category (observable entity)"
      }]
    }]
  }
}

```
