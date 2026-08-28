# MII VS Onkologie TNM T Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie TNM T Kategorie Werte**

## ValueSet: MII VS Onkologie TNM T Kategorie Werte 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie-werte | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_TNM_T_Kategorie_Werte |

 
Das ValueSet enthält die TNM T-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM T-Kategorie](StructureDefinition-mii-pr-onko-tnm-t-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-t-kategorie-werte",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-t-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_T_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM T Kategorie Werte",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T09:25:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Das ValueSet enthält die TNM T-Kategorie Codes aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "TX",
        "display" : "TX"
      },
      {
        "code" : "T0",
        "display" : "T0"
      },
      {
        "code" : "Ta",
        "display" : "Ta"
      },
      {
        "code" : "Tis",
        "display" : "Tis"
      },
      {
        "code" : "Tis(LAMN)",
        "display" : "Tis(LAMN)"
      },
      {
        "code" : "Tis(DCIS)",
        "display" : "Tis(DCIS)"
      },
      {
        "code" : "Tis(LCIS)",
        "display" : "Tis(LCIS)"
      },
      {
        "code" : "Tis(Paget)",
        "display" : "Tis(Paget)"
      },
      {
        "code" : "Tis(pu)",
        "display" : "Tis(pu)"
      },
      {
        "code" : "Tis(pd)",
        "display" : "Tis(pd)"
      },
      {
        "code" : "T1",
        "display" : "T1"
      },
      {
        "code" : "T1mi",
        "display" : "T1mi"
      },
      {
        "code" : "T1a",
        "display" : "T1a"
      },
      {
        "code" : "T1a1",
        "display" : "T1a1"
      },
      {
        "code" : "T1a2",
        "display" : "T1a2"
      },
      {
        "code" : "T1b",
        "display" : "T1b"
      },
      {
        "code" : "T1b1",
        "display" : "T1b1"
      },
      {
        "code" : "T1b2",
        "display" : "T1b2"
      },
      {
        "code" : "T1c",
        "display" : "T1c"
      },
      {
        "code" : "T1c1",
        "display" : "T1c1"
      },
      {
        "code" : "T1c2",
        "display" : "T1c2"
      },
      {
        "code" : "T1c3",
        "display" : "T1c3"
      },
      {
        "code" : "T1d",
        "display" : "T1d"
      },
      {
        "code" : "T2",
        "display" : "T2"
      },
      {
        "code" : "T2a",
        "display" : "T2a"
      },
      {
        "code" : "T2a1",
        "display" : "T2a1"
      },
      {
        "code" : "T2a2",
        "display" : "T2a2"
      },
      {
        "code" : "T2b",
        "display" : "T2b"
      },
      {
        "code" : "T2c",
        "display" : "T2c"
      },
      {
        "code" : "T2d",
        "display" : "T2d"
      },
      {
        "code" : "T3",
        "display" : "T3"
      },
      {
        "code" : "T3a",
        "display" : "T3a"
      },
      {
        "code" : "T3b",
        "display" : "T3b"
      },
      {
        "code" : "T3c",
        "display" : "T3c"
      },
      {
        "code" : "T3d",
        "display" : "T3d"
      },
      {
        "code" : "T3e",
        "display" : "T3e"
      },
      {
        "code" : "T4",
        "display" : "T4"
      },
      {
        "code" : "T4a",
        "display" : "T4a"
      },
      {
        "code" : "T4b",
        "display" : "T4b"
      },
      {
        "code" : "T4c",
        "display" : "T4c"
      },
      {
        "code" : "T4d",
        "display" : "T4d"
      },
      {
        "code" : "T4e",
        "display" : "T4e"
      }]
    }]
  }
}

```
