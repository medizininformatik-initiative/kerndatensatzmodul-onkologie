# MII VS Onko Prostata PSA LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onko Prostata PSA LOINC 

 
Value Set für Prostata-spezifisches Antigen (PSA) LOINC Codes. Enthält LOINC Codes für Total-PSA und freies PSA, exkludiert gebundenes PSA Messungen. 

 **References** 

* [MII PR Onkologie PSA-Wert](StructureDefinition-mii-pr-onko-prostate-psa.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-psa-loinc",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-psa-loinc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_PSA_LOINC",
  "title" : "MII VS Onko Prostata PSA LOINC",
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
  "description" : "Value Set für Prostata-spezifisches Antigen (PSA) LOINC Codes. Enthält LOINC Codes für Total-PSA und freies PSA, exkludiert gebundenes PSA Messungen.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "2857-1"
      },
      {
        "code" : "10886-0"
      },
      {
        "code" : "83113-1"
      },
      {
        "code" : "35741-8"
      },
      {
        "code" : "83112-3"
      }]
    }]
  }
}

```
