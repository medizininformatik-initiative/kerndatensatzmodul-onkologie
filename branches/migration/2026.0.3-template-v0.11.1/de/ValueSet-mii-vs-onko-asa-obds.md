# MII VS Onkologie ASA oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie ASA oBDS**

## ValueSet: MII VS Onkologie ASA oBDS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_ASA_oBDS |

 
Value Set für oBDS ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen) 

 **References** 

* [MII PR Onkologie ASA-Klassifikation](StructureDefinition-mii-pr-onko-asa-klassifikation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-asa-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ASA_oBDS",
  "title" : "MII VS Onkologie ASA oBDS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für oBDS ASA-Klassifikation (ursprünglich KR9 aus Kolorektales Karzinom Modul, generalisiert für alle onkologischen Indikationen)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds"
    }]
  }
}

```
