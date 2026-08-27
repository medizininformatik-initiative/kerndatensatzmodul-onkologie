# MII EXA Onko Mamma Bundle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onko Mamma Bundle**

## Beispiel Bundle: MII EXA Onko Mamma Bundle

### Inhalt

Das **Mamma Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Mamma-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der Mamma-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

-------

### Bundle-Struktur

Das Mamma-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen

* **Patient**: Mamma-Karzinom Patientin (Martha MammaCa)
* **Condition**: Primärtumor-Diagnose (C50.3 - Unterer innerer Quadrant der Brustdrüse)

#### Mamma-spezifische Observations

* **Menopause Status**: Prämenopausaler Status der Patientin
* **Estrogen-Rezeptorstatus**: Positiver Befund mit 5% positiven Zellen, schwache Färbeintensität
* **Progesteron-Rezeptorstatus**: Positiver Befund mit 25% positiven Zellen, schwache Färbeintensität

#### Zusätzliche Elemente

* **Tumorgrößenbestimmung**: Größte Dimension 25mm
* **Präoperative Markierung**: Beispiel für Markierungsverfahren

> Zusätzlich enthält das Bundle einen **Encounter** als stationären Behandlungsfall, auf den sich die übrigen Ressourcen beziehen.

-------

### Klinisches Szenario

Das Bundle repräsentiert eine **prämenopausale Patientin** mit einem **hormonrezeptor-positiven Mammakarzinom** im unteren inneren Quadranten der Brustdrüse:

**Patientencharakteristika:**

* **Alter/Status**: Prämenopausal (wichtig für Therapieplanung)
* **Tumorlokalisation**: C50.3 (Unterer innerer Quadrant)
* **Tumorgröße**: 25mm (T2-Kategorie)

**Rezeptorstatus:**

* **Estrogen-Rezeptor**: Positiv (5% positive Zellen, schwache Intensität)
* **Progesteron-Rezeptor**: Positiv (25% positive Zellen, schwache Intensität)
* **Therapeutische Konsequenz**: Kandidatin für antihormonelle Therapie

-------

### Technische Implementation

#### Bundle-Typ und Struktur

```
* type = #transaction

```

* **Transaction Bundle**: Atomare Übertragung aller Ressourcen
* **Server-konsumierbar**: Alle Entries mit vollständigen Request-Informationen

#### Entry-Pattern

Jeder Bundle-Entry enthält:

* **fullUrl**: Eindeutige Referenz-URL
* **resource**: Die eigentliche FHIR-Ressource
* **request.method**: HTTP POST für Erstellung
* **request.url**: Ziel-Ressourcentyp

#### Referenz-Integrität

* **Condition**: Referenziert Patient über `subject`
* **Observations**: Referenzieren sowohl Patient (`subject`) als auch Condition (`focus`)
* **Procedures**: Referenzieren Patient (`subject`) und Condition (`reasonReference`)

-------

### Verknüpfungsmuster

Das Bundle demonstriert die **konsistente Referenzstruktur** zwischen Mamma-spezifischen Ressourcen:

```
Patient ← subject ← Condition (Primärtumor)
                        ↑ focus
                 Observations (Menopause, Rezeptorstatus)
                        ↑ reasonReference
                   Procedures (Markierung)

```

-------

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### SNOMED CT

* **Menopause Status**: `22636003` "Premenopausal state"
* **Anatomische Lokalisation**: `110494001` "Structure of upper inner quadrant of right breast"

#### LOINC

* **Estrogen-Rezeptor**: `40556-3` "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
* **Progesteron-Rezeptor**: `85339-0` "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
* **Tumorgröße**: `21889-1` "Size Tumor"
* **Rezeptorstatus**: `LA6576-8` "Positive"

#### ICD-10-GM

* **Diagnose**: `C50.3` "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"

-------

### Einzelne Ressourcen-Beispiele

> Die im Bundle enthaltenen Ressourcen sind zusätzlich als eigenständige Beispielinstanzen ausgeliefert:

