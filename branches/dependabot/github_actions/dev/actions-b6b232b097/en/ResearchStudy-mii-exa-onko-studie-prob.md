# Studie PRO-B - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Studie PRO-B**

## Example ResearchStudy: Studie PRO-B

-------

**English**

-------

**identifier**: `https://drks.de`/DRKS00024015, `http://innovationsfonds.g-ba.de`/01NVF19013

**title**: PRO-B: Evaluating the effect of an alarm-based patient-reported outcome monitoring compared with usual care in metastatic breast cancer patients

**status**: Active

**primaryPurposeType**: Health Services Research

**focus**: Monitoring of patient with cancer (regime/therapy)

**condition**: Carcinoma of breast



## Resource Content

```json
{
  "resourceType" : "ResearchStudy",
  "id" : "mii-exa-onko-studie-prob",
  "identifier" : [{
    "system" : "https://drks.de",
    "value" : "DRKS00024015"
  },
  {
    "system" : "http://innovationsfonds.g-ba.de",
    "value" : "01NVF19013"
  }],
  "title" : "PRO-B: Evaluating the effect of an alarm-based patient-reported outcome monitoring compared with usual care in metastatic breast cancer patients",
  "status" : "active",
  "primaryPurposeType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/research-study-prim-purp-type",
      "code" : "health-services-research",
      "display" : "Health Services Research"
    }]
  },
  "focus" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "399427004",
      "display" : "Monitoring of patient with cancer (regime/therapy)"
    }]
  }],
  "condition" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "254838004",
      "display" : "Carcinoma of breast"
    }]
  }]
}

```
