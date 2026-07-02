# MII_VS_Onko_KRK_Stoma_Status_Reason - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimental) 

 
Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung 

 **References** 

* [MII PR Onkologie KRK Stoma-Markierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-krk-stoma-status-reason",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-stoma-status-reason",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Stoma_Status_Reason",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für SNOMED CT Codes zur Begründung des Status der präoperativen Stoma-Anzeichnung",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "428119001",
        "display" : "Procedure not indicated (situation)"
      },
      {
        "code" : "262008008",
        "display" : "Not performed (qualifier value)"
      },
      {
        "code" : "261665006",
        "display" : "Unknown"
      },
      {
        "code" : "373068000",
        "display" : "Undetermined (qualifier value)"
      }]
    }]
  }
}

```
