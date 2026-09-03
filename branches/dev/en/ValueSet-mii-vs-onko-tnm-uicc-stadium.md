# MII VS Onkologie TNM UICC Stadium - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie TNM UICC Stadium**

## ValueSet: MII VS Onkologie TNM UICC Stadium 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-03 | *Computable Name*:MII_VS_Onko_TNM_UICC_Stadium |

 
The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten. 

 **References** 

* [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-uicc-stadium",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
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
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-uicc-stadium",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Onko_TNM_UICC_Stadium",
  "title" : "MII VS Onkologie TNM UICC Stadium",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T20:25:33+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "The ValueSet enthält Codes für die TNM-Stadien zur prognostischen Gruppeneinteilung von Patienten.",
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
        "code" : "okk",
        "display" : "Stadium X"
      },
      {
        "code" : "0",
        "display" : "Stadium 0"
      },
      {
        "code" : "0a",
        "display" : "Stadium 0a"
      },
      {
        "code" : "0is",
        "display" : "Stadium 0is"
      },
      {
        "code" : "I",
        "display" : "Stadium I"
      },
      {
        "code" : "IA1",
        "display" : "Stadium IA1"
      },
      {
        "code" : "IA2",
        "display" : "Stadium IA2"
      },
      {
        "code" : "IA3",
        "display" : "Stadium IA3"
      },
      {
        "code" : "IB",
        "display" : "Stadium IB"
      },
      {
        "code" : "IB1",
        "display" : "Stadium IB1"
      },
      {
        "code" : "IB2",
        "display" : "Stadium IB2"
      },
      {
        "code" : "IC",
        "display" : "Stadium IC"
      },
      {
        "code" : "IS",
        "display" : "Stadium IS"
      },
      {
        "code" : "II",
        "display" : "Stadium II"
      },
      {
        "code" : "IIA",
        "display" : "Stadium IIA"
      },
      {
        "code" : "IIA1",
        "display" : "Stadium IIA1"
      },
      {
        "code" : "IIA2",
        "display" : "Stadium IIA2"
      },
      {
        "code" : "IIB",
        "display" : "Stadium IIB"
      },
      {
        "code" : "IIC",
        "display" : "Stadium IIC"
      },
      {
        "code" : "III",
        "display" : "Stadium III"
      },
      {
        "code" : "IIIA",
        "display" : "Stadium IIIA"
      },
      {
        "code" : "IIIA1",
        "display" : "Stadium IIIA1"
      },
      {
        "code" : "IIIA2",
        "display" : "Stadium IIIA2"
      },
      {
        "code" : "IIIB",
        "display" : "Stadium IIIB"
      },
      {
        "code" : "IIIC",
        "display" : "Stadium IIIC"
      },
      {
        "code" : "IIIC1",
        "display" : "Stadium IIIC1"
      },
      {
        "code" : "IIIC2",
        "display" : "Stadium IIIC2"
      },
      {
        "code" : "IV",
        "display" : "Stadium IV"
      },
      {
        "code" : "IVA",
        "display" : "Stadium IVA"
      },
      {
        "code" : "IVB",
        "display" : "Stadium IVB"
      },
      {
        "code" : "IVC",
        "display" : "Stadium IVC"
      }]
    }]
  }
}

```
