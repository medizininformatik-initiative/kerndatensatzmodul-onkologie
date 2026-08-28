# MII CS Onko Therapie Typ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onko Therapie Typ**

## CodeSystem: MII CS Onko Therapie Typ 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Therapie_Typ |

 
Typ der Therapie 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Systemische Therapie Art](ValueSet-mii-vs-onko-systemische-therapie-art.md)
* [MII VS Onkologie Therapieempfehlung Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapie-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapie_Typ",
  "title" : "MII CS Onko Therapie Typ",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:24:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Typ der Therapie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "CH",
    "display" : "Chemotherapie"
  },
  {
    "code" : "HO",
    "display" : "Hormontherapie"
  },
  {
    "code" : "IM",
    "display" : "Immun-/Antikörpertherapie"
  },
  {
    "code" : "ZS",
    "display" : "zielgerichtete Substanzen"
  },
  {
    "code" : "SZ",
    "display" : "Stammzelltransplantation (inklusive Knochenmarktransplantation)"
  },
  {
    "code" : "CI",
    "display" : "Chemo- + Immun-/Antikörpertherapie"
  },
  {
    "code" : "CZ",
    "display" : "Chemotherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "CIZ",
    "display" : "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "IZ",
    "display" : "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "WW",
    "display" : "Watchful Waiting"
  },
  {
    "code" : "AS",
    "display" : "Active Surveillance"
  },
  {
    "code" : "WS",
    "display" : "Wait and see"
  },
  {
    "code" : "OP",
    "display" : "Operation"
  },
  {
    "code" : "ST",
    "display" : "Strahlentherapie"
  },
  {
    "code" : "KW",
    "display" : "keine weitere tumorspezifische Therapie empfohlen"
  },
  {
    "code" : "SO",
    "display" : "Sonstiges"
  }]
}

```