* Patient: [mii-exa-onko-mamma-bundle-patient](Patient-mii-exa-onko-mamma-bundle-patient.md)
* Primärtumor-Condition: [mii-exa-onko-mamma-diagnose](Condition-mii-exa-onko-mamma-diagnose.md)
* Behandlungsfall: [mii-exa-onko-mamma-bundle-encounter](Encounter-mii-exa-onko-mamma-bundle-encounter.md)
* Menopause Status: [mii-exa-onko-mamma-menopause-status-1](Observation-mii-exa-onko-mamma-menopause-status-1.md)
* Estrogen-Rezeptorstatus: [mii-exa-onko-mamma-rezeptorstatus-estrogen-1](Observation-mii-exa-onko-mamma-rezeptorstatus-estrogen-1.md)
* Progesteron-Rezeptorstatus: [mii-exa-onko-mamma-rezeptorstatus-progesteron-1](Observation-mii-exa-onko-mamma-rezeptorstatus-progesteron-1.md)
* Tumorgrößenbestimmung: [mii-exa-onko-mamma-tumorgroesse-1](Observation-mii-exa-onko-mamma-tumorgroesse-1.md)
* Präoperative Markierung: [mii-exa-onko-mamma-praeoperative-markierung-1](Procedure-mii-exa-onko-mamma-praeoperative-markierung-1.md)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-mamma-example-bundle-1",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  "identifier" : {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko",
    "value" : "mamma-example-bundle-2024-001"
  },
  "type" : "transaction",
  "timestamp" : "2024-03-25T10:00:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-mamma-bundle-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-mamma-bundle-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-mamma-bundle-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-mamma-bundle-patient</b></p><a name=\"mii-exa-onko-mamma-bundle-patient\"> </a><a name=\"hcmii-exa-onko-mamma-bundle-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Martha MammaCa  (no stated gender), DoB Unknown</p><hr/></div></div>"
      },
      "name" : [{
        "family" : "MammaCa",
        "given" : ["Martha"]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-mamma-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-mamma-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-mamma-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-mamma-diagnose</b></p><a name=\"mii-exa-onko-mamma-diagnose\"> </a><a name=\"hcmii-exa-onko-mamma-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a></p></div><p><b>Condition Asserted Date</b>: 2020-03-07</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C50.3}\">Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>recordedDate</b>: 2024-01-02</p></div></div>"
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
          "code" : "C50.3",
          "display" : "Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "recordedDate" : "2024-01-02"
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-mamma-bundle-encounter",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-mamma-bundle-encounter",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-mamma-bundle-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-mamma-bundle-encounter</b></p><a name=\"mii-exa-onko-mamma-bundle-encounter\"> </a><a name=\"hcmii-exa-onko-mamma-bundle-encounter\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-menopause-status-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-mamma-menopause-status-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-menopause-status|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-mamma-menopause-status-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-mamma-menopause-status-1</b></p><a name=\"mii-exa-onko-mamma-menopause-status-1\"> </a><a name=\"hcmii-exa-onko-mamma-menopause-status-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-mamma-menopause-status.html\">MII PR Onkologie Menopausenstatus Mamma</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 161712005}\">Menopause, function (observable entity)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-mamma-diagnose.html\">Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 22636003}\">Premenopausal state (finding)</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "161712005",
          "display" : "Menopause, function (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "22636003",
          "display" : "Premenopausal state (finding)"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-rezeptorstatus-estrogen-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-mamma-rezeptorstatus-estrogen-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-estrogen|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-mamma-rezeptorstatus-estrogen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-mamma-rezeptorstatus-estrogen-1</b></p><a name=\"mii-exa-onko-mamma-rezeptorstatus-estrogen-1\"> </a><a name=\"hcmii-exa-onko-mamma-rezeptorstatus-estrogen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html\">MII PR Onkologie Rezeptorstatus Estrogen</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 40556-3}\">Estrogen receptor Ag [Presence] in Tissue by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-mamma-diagnose.html\">Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Positive</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1234804006}\">Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)</span></p><p><b>value</b>: 5 %</p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1236874005}\">Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA13034-6}\">Weak</span></p></blockquote></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "40556-3",
          "display" : "Estrogen receptor Ag [Presence] in Tissue by Immune stain"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1234804006",
            "display" : "Percent of cells with estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
          }]
        },
        "valueQuantity" : {
          "value" : 5,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org"
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1236874005",
            "display" : "Intensity of stain of estrogen receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "LA13034-6",
            "display" : "Weak"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-rezeptorstatus-progesteron-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-mamma-rezeptorstatus-progesteron-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-rezeptorstatus-progesteron|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-mamma-rezeptorstatus-progesteron-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-mamma-rezeptorstatus-progesteron-1</b></p><a name=\"mii-exa-onko-mamma-rezeptorstatus-progesteron-1\"> </a><a name=\"hcmii-exa-onko-mamma-rezeptorstatus-progesteron-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.html\">MII PR Onkologie Rezeptorstatus Progesteron</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85339-0}\">Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-mamma-diagnose.html\">Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</a></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA6576-8}\">Positive</span></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1234803000}\">Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry</span></p><p><b>value</b>: 25 %</p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1237278006}\">Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)</span></p><p><b>value</b>: <span title=\"Codes:{http://loinc.org LA13034-6}\">Weak</span></p></blockquote></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "85339-0",
          "display" : "Progesterone receptor Ag [Presence] in Breast cancer specimen by Immune stain"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      }],
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "LA6576-8",
          "display" : "Positive"
        }]
      },
      "component" : [{
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1234803000",
            "display" : "Percent of cells with progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry"
          }]
        },
        "valueQuantity" : {
          "value" : 25,
          "unit" : "%",
          "system" : "http://unitsofmeasure.org"
        }
      },
      {
        "code" : {
          "coding" : [{
            "system" : "http://snomed.info/sct",
            "code" : "1237278006",
            "display" : "Intensity of stain of progesterone receptor in primary malignant neoplasm of breast by immunohistochemistry (observable entity)"
          }]
        },
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://loinc.org",
            "code" : "LA13034-6",
            "display" : "Weak"
          }]
        }
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-mamma-tumorgroesse-1",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-mamma-tumorgroesse-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tumorgroesse|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-mamma-tumorgroesse-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-mamma-tumorgroesse-1</b></p><a name=\"mii-exa-onko-mamma-tumorgroesse-1\"> </a><a name=\"hcmii-exa-onko-mamma-tumorgroesse-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-tumorgroesse.html\">MII PR Onkologie Tumorgröße</a> version: 2026.0.3</p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 21889-1}, {http://snomed.info/sct 371479009}\">Size Tumor</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-mamma-diagnose.html\">Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</a></p><p><b>effective</b>: 2024-01-02 10:00:00+0000</p><p><b>value</b>: 25 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p><p><b>bodySite</b>: <span title=\"Codes:{http://snomed.info/sct 110494001}\">Structure of upper inner quadrant of right breast (body structure)</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "21889-1",
          "display" : "Size Tumor"
        },
        {
          "system" : "http://snomed.info/sct",
          "code" : "371479009",
          "display" : "Tumor size, largest dimension (observable entity)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      }],
      "effectiveDateTime" : "2024-01-02T10:00:00Z",
      "valueQuantity" : {
        "value" : 25,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      },
      "bodySite" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "110494001",
          "display" : "Structure of upper inner quadrant of right breast (body structure)"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-mamma-praeoperative-markierung-1",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-mamma-praeoperative-markierung-1",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-mamma-praeoperative-markierung|2026.0.3"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-mamma-praeoperative-markierung-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-mamma-praeoperative-markierung-1</b></p><a name=\"mii-exa-onko-mamma-praeoperative-markierung-1\"> </a><a name=\"hcmii-exa-onko-mamma-praeoperative-markierung-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html\">MII PR Onkologie Präoperative Markierung Mamma</a> version: 2026.0.3</p></div><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 103693007}\">Diagnostic procedure (procedure)</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 433222002}\">Insertion of guide wire into breast using ultrasound guidance (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-mamma-bundle-patient.html\">Martha MammaCa  (no stated gender), DoB Unknown</a></p><p><b>performed</b>: 2024-01-15 09:00:00+0100</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-mamma-diagnose.html\">Condition Bösartige Neubildung: Unterer innerer Quadrant der Brustdrüse</a></p></div></div>"
      },
      "status" : "completed",
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "103693007",
          "display" : "Diagnostic procedure (procedure)"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "433222002",
          "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-mamma-bundle-patient"
      },
      "performedDateTime" : "2024-01-15T09:00:00+01:00",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-mamma-diagnose"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  }]
}

```
