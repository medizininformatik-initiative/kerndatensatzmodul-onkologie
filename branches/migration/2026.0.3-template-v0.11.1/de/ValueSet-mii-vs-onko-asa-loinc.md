# MII VS Onkologie ASA LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie ASA LOINC**

## ValueSet: MII VS Onkologie ASA LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_ASA_LOINC |

 
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
  "title" : "MII VS Onkologie ASA LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für LOINC ASA Physical Status Classification (generalisiert für alle onkologischen Indikationen)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
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
