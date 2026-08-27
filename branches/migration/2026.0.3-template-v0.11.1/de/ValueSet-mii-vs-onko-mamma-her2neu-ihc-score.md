# MII VS Onkologie Mamma Her2neu IHC Score - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Mamma Her2neu IHC Score**

## ValueSet: MII VS Onkologie Mamma Her2neu IHC Score 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-her2neu-ihc-score | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_VS_Onko_Mamma_Her2neu_IHC_Score |

 
HER2-Score der Immunhistochemie (0, 1+, 2+, 3+, Indeterminate). Enumerierte Fassung der LOINC-Answer-List LL4396-9. 

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
  "id" : "mii-vs-onko-mamma-her2neu-ihc-score",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-her2neu-ihc-score",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Her2neu_IHC_Score",
  "title" : "MII VS Onkologie Mamma Her2neu IHC Score",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "HER2-Score der Immunhistochemie (0, 1+, 2+, 3+, Indeterminate). Enumerierte Fassung der LOINC-Answer-List LL4396-9.",
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
        "code" : "LA6111-4",
        "display" : "0"
      },
      {
        "code" : "LA11841-6",
        "display" : "1+"
      },
      {
        "code" : "LA11842-4",
        "display" : "2+"
      },
      {
        "code" : "LA11843-2",
        "display" : "3+"
      },
      {
        "code" : "LA11884-6",
        "display" : "Indeterminate"
      }]
    }]
  }
}

```
