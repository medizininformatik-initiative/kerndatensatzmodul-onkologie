# MII CS Onkologie Therapieplanung Typ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Therapieplanung Typ**

## CodeSystem: MII CS Onkologie Therapieplanung Typ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Therapieplanung_Typ |

 
oBDS-spezifisches Codesystem für den Therapieplanungstyp 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Therapieplanung Typ](ValueSet-mii-vs-onko-therapieplanung-typ.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapieplanung-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapieplanung_Typ",
  "title" : "MII CS Onkologie Therapieplanung Typ",
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
  "description" : "oBDS-spezifisches Codesystem für den Therapieplanungstyp",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "praeth",
    "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
  },
  {
    "code" : "postop",
    "display" : "postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)"
  },
  {
    "code" : "postth",
    "display" : "posttherapeutische Tumorkonferenz (manche Tumore werden nicht operiert)"
  },
  {
    "code" : "ther",
    "display" : "Therapieplanung ohne Tumorkonferenz"
  }]
}

```
