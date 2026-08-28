# MII CS Onkologie TNM Version - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie TNM Version**

## CodeSystem: MII CS Onkologie TNM Version 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_TNM_Version |

 
Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie TNM Version](ValueSet-mii-vs-onko-tnm-version.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-tnm-version",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_TNM_Version",
  "title" : "MII CS Onkologie TNM Version",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für TNM Version/Auflage nach welcher Version des TNM klassifiziert wird.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-version",
  "content" : "complete",
  "count" : 9,
  "concept" : [{
    "code" : "1",
    "display" : "1. Auflage"
  },
  {
    "code" : "2",
    "display" : "2. Auflage"
  },
  {
    "code" : "3",
    "display" : "3. Auflage"
  },
  {
    "code" : "4",
    "display" : "4. Auflage"
  },
  {
    "code" : "5",
    "display" : "5. Auflage"
  },
  {
    "code" : "6",
    "display" : "6. Auflage"
  },
  {
    "code" : "7",
    "display" : "7. Auflage"
  },
  {
    "code" : "8",
    "display" : "8. Auflage"
  },
  {
    "code" : "9",
    "display" : "9. Auflage"
  }]
}

```
