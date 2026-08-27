# MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz)**

## Beispiel Bundle: MII EXA Onko TNM Bundle (synthesized stage at Tumorkonferenz)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-tnm-bundle-synthesized",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  "identifier" : {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko",
    "value" : "tnm-bundle-synthesized-2024-001"
  },
  "type" : "transaction",
  "timestamp" : "2024-04-02T10:00:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-tnm-synth-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-tnm-synth-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-tnm-synth-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-tnm-synth-patient</b></p><a name=\"mii-exa-onko-tnm-synth-patient\"> </a><a name=\"hcmii-exa-onko-tnm-synth-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Tobias TNMSynth  Male, DoB: 1962-04-18</p><hr/></div></div>"
      },
      "name" : [{
        "family" : "TNMSynth",
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-tnm-synth-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-tnm-synth-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor|2026.0.3"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-tnm-synth-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-tnm-synth-diagnose</b></p><a name=\"mii-exa-onko-tnm-synth-diagnose\"> </a><a name=\"hcmii-exa-onko-tnm-synth-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a> version: 2026.0.3</p></div><p><b>Condition Asserted Date</b>: 2024-01-11</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C20}\">Bösartige Neubildung des Rektums</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>recordedDate</b>: 2024-01-11</p></div></div>"
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
      "code" : {
        "coding" : [{
          "system" : "http://fhir.de/CodeSystem/bfarm/icd-10-gm",
          "version" : "2024",
          "code" : "C20",
          "display" : "Bösartige Neubildung des Rektums"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "recordedDate" : "2024-01-11"
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung1-t-cT3",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung1-t-cT3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung1-t-cT3</b></p><a name=\"mii-exa-onko-tnm-synth-meldung1-t-cT3\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung1-t-cT3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-t-kategorie.html\">MII PR Onkologie TNM T-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399504009}\">cT category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm T3}, {http://snomed.info/sct 1352966002}\">T3</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "T3",
          "display" : "T3"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1352966002",
          "display" : "Union for International Cancer Control cT3 (qualifier value)"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung1-n-cN2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung1-n-cN2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung1-n-cN2</b></p><a name=\"mii-exa-onko-tnm-synth-meldung1-n-cN2\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung1-n-cN2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-n-kategorie.html\">MII PR Onkologie TNM N-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399534004}\">cN category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm N2}, {http://snomed.info/sct 1353044001}\">N2</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "effectiveDateTime" : "2024-01-11",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "N2",
          "display" : "N2"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1353044001",
          "display" : "Union for International Cancer Control cN2 (qualifier value)"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung1-m-cM0",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-m-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung1-m-cM0\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung1-m-cM0</b></p><a name=\"mii-exa-onko-tnm-synth-meldung1-m-cM0\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung1-m-cM0\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-m-kategorie.html\">MII PR Onkologie TNM M-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399387003}\">cM category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm M0}, {http://snomed.info/sct 1352512001}\">M0</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung1-klassifikation",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung1-klassifikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung1-klassifikation</b></p><a name=\"mii-exa-onko-tnm-synth-meldung1-klassifikation\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung1-klassifikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-klassifikation.html\">MII PR Onkologie TNM-Klassifikation</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399537006}\">Clinical TNM stage grouping</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-tnm-synth-diagnose.html\">Condition Bösartige Neubildung des Rektums</a></p><p><b>effective</b>: 2024-01-11</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm IIIB}\">Stadium IIIB</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung1-t-cT3.html\">Observation cT category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung1-n-cN2.html\">Observation cN category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.html\">Observation cM category (observable entity)</a></li></ul></div></div>"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
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
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-t-cT3"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-n-cN2"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung2-t-pT2",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-t-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung2-t-pT2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung2-t-pT2</b></p><a name=\"mii-exa-onko-tnm-synth-meldung2-t-pT2\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung2-t-pT2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-t-kategorie.html\">MII PR Onkologie TNM T-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 384625004}\">pT category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-03-15</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm T2}, {http://snomed.info/sct 1352545001}\">T2</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "p",
              "display" : "p"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "effectiveDateTime" : "2024-03-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "T2",
          "display" : "T2"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1352545001",
          "display" : "Union for International Cancer Control pT2 (qualifier value)"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung2-n-pN1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-n-kategorie|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung2-n-pN1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung2-n-pN1</b></p><a name=\"mii-exa-onko-tnm-synth-meldung2-n-pN1\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung2-n-pN1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-n-kategorie.html\">MII PR Onkologie TNM N-Kategorie</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 371494008}\">pN category (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>effective</b>: 2024-03-15</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm N1}, {http://snomed.info/sct 1352614009}\">N1</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "extension" : [{
          "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://www.uicc.org/resources/tnm",
              "code" : "p",
              "display" : "p"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "effectiveDateTime" : "2024-03-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "N1",
          "display" : "N1"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "1352614009",
          "display" : "Union for International Cancer Control pN1 (qualifier value)"
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
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-meldung2-klassifikation",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-meldung2-klassifikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-meldung2-klassifikation</b></p><a name=\"mii-exa-onko-tnm-synth-meldung2-klassifikation\"> </a><a name=\"hcmii-exa-onko-tnm-synth-meldung2-klassifikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-klassifikation.html\">MII PR Onkologie TNM-Klassifikation</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399588009}\">Pathologic TNM stage grouping</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-tnm-synth-diagnose.html\">Condition Bösartige Neubildung des Rektums</a></p><p><b>effective</b>: 2024-03-15</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm IIIA}\">Stadium IIIA</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.html\">Observation pT category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.html\">Observation pN category (observable entity)</a></li></ul></div></div>"
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
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
      }],
      "effectiveDateTime" : "2024-03-15",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "IIIA",
          "display" : "Stadium IIIA"
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
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-tnm-synth-klassifikation",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-tnm-synth-klassifikation",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation-synthetisiert|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-tnm-synth-klassifikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-tnm-synth-klassifikation</b></p><a name=\"mii-exa-onko-tnm-synth-klassifikation\"> </a><a name=\"hcmii-exa-onko-tnm-synth-klassifikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tnm-klassifikation-synthetisiert.html\">MII PR Onkologie TNM-Klassifikation (synthetisiert)</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 399703000}\">Integrated TNM category</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-tnm-synth-diagnose.html\">Condition Bösartige Neubildung des Rektums</a></p><p><b>effective</b>: 2024-04-02</p><p><b>value</b>: <span title=\"Codes:{https://www.uicc.org/resources/tnm IIIA}\">Stadium IIIA</span></p><p><b>method</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-version 8}\">8. Auflage</span></p><p><b>hasMember</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung2-t-pT2.html\">Observation pT category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung2-n-pN1.html\">Observation pN category (observable entity)</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung1-m-cM0.html\">Observation cM category (observable entity)</a></li></ul><p><b>derivedFrom</b>: </p><ul><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung1-klassifikation.html\">Observation Clinical TNM stage grouping</a></li><li><a href=\"Observation-mii-exa-onko-tnm-synth-meldung2-klassifikation.html\">Observation Pathologic TNM stage grouping</a></li></ul><h3>Components</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Value[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel tnm-formel}\">TNM-Formel</span></td><td>pT2 pN1 cM0</td></tr></table></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "399703000",
          "display" : "Integrated TNM category"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
      }],
      "effectiveDateTime" : "2024-04-02",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.uicc.org/resources/tnm",
          "code" : "IIIA",
          "display" : "Stadium IIIA"
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
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-t-pT2"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-n-pN1"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-m-cM0"
      }],
      "derivedFrom" : [{
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung1-klassifikation"
      },
      {
        "reference" : "Observation/mii-exa-onko-tnm-synth-meldung2-klassifikation"
      }],
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-tnm-formel",
            "code" : "tnm-formel",
            "display" : "TNM-Formel"
          }]
        },
        "valueString" : "pT2 pN1 cM0"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CarePlan/mii-exa-onko-tnm-synth-tumorkonferenz",
    "resource" : {
      "resourceType" : "CarePlan",
      "id" : "mii-exa-onko-tnm-synth-tumorkonferenz",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorkonferenz|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"CarePlan_mii-exa-onko-tnm-synth-tumorkonferenz\"> </a><p class=\"res-header-id\"><b>Generated Narrative: CarePlan mii-exa-onko-tnm-synth-tumorkonferenz</b></p><a name=\"mii-exa-onko-tnm-synth-tumorkonferenz\"> </a><a name=\"hcmii-exa-onko-tnm-synth-tumorkonferenz\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tumorkonferenz.html\">MII PR Onkologie Tumorkonferenz</a> version: 2026.0.3</p></div><p><b>identifier</b>: TK_synth_2024-04-02</p><p><b>status</b>: Active</p><p><b>intent</b>: Plan</p><p><b>category</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ postop}\">postoperative Tumorkonferenz (Planung der postoperativen Therapie, z. B. zur Frage adjuvante Therapie)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-tnm-synth-patient.html\">Tobias TNMSynth  Male, DoB: 1962-04-18</a></p><p><b>created</b>: 2024-04-02</p><p><b>addresses</b>: <a href=\"Condition-mii-exa-onko-tnm-synth-diagnose.html\">Condition Bösartige Neubildung des Rektums</a></p><p><b>supportingInfo</b>: <a href=\"Observation-mii-exa-onko-tnm-synth-klassifikation.html\">Observation Integrated TNM category</a></p><blockquote><p><b>activity</b></p><h3>Details</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Code</b></td><td><b>Status</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ CH}\">Chemotherapie</span></td><td>Scheduled</td></tr></table></blockquote></div></div>"
      },
      "identifier" : [{
        "value" : "TK_synth_2024-04-02"
      }],
      "status" : "active",
      "intent" : "plan",
      "category" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapieplanung-typ",
          "code" : "postop"
        }]
      }],
      "subject" : {
        "reference" : "Patient/mii-exa-onko-tnm-synth-patient"
      },
      "created" : "2024-04-02",
      "addresses" : [{
        "reference" : "Condition/mii-exa-onko-tnm-synth-diagnose"
      }],
      "supportingInfo" : [{
        "reference" : "Observation/mii-exa-onko-tnm-synth-klassifikation"
      }],
      "activity" : [{
        "detail" : {
          "code" : {
            "coding" : [{
              "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
              "code" : "CH",
              "display" : "Chemotherapie"
            }]
          },
          "status" : "scheduled"
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "CarePlan"
    }
  }]
}

```
