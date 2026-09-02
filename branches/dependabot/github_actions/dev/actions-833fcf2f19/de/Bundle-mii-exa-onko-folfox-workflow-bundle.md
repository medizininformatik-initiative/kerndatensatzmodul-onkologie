# FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie**

## Beispiel Bundle: FOLFOX Workflow Bundle - Komplettes Beispiel von Tumorkonferenz bis Therapie



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-folfox-workflow-bundle",
  "type" : "collection",
  "timestamp" : "2024-03-15T10:00:00Z",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-folfox-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-folfox-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-folfox-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-folfox-patient</b></p><a name=\"mii-exa-onko-folfox-patient\"> </a><a name=\"hcmii-exa-onko-folfox-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</p><hr/></div></div>"
      },
      "identifier" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/sid/patienten",
        "value" : "FOLFOX-2024-001"
      }],
      "name" : [{
        "family" : "Schmidt",
        "given" : ["Hans"]
      }],
      "gender" : "male",
      "birthDate" : "1959-03-15"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-diagnosis",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-folfox-encounter-diagnosis",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-folfox-encounter-diagnosis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-folfox-encounter-diagnosis</b></p><a name=\"mii-exa-onko-folfox-encounter-diagnosis\"> </a><a name=\"hcmii-exa-onko-folfox-encounter-diagnosis\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-surgery",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-folfox-encounter-surgery",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-folfox-encounter-surgery\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-folfox-encounter-surgery</b></p><a name=\"mii-exa-onko-folfox-encounter-surgery\"> </a><a name=\"hcmii-exa-onko-folfox-encounter-surgery\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-folfox-encounter-chemo",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-folfox-encounter-chemo",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-folfox-encounter-chemo\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-folfox-encounter-chemo</b></p><a name=\"mii-exa-onko-folfox-encounter-chemo\"> </a><a name=\"hcmii-exa-onko-folfox-encounter-chemo\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-AMB\">ActCode: AMB</a> (ambulatory)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "AMB",
        "display" : "ambulatory"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-colorectal-cancer-diagnosis",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-colorectal-cancer-diagnosis",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-colorectal-cancer-diagnosis\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-colorectal-cancer-diagnosis</b></p><a name=\"mii-exa-onko-colorectal-cancer-diagnosis\"> </a><a name=\"hcmii-exa-onko-colorectal-cancer-diagnosis\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a></p></div><p><b>Condition Asserted Date</b>: 2024-01-15</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category encounter-diagnosis}\">Neoplastic disease</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C18.7}\">Bösartige Neubildung: Colon sigmoideum</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-diagnosis.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB)</a></p><p><b>onset</b>: 2024-01-15</p><p><b>recordedDate</b>: 2024-01-15</p><p><b>note</b>: </p><blockquote><div><p>Adenokarzinom des Colon sigmoideum, Stadium III (T3N1M0)</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/condition-assertedDate",
        "valueDateTime" : "2024-01-15"
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
          "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
          "code" : "encounter-diagnosis",
          "display" : "Neoplastic disease"
        }]
      }],
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "C18.7",
          "display" : "Bösartige Neubildung: Colon sigmoideum"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-diagnosis"
      },
      "onsetDateTime" : "2024-01-15",
      "recordedDate" : "2024-01-15",
      "note" : [{
        "text" : "Adenokarzinom des Colon sigmoideum, Stadium III (T3N1M0)"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-t",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-colorectal-tnm-t",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-colorectal-tnm-t\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-colorectal-tnm-t</b></p><a name=\"mii-exa-onko-colorectal-tnm-t\"> </a><a name=\"hcmii-exa-onko-colorectal-tnm-t\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-t-kategorie.html\">MII PR Onkologie TNM T-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 384625004}\">pT category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>effective</b>: 2024-02-20</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm T3}\">T3</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "p"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "384625004",
          "display" : "pT category (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "effectiveDateTime" : "2024-02-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "T3"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-n",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-colorectal-tnm-n",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-colorectal-tnm-n\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-colorectal-tnm-n</b></p><a name=\"mii-exa-onko-colorectal-tnm-n\"> </a><a name=\"hcmii-exa-onko-colorectal-tnm-n\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-n-kategorie.html\">MII PR Onkologie TNM N-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371494008}\">pN category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>effective</b>: 2024-02-20</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm N1}\">N1</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "p"
            }]
          }
        }],
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "371494008",
          "display" : "pN category (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "effectiveDateTime" : "2024-02-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "N1"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm-m",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-colorectal-tnm-m",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-colorectal-tnm-m\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-colorectal-tnm-m</b></p><a name=\"mii-exa-onko-colorectal-tnm-m\"> </a><a name=\"hcmii-exa-onko-colorectal-tnm-m\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-m-kategorie.html\">MII PR Onkologie TNM M-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399387003}\">cM category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>effective</b>: 2024-02-20</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm M0}\">M0</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "c"
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
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "effectiveDateTime" : "2024-02-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "M0"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8"
        }]
      }
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-colorectal-tnm",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-colorectal-tnm",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-colorectal-tnm\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-colorectal-tnm</b></p><a name=\"mii-exa-onko-colorectal-tnm\"> </a><a name=\"hcmii-exa-onko-colorectal-tnm\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-klassifikation.html\">MII PR Onkologie TNM-Klassifikation</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399588009}\">Pathologic TNM stage grouping</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>effective</b>: 2024-02-20</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm IIIB}\">Stadium IIIB</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-colorectal-tnm-t.html\">Observation pT category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-colorectal-tnm-n.html\">Observation pN category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-colorectal-tnm-m.html\">Observation cM category (observable entity)</a></li></ul></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399588009",
          "display" : "Pathologic TNM stage grouping"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "effectiveDateTime" : "2024-02-20",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "IIIB"
        }]
      },
      "method" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version",
          "code" : "8"
        }]
      },
      "hasMember" : [{
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-t"
      },
      {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-n"
      },
      {
        "reference" : "Observation/mii-exa-onko-colorectal-tnm-m"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-tumorkonferenz-folfox",
    "resource" : {
      "resourceType" : "CarePlan",
      "id" : "mii-exa-onko-tumorkonferenz-folfox",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"CarePlan_mii-exa-onko-tumorkonferenz-folfox\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CarePlan mii-exa-onko-tumorkonferenz-folfox</b></p><a name=\"mii-exa-onko-tumorkonferenz-folfox\"> </a><a name=\"hcmii-exa-onko-tumorkonferenz-folfox\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tumorkonferenz.html\">MII PR Onkologie Tumorkonferenz</a> version: 2026.0.3</p></div><p><b>identifier</b>: Tumorkonferenz_FOLFOX_001</p><p><b>status</b>: Active</p><p><b>intent</b>: Plan</p><p><b>category</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ praeth}\">prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>created</b>: 2024-03-10</p><p><b>addresses</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><h3>Activities</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Progress</b></td><td><b>Reference</b></td></tr><tr><td style=\"display: none\">*</td><td><blockquote><div><p>Tumor board recommends FOLFOX chemotherapy protocol for stage III colon cancer, adjuvant setting</p>\n</div></blockquote></td><td><a href=\"RequestGroup-mii-exa-onko-folfox-requestgroup.html\">RequestGroup Chemotherapie</a></td></tr></table></div></div>"
      },
      "identifier" : [{
        "value" : "Tumorkonferenz_FOLFOX_001"
      }],
      "status" : "active",
      "intent" : "plan",
      "category" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
          "code" : "praeth",
          "display" : "prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie)"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "created" : "2024-03-10",
      "addresses" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "activity" : [{
        "progress" : [{
          "text" : "Tumor board recommends FOLFOX chemotherapy protocol for stage III colon cancer, adjuvant setting"
        }],
        "reference" : {
          "reference" : "RequestGroup/mii-exa-onko-folfox-requestgroup"
        }
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/RequestGroup/mii-exa-onko-folfox-requestgroup",
    "resource" : {
      "resourceType" : "RequestGroup",
      "id" : "mii-exa-onko-folfox-requestgroup",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-kombinationstherapie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"RequestGroup_mii-exa-onko-folfox-requestgroup\"> </a><p class=\"res-header-id\"><b>Generated Narrative: RequestGroup mii-exa-onko-folfox-requestgroup</b></p><a name=\"mii-exa-onko-folfox-requestgroup\"> </a><a name=\"hcmii-exa-onko-folfox-requestgroup\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html\">MII PR Onkologie Therapieempfehlung Kombinationstherapie</a> version: 2026.0.3</p></div><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CH}\">Chemotherapie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>authoredOn</b>: 2024-03-10</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><blockquote><p><b>action</b></p><p><b>title</b>: FOLFOX4 Protocol</p><p><b>description</b>: FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin</p><p><b>code</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle FOLFOX4}\">FOLFOX4</span></p><h3>Actions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Title</b></td><td><b>Description</b></td><td><b>Resource</b></td></tr><tr><td style=\"display: none\">*</td><td>Fluorouracil (5-FU)</td><td>5-Fluorouracil - pyrimidine analog, antineoplastic</td><td><a href=\"MedicationRequest-mii-exa-onko-folfox-5fu-request.html\">MedicationRequest: status = active; intent = proposal; medication[x] = Fluorouracil; authoredOn = 2024-03-10</a></td></tr><tr><td style=\"display: none\">*</td><td>Folinsäure (Leucovorin)</td><td>Folinic acid - enhances 5-FU efficacy</td><td><a href=\"MedicationRequest-mii-exa-onko-folfox-leucovorin-request.html\">MedicationRequest: status = active; intent = proposal; medication[x] = Calciumfolinat; authoredOn = 2024-03-10</a></td></tr><tr><td style=\"display: none\">*</td><td>Oxaliplatin</td><td>Platinum-based chemotherapy agent</td><td><a href=\"MedicationRequest-mii-exa-onko-folfox-oxaliplatin-request.html\">MedicationRequest: status = active; intent = proposal; medication[x] = Oxaliplatin; authoredOn = 2024-03-10</a></td></tr></table></blockquote></div></div>"
      },
      "status" : "active",
      "intent" : "proposal",
      "code" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
          "code" : "CH",
          "display" : "Chemotherapie"
        }],
        "text" : "Chemotherapie"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "authoredOn" : "2024-03-10",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "action" : [{
        "title" : "FOLFOX4 Protocol",
        "description" : "FOLFOX4 chemotherapy protocol: Fluorouracil + Folinsäure + Oxaliplatin",
        "code" : [{
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
            "code" : "FOLFOX4",
            "display" : "FOLFOX4"
          }]
        }],
        "action" : [{
          "title" : "Fluorouracil (5-FU)",
          "description" : "5-Fluorouracil - pyrimidine analog, antineoplastic",
          "resource" : {
            "reference" : "MedicationRequest/mii-exa-onko-folfox-5fu-request"
          }
        },
        {
          "title" : "Folinsäure (Leucovorin)",
          "description" : "Folinic acid - enhances 5-FU efficacy",
          "resource" : {
            "reference" : "MedicationRequest/mii-exa-onko-folfox-leucovorin-request"
          }
        },
        {
          "title" : "Oxaliplatin",
          "description" : "Platinum-based chemotherapy agent",
          "resource" : {
            "reference" : "MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-5fu-request",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-onko-folfox-5fu-request",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationRequest_mii-exa-onko-folfox-5fu-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-onko-folfox-5fu-request</b></p><a name=\"mii-exa-onko-folfox-5fu-request\"> </a><a name=\"hcmii-exa-onko-folfox-5fu-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html\">MII PR Onkologie Therapieempfehlung Medikation</a> version: 2026.0.3</p></div><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01BC02}\">5-Fluorouracil (5-FU)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>authoredOn</b>: 2024-03-10</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p></div></div>"
      },
      "status" : "active",
      "intent" : "proposal",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01BC02",
          "display" : "Fluorouracil"
        }],
        "text" : "5-Fluorouracil (5-FU)"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "authoredOn" : "2024-03-10",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-leucovorin-request",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-onko-folfox-leucovorin-request",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationRequest_mii-exa-onko-folfox-leucovorin-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-onko-folfox-leucovorin-request</b></p><a name=\"mii-exa-onko-folfox-leucovorin-request\"> </a><a name=\"hcmii-exa-onko-folfox-leucovorin-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html\">MII PR Onkologie Therapieempfehlung Medikation</a> version: 2026.0.3</p></div><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc V03AF03}\">Leucovorin (Folinsäure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>authoredOn</b>: 2024-03-10</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p></div></div>"
      },
      "status" : "active",
      "intent" : "proposal",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "V03AF03",
          "display" : "Calciumfolinat"
        }],
        "text" : "Leucovorin (Folinsäure)"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "authoredOn" : "2024-03-10",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationRequest/mii-exa-onko-folfox-oxaliplatin-request",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "mii-exa-onko-folfox-oxaliplatin-request",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-therapieempfehlung-medikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationRequest_mii-exa-onko-folfox-oxaliplatin-request\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest mii-exa-onko-folfox-oxaliplatin-request</b></p><a name=\"mii-exa-onko-folfox-oxaliplatin-request\"> </a><a name=\"hcmii-exa-onko-folfox-oxaliplatin-request\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-therapieempfehlung-medikation.html\">MII PR Onkologie Therapieempfehlung Medikation</a> version: 2026.0.3</p></div><p><b>status</b>: Active</p><p><b>intent</b>: Proposal</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA03}\">Oxaliplatin</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>authoredOn</b>: 2024-03-10</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p></div></div>"
      },
      "status" : "active",
      "intent" : "proposal",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA03",
          "display" : "Oxaliplatin"
        }],
        "text" : "Oxaliplatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "authoredOn" : "2024-03-10",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-sigmoid-resection",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-sigmoid-resection\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-sigmoid-resection</b></p><a name=\"mii-exa-onko-sigmoid-resection\"> </a><a name=\"hcmii-exa-onko-sigmoid-resection\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-operation.html\">MII PR Onkologie Operation</a></p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-484.5}\">Laparoskopische Sigmaresektion mit TME und Lymphknotendissektion</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-surgery.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-02-15</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>outcome</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus R0}\">Kein Residualtumor</span></p><p><b>note</b>: </p><blockquote><div><p>Laparoscopic sigmoid resection with TME and lymphadenectomy. No intraoperative complications. Tumor completely resected with clear margins (R0). 18 lymph nodes removed, 3 positive. Surgery performed in 3 components: resection, anastomosis, and lymph node dissection.</p>\n</div></blockquote></div></div>"
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
          "code" : "5-484.5",
          "display" : "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion"
        }],
        "text" : "Laparoskopische Sigmaresektion mit TME und Lymphknotendissektion"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
      },
      "performedDateTime" : "2024-02-15",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "outcome" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
          "code" : "R0",
          "display" : "Kein Residualtumor"
        }]
      },
      "note" : [{
        "text" : "Laparoscopic sigmoid resection with TME and lymphadenectomy. No intraoperative complications. Tumor completely resected with clear margins (R0). 18 lymph nodes removed, 3 positive. Surgery performed in 3 components: resection, anastomosis, and lymph node dissection."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-sigmoid-resection-part1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-sigmoid-resection-part1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-sigmoid-resection-part1</b></p><a name=\"mii-exa-onko-sigmoid-resection-part1\"> </a><a name=\"hcmii-exa-onko-sigmoid-resection-part1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-operation.html\">MII PR Onkologie Operation</a></p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-sigmoid-resection.html\">Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-484.5}\">Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-surgery.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-02-15</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>note</b>: </p><blockquote><div><p>Sigmoid colon resected including tumor. End-to-end anastomosis created.</p>\n</div></blockquote></div></div>"
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
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection"
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
          "code" : "5-484.5",
          "display" : "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
      },
      "performedDateTime" : "2024-02-15",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "note" : [{
        "text" : "Sigmoid colon resected including tumor. End-to-end anastomosis created."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part2",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-sigmoid-resection-part2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-sigmoid-resection-part2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-sigmoid-resection-part2</b></p><a name=\"mii-exa-onko-sigmoid-resection-part2\"> </a><a name=\"hcmii-exa-onko-sigmoid-resection-part2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-operation.html\">MII PR Onkologie Operation</a></p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-sigmoid-resection.html\">Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-407.0}\">Radikale (systematische) Lymphadenektomie im Rahmen einer anderen Operation: Axillär</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-surgery.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-02-15</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>note</b>: </p><blockquote><div><p>Regional lymph node dissection performed. 18 lymph nodes removed from mesenteric and para-aortic regions.</p>\n</div></blockquote></div></div>"
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
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection"
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
          "code" : "5-407.0",
          "display" : "Radikale (systematische) Lymphadenektomie im Rahmen einer anderen Operation: Axillär"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
      },
      "performedDateTime" : "2024-02-15",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "note" : [{
        "text" : "Regional lymph node dissection performed. 18 lymph nodes removed from mesenteric and para-aortic regions."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-sigmoid-resection-part3",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-sigmoid-resection-part3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-operation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-sigmoid-resection-part3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-sigmoid-resection-part3</b></p><a name=\"mii-exa-onko-sigmoid-resection-part3\"> </a><a name=\"hcmii-exa-onko-sigmoid-resection-part3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-operation.html\">MII PR Onkologie Operation</a></p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-sigmoid-resection.html\">Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-986.x}\">Minimalinvasive Technik: Sonstige</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-surgery.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-02-15</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>note</b>: </p><blockquote><div><p>Four laparoscopic ports placed for minimally invasive approach.</p>\n</div></blockquote></div></div>"
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
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-sigmoid-resection"
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
          "code" : "5-986.x",
          "display" : "Minimalinvasive Technik: Sonstige"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-surgery"
      },
      "performedDateTime" : "2024-02-15",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "note" : [{
        "text" : "Four laparoscopic ports placed for minimally invasive approach."
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-folfox-procedure",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-folfox-procedure",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-folfox-procedure\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-folfox-procedure</b></p><a name=\"mii-exa-onko-folfox-procedure\"> </a><a name=\"hcmii-exa-onko-folfox-procedure\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-systemische-therapie.html\">MII PR Onkologie Systemische Therapie</a></p></div><p><b>MII EX Onko Systemische Therapie Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">Kurativ</span></p><p><b>MII EX Onko Systemische Therapie Stellung zur OP</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop A}\">Adjuvant</span></p><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-onko-tumorkonferenz-folfox.html\">CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10</a></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 277132007}\">Therapeutic procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 8-542}, {https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art CH}\">Nicht komplexe Chemotherapie</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-folfox-encounter-chemo.html\">Encounter: status = finished; class = ambulatory (ActCode#AMB)</a></p><p><b>performed</b>: 2024-03-20 --&gt; 2024-09-15</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>outcome</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund E}\">Reguläres Ende</span></p><p><b>note</b>: </p><blockquote><div><p>Patient received 12 cycles of adjuvant FOLFOX4 chemotherapy for stage III colon cancer. Treatment completed without major complications.</p>\n</div></blockquote><p><b>usedCode</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle FOLFOX4}\">FOLFOX4</span></p></div></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K",
            "display" : "Kurativ"
          }]
        }
      },
      {
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-stellungzurop",
            "code" : "A",
            "display" : "Adjuvant"
          }]
        }
      }],
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
      }],
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "277132007",
          "display" : "Therapeutic procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/ops",
          "version" : "2024",
          "code" : "8-542",
          "display" : "Nicht komplexe Chemotherapie"
        },
        {
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-art",
          "code" : "CH",
          "display" : "Chemotherapie"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-folfox-encounter-chemo"
      },
      "performedPeriod" : {
        "start" : "2024-03-20",
        "end" : "2024-09-15"
      },
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "outcome" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-ende-grund",
          "code" : "E",
          "display" : "Reguläres Ende"
        }]
      },
      "note" : [{
        "text" : "Patient received 12 cycles of adjuvant FOLFOX4 chemotherapy for stage III colon cancer. Treatment completed without major complications."
      }],
      "usedCode" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
          "code" : "FOLFOX4",
          "display" : "FOLFOX4"
        }]
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-5fu-statement",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-onko-folfox-5fu-statement",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationStatement_mii-exa-onko-folfox-5fu-statement\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-onko-folfox-5fu-statement</b></p><a name=\"mii-exa-onko-folfox-5fu-statement\"> </a><a name=\"hcmii-exa-onko-folfox-5fu-statement\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-onko-tumorkonferenz-folfox.html\">CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10</a></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-folfox-procedure.html\">Procedure Nicht komplexe Chemotherapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01BC02}\">5-Fluorouracil (5-FU)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>effective</b>: 2024-03-20 --&gt; 2024-09-15</p><p><b>note</b>: </p><blockquote><div><p>FOLFOX4</p>\n</div></blockquote></div></div>"
      },
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
      }],
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-folfox-procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01BC02",
          "display" : "Fluorouracil"
        }],
        "text" : "5-Fluorouracil (5-FU)"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "effectivePeriod" : {
        "start" : "2024-03-20",
        "end" : "2024-09-15"
      },
      "note" : [{
        "text" : "FOLFOX4"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-leucovorin-statement",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-onko-folfox-leucovorin-statement",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationStatement_mii-exa-onko-folfox-leucovorin-statement\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-onko-folfox-leucovorin-statement</b></p><a name=\"mii-exa-onko-folfox-leucovorin-statement\"> </a><a name=\"hcmii-exa-onko-folfox-leucovorin-statement\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-onko-tumorkonferenz-folfox.html\">CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10</a></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-folfox-procedure.html\">Procedure Nicht komplexe Chemotherapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc V03AF03}\">Leucovorin (Folinsäure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>effective</b>: 2024-03-20 --&gt; 2024-09-15</p><p><b>note</b>: </p><blockquote><div><p>FOLFOX4</p>\n</div></blockquote></div></div>"
      },
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
      }],
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-folfox-procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "V03AF03",
          "display" : "Calciumfolinat"
        }],
        "text" : "Leucovorin (Folinsäure)"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "effectivePeriod" : {
        "start" : "2024-03-20",
        "end" : "2024-09-15"
      },
      "note" : [{
        "text" : "FOLFOX4"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/MedicationStatement/mii-exa-onko-folfox-oxaliplatin-statement",
    "resource" : {
      "resourceType" : "MedicationStatement",
      "id" : "mii-exa-onko-folfox-oxaliplatin-statement",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-systemische-therapie-medikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"MedicationStatement_mii-exa-onko-folfox-oxaliplatin-statement\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement mii-exa-onko-folfox-oxaliplatin-statement</b></p><a name=\"mii-exa-onko-folfox-oxaliplatin-statement\"> </a><a name=\"hcmii-exa-onko-folfox-oxaliplatin-statement\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html\">MII PR Onkologie Systemische Therapie Medikation</a></p></div><p><b>basedOn</b>: <a href=\"CarePlan-mii-exa-onko-tumorkonferenz-folfox.html\">CarePlan: identifier = Tumorkonferenz_FOLFOX_001; status = active; intent = plan; category = prätherapeutische Tumorkonferenz (Festlegung der Therapiestrategie); created = 2024-03-10</a></p><p><b>partOf</b>: <a href=\"Procedure-mii-exa-onko-folfox-procedure.html\">Procedure Nicht komplexe Chemotherapie</a></p><p><b>status</b>: Completed</p><p><b>medication</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/atc L01XA03}\">Oxaliplatin</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>effective</b>: 2024-03-20 --&gt; 2024-09-15</p><p><b>note</b>: </p><blockquote><div><p>FOLFOX4</p>\n</div></blockquote></div></div>"
      },
      "basedOn" : [{
        "reference" : "CarePlan/mii-exa-onko-tumorkonferenz-folfox"
      }],
      "partOf" : [{
        "reference" : "Procedure/mii-exa-onko-folfox-procedure"
      }],
      "status" : "completed",
      "medicationCodeableConcept" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/atc",
          "code" : "L01XA03",
          "display" : "Oxaliplatin"
        }],
        "text" : "Oxaliplatin"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "effectivePeriod" : {
        "start" : "2024-03-20",
        "end" : "2024-09-15"
      },
      "note" : [{
        "text" : "FOLFOX4"
      }]
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-folfox-verlauf-6months",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-folfox-verlauf-6months",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-verlauf"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-folfox-verlauf-6months\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-folfox-verlauf-6months</b></p><a name=\"mii-exa-onko-folfox-verlauf-6months\"> </a><a name=\"hcmii-exa-onko-folfox-verlauf-6months\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-verlauf.html\">MII PR Onkologie Verlauf</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 396432002}\">Status of regression of tumor (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-folfox-patient.html\">Hans Schmidt  Male, DoB: 1959-03-15 ( https://www.medizininformatik-initiative.de/fhir/sid/patienten#FOLFOX-2024-001)</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-colorectal-cancer-diagnosis.html\">Condition Bösartige Neubildung: Colon sigmoideum</a></p><p><b>effective</b>: 2025-03-15</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung V}\">Vollremission (complete remission, CR)</span></p><p><b>note</b>: </p><blockquote><div><p>Patient completed 12 cycles of adjuvant FOLFOX4. CT scan and colonoscopy show no evidence of recurrence. CEA level normal (2.1 ng/mL). Patient is disease-free at 6-month follow-up. Plan: Continue surveillance with CEA and imaging every 3-6 months.</p>\n</div></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 445200009}\">Status of residual neoplasm (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor K}\">Kein Tumor nachweisbar</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399656008}\">Presence of metastatic neoplasm in regional lymph node (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten K}\">kein Lymphknotenbefall nachweisbar</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399608002}\">Status of distant metastasis (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen K}\">Keine Fernmetastasen nachweisbar</span></p></blockquote></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "396432002",
          "display" : "Status of regression of tumor (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-folfox-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-colorectal-cancer-diagnosis"
      }],
      "effectiveDateTime" : "2025-03-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
          "code" : "V",
          "display" : "Vollremission (complete remission, CR)"
        }]
      },
      "note" : [{
        "text" : "Patient completed 12 cycles of adjuvant FOLFOX4. CT scan and colonoscopy show no evidence of recurrence. CEA level normal (2.1 ng/mL). Patient is disease-free at 6-month follow-up. Plan: Continue surveillance with CEA and imaging every 3-6 months."
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "445200009",
            "display" : "Status of residual neoplasm (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor",
            "code" : "K",
            "display" : "Kein Tumor nachweisbar"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399656008",
            "display" : "Presence of metastatic neoplasm in regional lymph node (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-lymphknoten",
            "code" : "K",
            "display" : "kein Lymphknotenbefall nachweisbar"
          }]
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "399608002",
            "display" : "Status of distant metastasis (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
            "code" : "K",
            "display" : "Keine Fernmetastasen nachweisbar"
          }]
        }
      }]
    }
  }]
}

```
