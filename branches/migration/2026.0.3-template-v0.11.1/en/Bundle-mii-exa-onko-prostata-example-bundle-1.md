# MII EXA Onko Prostata Bundle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko Prostata Bundle**

## Example Bundle: MII EXA Onko Prostata Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-prostata-example-bundle-1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  "identifier" : {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko",
    "value" : "prostata-example-bundle-2024-001"
  },
  "type" : "transaction",
  "timestamp" : "2024-03-25T10:00:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-prostata-bundle-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-prostata-bundle-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-prostata-bundle-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-prostata-bundle-patient</b></p><a name=\"mii-exa-onko-prostata-bundle-patient\"> </a><a name=\"hcmii-exa-onko-prostata-bundle-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Peter ProstataCa  (no stated gender), DoB Unknown</p><hr/></div></div>"
      },
      "name" : [{
        "family" : "ProstataCa",
        "given" : ["Peter"]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-prostata-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-prostata-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-prostata-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-prostata-diagnose</b></p><a name=\"mii-exa-onko-prostata-diagnose\"> </a><a name=\"hcmii-exa-onko-prostata-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a> version: 2026.0.3</p></div><p><b>Condition Asserted Date</b>: 2020-03-07</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C61}\">Bösartige Neubildung der Prostata</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>recordedDate</b>: 2024-01-02</p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2020-03-07"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "C61",
          "display" : "Bösartige Neubildung der Prostata"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "recordedDate" : "2024-01-02"
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-prostata-bundle-encounter",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-prostata-bundle-encounter",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-prostata-bundle-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-prostata-bundle-encounter</b></p><a name=\"mii-exa-onko-prostata-bundle-encounter\"> </a><a name=\"hcmii-exa-onko-prostata-bundle-encounter\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-psa-diagnose-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-psa-diagnose-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-psa|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-psa-diagnose-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-psa-diagnose-1</b></p><a name=\"mii-exa-onko-prostata-psa-diagnose-1\"> </a><a name=\"hcmii-exa-onko-prostata-psa-diagnose-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-psa.html\">MII PR Onkologie PSA-Wert</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2857-1}\">Prostate specific Ag [Mass/volume] in Serum or Plasma</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: 12 ng/ml</p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "2857-1",
          "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueQuantity" : {
        "value" : 12,
        "unit" : "ng/ml"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-anzahl-stanzen-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-anzahl-stanzen-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-stanzen|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-anzahl-stanzen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-anzahl-stanzen-1</b></p><a name=\"mii-exa-onko-prostata-anzahl-stanzen-1\"> </a><a name=\"hcmii-exa-onko-prostata-anzahl-stanzen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html\">MII PR Onkologie Prostata Anzahl Stanzen</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44652-6}\">Total number of cores in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: 12</p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44652-6",
          "display" : "Total number of cores in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueInteger" : 12
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-anzahl-positiver-stanzen-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-anzahl-positiver-stanzen-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-anzahl-positive-stanzen|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-anzahl-positiver-stanzen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-anzahl-positiver-stanzen-1</b></p><a name=\"mii-exa-onko-prostata-anzahl-positiver-stanzen-1\"> </a><a name=\"hcmii-exa-onko-prostata-anzahl-positiver-stanzen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html\">MII PR Onkologie Prostata Anzahl positiver Stanzen</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44651-8}\">Tissue cores.positive.carcinoma in Tissue core</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: 8</p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44651-8",
          "display" : "Tissue cores.positive.carcinoma in Tissue core"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueInteger" : 8
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-ca-befall-stanze-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-ca-befall-stanze-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-ca-befall-stanze|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-ca-befall-stanze-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-ca-befall-stanze-1</b></p><a name=\"mii-exa-onko-prostata-ca-befall-stanze-1\"> </a><a name=\"hcmii-exa-onko-prostata-ca-befall-stanze-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.html\">MII PR Onkologie Ca-Befall Stanze</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 44654-2}\">Tissue involved by tumor in Prostate tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: 80 %</p><p><b>specimen</b>: <a href=\"Specimen-mii-exa-onko-prostata-specimen-stanze.html\">Specimen: accessionIdentifier = P-2024-000812</a></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "44654-2",
          "display" : "Tissue involved by tumor in Prostate tumor"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueQuantity" : {
        "value" : 80,
        "unit" : "%"
      },
      "specimen" : {
        "reference" : "Specimen/mii-exa-onko-prostata-specimen-stanze"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-grade-group-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-gleason-pattern-grade-group-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-grade-group|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-gleason-pattern-grade-group-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-gleason-pattern-grade-group-1</b></p><a name=\"mii-exa-onko-prostata-gleason-pattern-grade-group-1\"> </a><a name=\"hcmii-exa-onko-prostata-gleason-pattern-grade-group-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html\">MII PR Onkologie Prostata Gleason Grade Group</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1812491000004107}, {http://loinc.org 94734-1}\">Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1279714001}\">International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)</span></p><p><b>derivedFrom</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-prostata-gleason-pattern-primary-1.html\">Observation Primary Gleason pattern (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-prostata-gleason-pattern-secondary-1.html\">Observation Secondary Gleason pattern (observable entity)</a></li></ul></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1812491000004107",
          "display" : "Histologic grade of primary malignant neoplasm of prostate by International Society of Urological Pathology technique (observable entity)"
        },
        {
          "system" : "http://loinc.org",
          "code" : "94734-1",
          "display" : "Prostate cancer grade group [Score] in Prostate tumor Qualitative"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1279714001",
          "display" : "International Society of Urological Pathology grade group 2 (Gleason score 3 + 4 = 7) (qualifier value)"
        }]
      },
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-primary-1"
      },
      {
        "reference" : "Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-primary-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-gleason-pattern-primary-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-gleason-pattern-primary-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-gleason-pattern-primary-1</b></p><a name=\"mii-exa-onko-prostata-gleason-pattern-primary-1\"> </a><a name=\"hcmii-exa-onko-prostata-gleason-pattern-primary-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html\">MII PR Onkologie Prostata Gleason Pattern</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 384994009}, {http://loinc.org 44641-9}\">Primary Gleason pattern (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369772003}\">Gleason Pattern 3</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384994009",
          "display" : "Primary Gleason pattern (observable entity)"
        },
        {
          "system" : "http://loinc.org",
          "code" : "44641-9",
          "display" : "Gleason pattern.primary in Prostate tumor"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369772003",
          "display" : "Gleason Pattern 3"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-gleason-pattern-secondary-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-gleason-pattern-secondary-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-gleason-patterns|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-gleason-pattern-secondary-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-gleason-pattern-secondary-1</b></p><a name=\"mii-exa-onko-prostata-gleason-pattern-secondary-1\"> </a><a name=\"hcmii-exa-onko-prostata-gleason-pattern-secondary-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-gleason-patterns.html\">MII PR Onkologie Prostata Gleason Pattern</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 384995005}, {http://loinc.org 44642-7}\">Secondary Gleason pattern (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p><p><b>effective</b>: 2024-01-02</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 369773008}\">Gleason Pattern 4</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384995005",
          "display" : "Secondary Gleason pattern (observable entity)"
        },
        {
          "system" : "http://loinc.org",
          "code" : "44642-7",
          "display" : "Gleason pattern.secondary in Prostate tumor"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "369773008",
          "display" : "Gleason Pattern 4"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-prostata-surgical-complication-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-prostata-surgical-complication-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-prostate-clavien-dindo|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-prostata-surgical-complication-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-prostata-surgical-complication-1</b></p><a name=\"mii-exa-onko-prostata-surgical-complication-1\"> </a><a name=\"hcmii-exa-onko-prostata-surgical-complication-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html\">MII PR Onkologie Clavien Dindo</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 789279006}\">Clavien-Dindo classification grade (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: </p><ul><li><a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></li><li><a href=\"Procedure-mii-exa-onko-prostata-surgery-1.html\">Procedure Radikale Prostatovesikulektomie</a></li></ul><p><b>effective</b>: 2024-06-24</p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 1367522003}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications J}\">Clavien-Dindo classification grade IIIa (finding)</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "789279006",
          "display" : "Clavien-Dindo classification grade (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      },
      {
        "reference" : "Procedure/mii-exa-onko-prostata-surgery-1"
      }],
      "effectiveDateTime" : "2024-06-24",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "1367522003",
          "display" : "Clavien-Dindo classification grade IIIa (finding)"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-prostata-postsurgical-complications",
          "code" : "J",
          "display" : "Ja"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-prostata-surgery-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-prostata-surgery-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation|2026.0.3"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-prostata-surgery-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-prostata-surgery-1</b></p><a name=\"mii-exa-onko-prostata-surgery-1\"> </a><a name=\"hcmii-exa-onko-prostata-surgery-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-operation.html\">MII PR Onkologie Operation</a> version: 2026.0.3</p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-604}\">Radikale Prostatovesikulektomie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-prostata-bundle-patient.html\">Peter ProstataCa  (no stated gender), DoB Unknown</a></p><p><b>performed</b>: 2024-06-24</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-prostata-diagnose.html\">Condition Bösartige Neubildung der Prostata</a></p></div></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K",
            "display" : "Kurativ"
          }]
        }
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387713003",
          "display" : "Surgical procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "5-604",
          "display" : "Radikale Prostatovesikulektomie"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-prostata-bundle-patient"
      },
      "performedDateTime" : "2024-06-24",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-prostata-diagnose"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  }]
}

```
