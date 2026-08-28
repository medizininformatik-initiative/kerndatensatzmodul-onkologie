# MII VS Onkologie Prostata Gleason Pattern LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Prostata Gleason Pattern LOINC**

## ValueSet: MII VS Onkologie Prostata Gleason Pattern LOINC (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-pattern-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Prostata_Gleason_Pattern_LOINC |

 
Value Set der LOINC-Codes für Primär-, Sekundär- und Tertiär-Gleason-Pattern. Dient als optionale LOINC-Zweitkodierung zum verpflichtenden SNOMED-CT-Slice im Profil MII_PR_Onko_Prostata_Gleason_Pattern (GitHub-Issue #259). 

 **References** 

* [MII PR Onkologie Prostata Gleason Pattern](StructureDefinition-mii-pr-onko-prostate-gleason-patterns.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-gleason-pattern-loinc",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-pattern-loinc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Pattern_LOINC",
  "title" : "MII VS Onkologie Prostata Gleason Pattern LOINC",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set der LOINC-Codes für Primär-, Sekundär- und Tertiär-Gleason-Pattern. Dient als optionale LOINC-Zweitkodierung zum verpflichtenden SNOMED-CT-Slice im Profil MII_PR_Onko_Prostata_Gleason_Pattern (GitHub-Issue #259).",
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
        "code" : "44641-9",
        "display" : "Gleason pattern.primary in Prostate tumor"
      },
      {
        "code" : "44642-7",
        "display" : "Gleason pattern.secondary in Prostate tumor"
      },
      {
        "code" : "44643-5",
        "display" : "Gleason pattern.tertiary in Prostate tumor"
      }]
    }]
  }
}

```
