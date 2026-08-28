# MII VS Onkologie Mamma ISH Ergebnis - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Mamma ISH Ergebnis**

## ValueSet: MII VS Onkologie Mamma ISH Ergebnis 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-ish-ergebnis | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Mamma_ISH_Ergebnis |

 
Ergebnis der In-situ-Hybridisierung (ISH/FISH): Positive, Negative, Equivocal (LOINC-Answer-Codes). 

 **References** 

* [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-ish-ergebnis",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-ish-ergebnis",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_ISH_Ergebnis",
  "title" : "MII VS Onkologie Mamma ISH Ergebnis",
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
  "description" : "Ergebnis der In-situ-Hybridisierung (ISH/FISH): Positive, Negative, Equivocal (LOINC-Answer-Codes).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA6576-8",
        "display" : "Positive"
      },
      {
        "code" : "LA6577-6",
        "display" : "Negative"
      },
      {
        "code" : "LA11885-3",
        "display" : "Equivocal"
      }]
    }]
  }
}

```
