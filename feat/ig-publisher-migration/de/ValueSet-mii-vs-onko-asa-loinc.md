# MII_VS_Onko_ASA_LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: 

 
Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-asa-loinc",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-loinc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ASA_LOINC",
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
  "description" : "Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen)",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA28813-6",
        "display" : "ASA I"
      },
      {
        "code" : "LA28814-4",
        "display" : "ASA II"
      },
      {
        "code" : "LA28815-1",
        "display" : "ASA III"
      },
      {
        "code" : "LA28816-9",
        "display" : "ASA IV"
      },
      {
        "code" : "LA28817-7",
        "display" : "ASA V"
      },
      {
        "code" : "LA28818-5",
        "display" : "ASA VI"
      }]
    }]
  }
}

```
