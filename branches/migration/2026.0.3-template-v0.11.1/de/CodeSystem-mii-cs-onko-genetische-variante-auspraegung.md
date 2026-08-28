# MII CS Onkologie Genetische Variante Ausprägung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Genetische Variante Ausprägung**

## CodeSystem: MII CS Onkologie Genetische Variante Ausprägung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Genetische_Variante_Auspraegung |

 
oBDS-spezifisches Codesystem Konsequenz der genetischen Variante Ausprägung 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS Onkologie Genetische Variante Ausprägung](ValueSet-mii-vs-onko-genetische-variante-auspraegung.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-genetische-variante-auspraegung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Genetische_Variante_Auspraegung",
  "title" : "MII CS Onkologie Genetische Variante Ausprägung",
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
  "description" : "oBDS-spezifisches Codesystem Konsequenz der genetischen Variante Ausprägung",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "M",
    "display" : "Mutation/positiv"
  },
  {
    "code" : "W",
    "display" : "Wildtyp/nicht mutiert/ negativ"
  },
  {
    "code" : "P",
    "display" : "Polymorphismus"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  },
  {
    "code" : "N",
    "display" : "Nicht bestimmbar"
  },
  {
    "code" : "U",
    "display" : "Unbekannt"
  }]
}

```
