# MII CS Onkologie Tod - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Tod**

## CodeSystem: MII CS Onkologie Tod 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Tod |

 
oBDS-spezifisches Codesystem tumorbedingter Tod 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Tod](ValueSet-mii-vs-onko-tod.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-tod",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tod",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Tod",
  "title" : "MII CS Onkologie Tod",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T10:41:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem tumorbedingter Tod",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "J",
    "display" : "Ja, die Person ist an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
  },
  {
    "code" : "N",
    "display" : "Nein, die Person ist nicht an einer Tumorerkrankung oder Folge einer Tumorerkrankung (einschließlich Behandlungskomplikation) verstorben."
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  }]
}

```
