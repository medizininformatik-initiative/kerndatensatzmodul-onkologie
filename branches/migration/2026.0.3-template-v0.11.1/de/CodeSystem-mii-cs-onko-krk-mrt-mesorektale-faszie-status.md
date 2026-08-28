# MII CS Onkologie KRK MRT Mesorektale Faszie Status - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie KRK MRT Mesorektale Faszie Status**

## CodeSystem: MII CS Onkologie KRK MRT Mesorektale Faszie Status (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-mrt-mesorektale-faszie-status | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_KRK_MRT_Mesorektale_Faszie_Status |

 
oBDS-basiertes Codesystem für den Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie KRK MRT Mesorektale Faszie Status](ValueSet-mii-vs-onko-krk-mrt-mesorektale-faszie-status.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-krk-mrt-mesorektale-faszie-status",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-mrt-mesorektale-faszie-status",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_KRK_MRT_Mesorektale_Faszie_Status",
  "title" : "MII CS Onkologie KRK MRT Mesorektale Faszie Status",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:49:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-basiertes Codesystem für den Status der MRT/CT Untersuchung zur mesorektalen Faszie beim Kolorektalen Karzinom (KR5)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-mrt-mesorektale-faszie-status",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "D",
    "display" : "Durchgeführt, aber Abstand nicht angegeben",
    "definition" : "MRT oder Dünnschicht-CT wurde durchgeführt, aber der Abstand zur mesorektalen Faszie wurde nicht angegeben"
  },
  {
    "code" : "N",
    "display" : "Nein (MRT/CT nicht durchgeführt)",
    "definition" : "MRT oder Dünnschicht-CT wurde nicht durchgeführt"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "Es ist unbekannt, ob eine MRT oder Dünnschicht-CT durchgeführt wurde"
  }]
}

```
