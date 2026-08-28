# MII CS Onkologie Verlauf Gesamtbeurteilung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Verlauf Gesamtbeurteilung**

## CodeSystem: MII CS Onkologie Verlauf Gesamtbeurteilung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Verlauf_Gesamtbeurteilung |

 
oBDS-spezifisches Codesystem für die Gesamtbeurteilung im Behandlungsverlauf 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Verlauf Gesamtbeurteilung](ValueSet-mii-vs-onko-verlauf-gesamtbeurteilung.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-verlauf-gesamtbeurteilung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Verlauf_Gesamtbeurteilung",
  "title" : "MII CS Onkologie Verlauf Gesamtbeurteilung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für die Gesamtbeurteilung im Behandlungsverlauf ",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 10,
  "concept" : [{
    "code" : "V",
    "display" : "Vollremission (complete remission, CR)"
  },
  {
    "code" : "T",
    "display" : "Teilremission (partial remission, PR)"
  },
  {
    "code" : "K",
    "display" : "keine Änderung (no change, NC) = stable disease"
  },
  {
    "code" : "P",
    "display" : "Progression"
  },
  {
    "code" : "D",
    "display" : "divergentes Geschehen"
  },
  {
    "code" : "B",
    "display" : "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)"
  },
  {
    "code" : "R",
    "display" : "Vollremission mit residualen Auffälligkeiten (CRr)"
  },
  {
    "code" : "Y",
    "display" : "Rezidiv"
  },
  {
    "code" : "U",
    "display" : "Beurteilung unmöglich"
  },
  {
    "code" : "X",
    "display" : "fehlende Angabe"
  }]
}

```
