# MII CS Onkologie Mamma Her2neu Status Leitlinie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Mamma Her2neu Status Leitlinie**

## CodeSystem: MII CS Onkologie Mamma Her2neu Status Leitlinie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_CS_Onko_Mamma_Her2neu_Status_Leitlinie |

 
Codesystem für Her2neu Status basierend auf der S3-Leitlinie Mammakarzinom und ASCO/CAP Guidelines mit erweiterten Klassifikationen (HER2-low, HER2-ultralow) 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Mamma Her2neu Status Leitlinie](ValueSet-mii-vs-onko-mamma-her2neu-status-leitlinie.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-mamma-her2neu-status-leitlinie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-leitlinie",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Mamma_Her2neu_Status_Leitlinie",
  "title" : "MII CS Onkologie Mamma Her2neu Status Leitlinie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:11:54+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codesystem für Her2neu Status basierend auf der S3-Leitlinie Mammakarzinom und ASCO/CAP Guidelines mit erweiterten Klassifikationen (HER2-low, HER2-ultralow)",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 5,
  "concept" : [{
    "code" : "positiv",
    "display" : "HER2-positiv",
    "definition" : "HER2-positiv: IHC 3+ (Score 3+) oder IHC 2+ (Score 2+) und ISH positiv"
  },
  {
    "code" : "low",
    "display" : "HER2-low",
    "definition" : "HER2-low: IHC 1+ oder IHC 2+ und ISH negativ"
  },
  {
    "code" : "ultralow",
    "display" : "HER2-ultralow",
    "definition" : "HER2-ultralow: IHC 0 mit Membranfärbung"
  },
  {
    "code" : "negativ",
    "display" : "HER2-negativ",
    "definition" : "HER2-negativ: IHC 0 ohne Membranfärbung"
  },
  {
    "code" : "equivocal",
    "display" : "equivocal",
    "definition" : "Equivocal: Grenzwertig/unklarer Befund, weitere Testung erforderlich"
  }]
}

```
