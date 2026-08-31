# MII VS Onkologie Prostata Gleason Score - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Prostata Gleason Score**

## ValueSet: MII VS Onkologie Prostata Gleason Score 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score | *Version*:2026.0.3 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:MII_VS_Onko_Prostata_Gleason_Score |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Value Set für den Gleason Score in Kombination mit der ISUP Grade Group. Da ISUP Grade Groups erst ab einem Gleason-Gesamtscore von 6 definiert sind, deckt dieses Value Set nur Scores >= 6 ab. Liegt nur das Score-Ergebnis ohne Grade Group vor oder ein Gesamtscore < 6, ist MII_VS_Onko_Prostata_Gleason_Score_Gesamt zu verwenden. 

 **References** 

* [MII PR Onkologie Prostata Gleason Grade Group](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-gleason-score",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Score",
  "title" : "MII VS Onkologie Prostata Gleason Score",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T15:22:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für den Gleason Score in Kombination mit der ISUP Grade Group. Da ISUP Grade Groups erst ab einem Gleason-Gesamtscore von 6 definiert sind, deckt dieses Value Set nur Scores >= 6 ab. Liegt nur das Score-Ergebnis ohne Grade Group vor oder ein Gesamtscore < 6, ist MII_VS_Onko_Prostata_Gleason_Score_Gesamt zu verwenden.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1279715000",
        "display" : "International Society of Urological Pathology grade group 1 (Gleason score 3 + 3 = 6) (qualifier value)"
      },
      {
        "code" : "1279714001",
        "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
      },
      {
        "code" : "1279716004",
        "display" : "International Society of Urological Pathology grade group 3 (Gleason score 4 + 3 = 7) (qualifier value)"
      },
      {
        "code" : "1279718003",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 3 + 5 = 8) (qualifier value)"
      },
      {
        "code" : "1279717008",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 4 + 4 = 8) (qualifier value)"
      },
      {
        "code" : "1279719006",
        "display" : "International Society of Urological Pathology grade group 4 (Gleason score 5 + 3 = 8) (qualifier value)"
      },
      {
        "code" : "1279720000",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 4 + 5 = 9) (qualifier value)"
      },
      {
        "code" : "1279721001",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 5 + 4 = 9) (qualifier value)"
      },
      {
        "code" : "1279722008",
        "display" : "International Society of Urological Pathology grade group 5 (Gleason score 5 + 5 = 10) (qualifier value)"
      }]
    }]
  }
}

```
