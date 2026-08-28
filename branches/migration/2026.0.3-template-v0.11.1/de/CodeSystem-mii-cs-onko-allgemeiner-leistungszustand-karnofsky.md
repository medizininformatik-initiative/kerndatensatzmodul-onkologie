# MII CS Onkologie Allgemeiner Leistungszustand Karnofsky - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Allgemeiner Leistungszustand Karnofsky**

## CodeSystem: MII CS Onkologie Allgemeiner Leistungszustand Karnofsky 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Allgemeiner_Leistungszustand_Karnofsky |

 
oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach Karnofsky 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Allgemeiner Leistungszustand nach Karnofsky](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-karnofsky.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-allgemeiner-leistungszustand-karnofsky",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Allgemeiner_Leistungszustand_Karnofsky",
  "title" : "MII CS Onkologie Allgemeiner Leistungszustand Karnofsky",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach Karnofsky",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky",
  "content" : "complete",
  "count" : 11,
  "concept" : [{
    "code" : "100%",
    "display" : "100%"
  },
  {
    "code" : "90%",
    "display" : "90%"
  },
  {
    "code" : "80%",
    "display" : "80%"
  },
  {
    "code" : "70%",
    "display" : "70%"
  },
  {
    "code" : "60%",
    "display" : "60%"
  },
  {
    "code" : "50%",
    "display" : "50%"
  },
  {
    "code" : "40%",
    "display" : "40%"
  },
  {
    "code" : "30%",
    "display" : "30%"
  },
  {
    "code" : "20%",
    "display" : "20%"
  },
  {
    "code" : "10%",
    "display" : "10%"
  },
  {
    "code" : "0%",
    "display" : "0%"
  }]
}

```
