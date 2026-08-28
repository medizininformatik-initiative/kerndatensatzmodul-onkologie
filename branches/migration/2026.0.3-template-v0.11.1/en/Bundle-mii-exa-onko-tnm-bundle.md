# MII EXA Onko TNM Bundle (cT2 cN3 cM0) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onko TNM Bundle (cT2 cN3 cM0)**

## Example Bundle: MII EXA Onko TNM Bundle (cT2 cN3 cM0)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-tnm-bundle",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  "identifier" : {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko",
    "value" : "tnm-bundle-2024-001"
  },
  "type" : "transaction",
  "timestamp" : "2024-01-11T10:00:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-tnm-bundle-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-tnm-bundle-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-tnm-bundle-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-tnm-bundle-patient</b></p><a name=\"mii-exa-onko-tnm-bundle-patient\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</p><hr/></div></div>"
      },
      "name" : [{
        "family" : "TNMBeispiel",
        "given" : ["Tobias"]
      }],
      "gender" : "male",
      "birthDate" : "1962-04-18"
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-tnm-bundle-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-tnm-bundle-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-tnm-bundle-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-tnm-bundle-diagnose</b></p><a name=\"mii-exa-onko-tnm-bundle-diagnose\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a> version: 2026.0.3</p></div><p><b>Condition Asserted Date</b>: 2024-01-11</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 55342001}\">Neoplastic disease</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C20}\">Bösartige Neubildung des Rektums</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-bundle-patient.html\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</a></p><p><b>recordedDate</b>: 2024-01-11</p></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-01-11"
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
      "category" : [{
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "55342001",
          "display" : "Neoplastic disease"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "C20",
          "display" : "Bösartige Neubildung des Rektums"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "recordedDate" : "2024-01-11"
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-bundle-t-kategorie-cT2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-bundle-t-kategorie-cT2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-bundle-t-kategorie-cT2</b></p><a name=\"mii-exa-onko-tnm-bundle-t-kategorie-cT2\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-t-kategorie-cT2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-t-kategorie.html\">MII PR Onkologie TNM T-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399504009}\">cT category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-bundle-patient.html\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm T2}, {http://snomed.info/sct 1352993004}\">T2</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "c",
              "display" : "c"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399504009",
          "display" : "cT category (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "T2",
          "display" : "T2"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1352993004",
          "display" : "Union for International Cancer Control cT2 (qualifier value)"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8",
          "display" : "8. Auflage"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-bundle-n-kategorie-cN3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-bundle-n-kategorie-cN3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-bundle-n-kategorie-cN3</b></p><a name=\"mii-exa-onko-tnm-bundle-n-kategorie-cN3\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-n-kategorie-cN3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-n-kategorie.html\">MII PR Onkologie TNM N-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399534004}\">cN category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-bundle-patient.html\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm N3}, {http://snomed.info/sct 1353045000}\">N3</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "c",
              "display" : "c"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399534004",
          "display" : "cN category (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "N3",
          "display" : "N3"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1353045000",
          "display" : "Union for International Cancer Control cN3 (qualifier value)"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8",
          "display" : "8. Auflage"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-bundle-m-kategorie-cM0",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-bundle-m-kategorie-cM0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-bundle-m-kategorie-cM0</b></p><a name=\"mii-exa-onko-tnm-bundle-m-kategorie-cM0\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-m-kategorie-cM0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-m-kategorie.html\">MII PR Onkologie TNM M-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399387003}\">cM category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-bundle-patient.html\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm M0}, {http://snomed.info/sct 1352512001}\">M0</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "c",
              "display" : "c"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399387003",
          "display" : "cM category (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "M0",
          "display" : "M0"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1352512001",
          "display" : "Union for International Cancer Control cM0 (qualifier value)"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8",
          "display" : "8. Auflage"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0</b></p><a name=\"mii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0\"> </a><a name=\"hcmii-exa-onko-tnm-bundle-klassifikation-cT2cN3cM0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-klassifikation.html\">MII PR Onkologie TNM-Klassifikation</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399537006}\">Clinical TNM stage grouping</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-bundle-patient.html\">Tobias TNMBeispiel  Male, DoB: 1962-04-18</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-tnm-bundle-diagnose.html\">Condition Bösartige Neubildung des Rektums</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm IIIB}\">Stadium IIIB</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-tnm-bundle-t-kategorie-cT2.html\">Observation cT category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-bundle-n-kategorie-cN3.html\">Observation cN category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-bundle-m-kategorie-cM0.html\">Observation cM category (observable entity)</a></li></ul></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399537006",
          "display" : "Clinical TNM stage grouping"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-tnm-bundle-diagnose"
      }],
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "IIIB",
          "display" : "Stadium IIIB"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8",
          "display" : "8. Auflage"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-onko-tnm-bundle-t-kategorie-cT2"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-n-kategorie-cN3"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-bundle-m-kategorie-cM0"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  }]
}

```
