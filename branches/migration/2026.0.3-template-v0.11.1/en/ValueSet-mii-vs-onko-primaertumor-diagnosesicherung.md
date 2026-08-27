# MII VS Onkologie Primärtumor Diagnosesicherung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Primärtumor Diagnosesicherung**

## ValueSet: MII VS Onkologie Primärtumor Diagnosesicherung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Primaertumor_Diagnosesicherung |

 
Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose. 

 **References** 

* [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-primaertumor-diagnosesicherung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Primaertumor_Diagnosesicherung",
  "title" : "MII VS Onkologie Primärtumor Diagnosesicherung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung"
    }]
  }
}

```
