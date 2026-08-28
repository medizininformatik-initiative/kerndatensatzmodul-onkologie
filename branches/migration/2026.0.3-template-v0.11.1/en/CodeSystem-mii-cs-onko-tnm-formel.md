# MII CS Onkologie TNM Formel - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie TNM Formel**

## CodeSystem: MII CS Onkologie TNM Formel 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_TNM_Formel |

 
Codes für die Darstellung der zusammengeführten TNM-Gesamtformel als Component der synthetisierten TNM-Klassifikation. 

This Code system is referenced in the definition of the following value sets:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-tnm-formel",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_TNM_Formel",
  "title" : "MII CS Onkologie TNM Formel",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:40:52+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für die Darstellung der zusammengeführten TNM-Gesamtformel als Component der synthetisierten TNM-Klassifikation.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 1,
  "concept" : [{
    "code" : "tnm-formel",
    "display" : "TNM-Formel",
    "definition" : "Zusammengeführte TNM-Gesamtformel (z. B. 'ypT0 ypN0 cM0') als generierte Darstellung der gewinnenden Kategorie-Beobachtungen inklusive Präfixe."
  }]
}

```
