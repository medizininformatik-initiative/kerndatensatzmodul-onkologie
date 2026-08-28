# MII EXA Onko KRK Bundle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII EXA Onko KRK Bundle**

## Beispiel Bundle: MII EXA Onko KRK Bundle

### Inhalt

Das **KRK Bundle Beispiel** demonstriert die strukturierte Zusammenstellung aller Kolorektales-Karzinom-spezifischen FHIR-Ressourcen in einem einheitlichen Transaktions-Bundle. Dieses Bundle zeigt die praktische Anwendung der KRK-Profile und deren Verknüpfungen untereinander in einem realistischen klinischen Szenario eines Rektumkarzinoms.

Das Bundle implementiert das **Transaction-Pattern** und ist server-konsumierbar, wodurch alle enthaltenen Ressourcen als atomare Operation übertragen werden können.

-------

### Bundle-Struktur

Das KRK-Bundle umfasst folgende Ressourcen:

#### Primäre Ressourcen

* **Patient**: KRK-Patient (Klaus KolorektalCa)
* **Condition**: Primärtumor-Diagnose (C18 - Bösartige Neubildung des Kolons)
* **Encounter**: Stationärer Behandlungsfall

#### KRK-spezifische Observations

* **Abstand zur Anokutanlinie**: Tumorsitz 6cm ab Anokutanlinie (KR1)
* **Circumferelle Resektionsebene**: Minimaler Abstand 2mm (KR3)
* **Aboraler Resektionsrand**: Minimaler Abstand 15mm (KR2)
* **MRT Mesorektale Faszie**: Bildgebende Bewertung des Abstands (KR2)
* **Anastomoseninsuffizienz**: Postoperative Komplikationsbewertung (KR8)
* **ASA-Klassifikation**: Präoperative Risikobewertung ASA II (KR9)

#### Therapeutische Ressourcen

* **Stoma-Markierung**: Präoperative Stomapositionsmarkierung (KR7)
* **KRK-Operation**: Operative Resektion mit TME-Qualitätsbewertung (KR4)
* **KRK-Specimen**: Operationspräparat mit pathologischer Aufarbeitung

-------

### Klinisches Szenario

Das Bundle repräsentiert einen **Patienten mit Rektumkarzinom** mit kompletter präoperativer Diagnostik und operativer Therapie:

**Patientencharakteristika:**

* **Diagnose**: C18 Kolonkarzinom
* **ASA-Status**: ASA II (mäßiges Operationsrisiko)
* **Tumorlokalisation**: 6cm ab Anokutanlinie (tiefes Rektum)

**Präoperative Diagnostik:**

* **MRT-Staging**: Bewertung der mesorektalen Faszie
* **Präoperative Vorbereitung**: Stomamarkierung durchgeführt

**Operative Therapie:**

* **Rektumresektion**: Mit TME-Technik (Totale mesorektale Exzision)
* **Resektionsränder**: R0-Resektion mit ausreichenden Sicherheitsabständen
* **Postoperative Komplikationen**: Keine Anastomoseninsuffizienz

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
* **Specimen**: Referenziert Patient (`subject`) und Collection-Procedure

-------

### Verknüpfungsmuster

Das Bundle demonstriert die **konsistente Referenzstruktur** zwischen KRK-spezifischen Ressourcen:

```
Patient ← subject ← Condition (Primärtumor)
                        ↑ focus
                 Observations (Abstände, ASA, Anastomoseninsuffizienz)
                        ↑ reasonReference
                   Procedures (Stoma-Markierung, Operation)
                        ↑ collection.procedure
                    Specimen (Operationspräparat)

```

-------

### oBDS-Zuordnung

Das Bundle demonstriert die vollständige Abbildung der oBDS-Datenfelder für Kolorektales Karzinom:

#### Tumor-Lokalisation

* **KR1**: Abstand Anokutanlinie → [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md)

#### Pathologische Bewertung

* **KR2**: Abstand Resektionsrand aboral → [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.md)
* **KR3**: Abstand circumferelle Resektionsebene → [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.md)
* **KR4**: TME-Qualität → [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)

#### Bildgebende Verfahren

* **KR5**: MRT/CT Mesorektale Faszie → [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.md)

#### Operative Daten

* **KR7**: Stomamarkierung → [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.md)
* **KR8**: Anastomoseninsuffizienz → [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.md)
* **KR9**: ASA-Klassifikation → [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.md) 

-------

### ValueSet-Verwendung

Das Bundle zeigt die praktische Anwendung verschiedener Terminologien:

#### LOINC

* **Abstand Anokutanlinie**: `33748-5` "Distance from anal verge"
* **ASA-Klassifikation**: `97816-3` "American Society of Anesthesiologists physical status score"

#### SNOMED CT

* **Anastomoseninsuffizienz**: `235919008` "Anastomotic leak"
* **Operative Eingriffe**: Verschiedene SNOMED CT Codes für kolorektale Operationen

#### ICD-10-GM

* **Diagnose**: `C18` "Bösartige Neubildung des Kolons"

#### oBDS CodeSystems

* **ASA-Klassifikation**: `mii-cs-onko-krk-asa-obds#2` "ASA II"
* **Stomamarkierung**: `mii-cs-onko-krk-stoma-anzeichnung#durchgefuehrt` "Durchgeführt"
* **TME-Qualität**: `mii-cs-onko-krk-tme-qualitaet#komplett` "Komplett"

-------

### Einzelne Ressourcen-Beispiele

> Die im Bundle enthaltenen Ressourcen sind zusätzlich als eigenständige Beispielinstanzen ausgeliefert:

* Patient: [mii-exa-onko-krk-bundle-patient](Patient-mii-exa-onko-krk-bundle-patient.md)
* Primärtumor-Condition: [mii-exa-onko-krk-diagnose](Condition-mii-exa-onko-krk-diagnose.md)
* Behandlungsfall: [mii-exa-onko-krk-bundle-encounter](Encounter-mii-exa-onko-krk-bundle-encounter.md)
* Abstand Anokutanlinie: [mii-exa-onko-krk-abstand-tumor-anokutanlinie](Observation-mii-exa-onko-krk-abstand-tumor-anokutanlinie.md)
* Circumferelle Resektionsebene: [mii-exa-onko-krk-abstand-circumferelle-resektionsebene](Observation-mii-exa-onko-krk-abstand-circumferelle-resektionsebene.md)
* Aboraler Resektionsrand: [mii-exa-onko-krk-abstand-resektionsrand-aboral](Observation-mii-exa-onko-krk-abstand-resektionsrand-aboral.md)
* MRT Mesorektale Faszie: [mii-exa-onko-krk-abstand-mesorektale-fascie](Observation-mii-exa-onko-krk-abstand-mesorektale-fascie.md)
* ASA-Klassifikation: [mii-exa-onko-asa-klassifikation](Observation-mii-exa-onko-asa-klassifikation.md)
* Anastomoseninsuffizienz: [mii-exa-onko-krk-anastomoseninsuffizienz](Observation-mii-exa-onko-krk-anastomoseninsuffizienz.md)
* Stoma-Markierung: [mii-exa-onko-krk-stoma-markierung](Procedure-mii-exa-onko-krk-stoma-markierung.md)
* KRK-Operation: [mii-exa-onko-krk-operation](Procedure-mii-exa-onko-krk-operation.md)
* KRK-Specimen: [mii-exa-onko-krk-specimen](Specimen-mii-exa-onko-krk-specimen.md)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "mii-exa-onko-krk-bundle",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  "identifier" : {
    "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko",
    "value" : "krk-example-bundle-2024-001"
  },
  "type" : "transaction",
  "timestamp" : "2024-03-25T10:00:00+01:00",
  "entry" : [{
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Patient/mii-exa-onko-krk-bundle-patient",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "mii-exa-onko-krk-bundle-patient",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Patient_mii-exa-onko-krk-bundle-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient mii-exa-onko-krk-bundle-patient</b></p><a name=\"mii-exa-onko-krk-bundle-patient\"> </a><a name=\"hcmii-exa-onko-krk-bundle-patient\"> </a><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Klaus KolorektalCa  (no stated gender), DoB Unknown</p><hr/></div></div>"
      },
      "name" : [{
        "family" : "KolorektalCa",
        "given" : ["Klaus"]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Patient"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Condition/mii-exa-onko-krk-diagnose",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "mii-exa-onko-krk-diagnose",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Condition_mii-exa-onko-krk-diagnose\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition mii-exa-onko-krk-diagnose</b></p><a name=\"mii-exa-onko-krk-diagnose\"> </a><a name=\"hcmii-exa-onko-krk-diagnose\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-diagnose-primaertumor.html\">MII PR Onkologie Diagnose Primärtumor</a></p></div><p><b>Condition Asserted Date</b>: 2020-03-07</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 55342001}\">Neoplastic disease</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/icd-10-gm C18}\">Bösartige Neubildung des Kolons</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>recordedDate</b>: 2024-01-02</p></div></div>"
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
          "code" : "C18",
          "display" : "Bösartige Neubildung des Kolons"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "recordedDate" : "2024-01-02"
    },
    "request" : {
      "method" : "POST",
      "url" : "Condition"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Encounter/mii-exa-onko-krk-bundle-encounter",
    "resource" : {
      "resourceType" : "Encounter",
      "id" : "mii-exa-onko-krk-bundle-encounter",
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Encounter_mii-exa-onko-krk-bundle-encounter\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Encounter mii-exa-onko-krk-bundle-encounter</b></p><a name=\"mii-exa-onko-krk-bundle-encounter\"> </a><a name=\"hcmii-exa-onko-krk-bundle-encounter\"> </a><p><b>status</b>: Finished</p><p><b>class</b>: <a href=\"http://terminology.hl7.org/7.3.0/CodeSystem-v3-ActCode.html#v3-ActCode-IMP\">ActCode: IMP</a> (inpatient encounter)</p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p></div></div>"
      },
      "status" : "finished",
      "class" : {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
        "code" : "IMP",
        "display" : "inpatient encounter"
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Encounter"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-tumor-anokutanlinie",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-krk-abstand-tumor-anokutanlinie",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-anokutan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-krk-abstand-tumor-anokutanlinie\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-krk-abstand-tumor-anokutanlinie</b></p><a name=\"mii-exa-onko-krk-abstand-tumor-anokutanlinie\"> </a><a name=\"hcmii-exa-onko-krk-abstand-tumor-anokutanlinie\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html\">MII PR Onkologie Abstand Anokutan</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 33748-5}\">Distance from anal verge</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>effective</b>: 2024-03-10 14:30:00+0100</p><p><b>value</b>: 8.5 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "33748-5",
          "display" : "Distance from anal verge"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "effectiveDateTime" : "2024-03-10T14:30:00+01:00",
      "valueQuantity" : {
        "value" : 8.5,
        "unit" : "cm",
        "system" : "http://unitsofmeasure.org",
        "code" : "cm"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-circumferelle-resektionsebene",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-krk-abstand-circumferelle-resektionsebene",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-circumferelle-resektionsebene"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-krk-abstand-circumferelle-resektionsebene\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-krk-abstand-circumferelle-resektionsebene</b></p><a name=\"mii-exa-onko-krk-abstand-circumferelle-resektionsebene\"> </a><a name=\"hcmii-exa-onko-krk-abstand-circumferelle-resektionsebene\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html\">MII PR Onkologie Abstand Circumferelle Resektionsebene</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 81176-0}\">Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>effective</b>: 2024-03-20 10:15:00+0100</p><p><b>value</b>: 2.5 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "81176-0",
          "display" : "Distance of tumor from circumferential resection margin [Length] in Specimen by Macroscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "effectiveDateTime" : "2024-03-20T10:15:00+01:00",
      "valueQuantity" : {
        "value" : 2.5,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-resektionsrand-aboral",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-krk-abstand-resektionsrand-aboral",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-abstand-aboral"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-krk-abstand-resektionsrand-aboral\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-krk-abstand-resektionsrand-aboral</b></p><a name=\"mii-exa-onko-krk-abstand-resektionsrand-aboral\"> </a><a name=\"hcmii-exa-onko-krk-abstand-resektionsrand-aboral\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-abstand-aboral.html\">MII PR Onkologie Abstand Aboral</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 81175-2}\">Distance of tumor from closest margin [Length] in Specimen by Macroscopy</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>effective</b>: 2024-03-20 10:15:00+0100</p><p><b>value</b>: 15 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "81175-2",
          "display" : "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "effectiveDateTime" : "2024-03-20T10:15:00+01:00",
      "valueQuantity" : {
        "value" : 15,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-abstand-mesorektale-fascie",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-krk-abstand-mesorektale-fascie",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-mrt-mesorektale-faszie"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-krk-abstand-mesorektale-fascie\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-krk-abstand-mesorektale-fascie</b></p><a name=\"mii-exa-onko-krk-abstand-mesorektale-fascie\"> </a><a name=\"hcmii-exa-onko-krk-abstand-mesorektale-fascie\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html\">MII PR Onkologie KRK MRT/CT Abstand Mesorektale Faszie</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{https://radelement.org RDE96}\">Distance to MRF</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>effective</b>: 2024-03-12 16:00:00+0100</p><p><b>value</b>: 3.2 mm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm = 'mm')</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "https://radelement.org",
          "code" : "RDE96",
          "display" : "Distance to MRF"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "effectiveDateTime" : "2024-03-12T16:00:00+01:00",
      "valueQuantity" : {
        "value" : 3.2,
        "unit" : "mm",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm"
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-krk-anastomoseninsuffizienz",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-krk-anastomoseninsuffizienz",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-anastomoseninsuffizienz"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-krk-anastomoseninsuffizienz\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-krk-anastomoseninsuffizienz</b></p><a name=\"mii-exa-onko-krk-anastomoseninsuffizienz\"> </a><a name=\"hcmii-exa-onko-krk-anastomoseninsuffizienz\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html\">MII PR Onkologie KRK Anastomoseninsuffizienz</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 236091002}\">Large intestine anastomotic leak (disorder)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Procedure-mii-exa-onko-krk-operation.html\">Procedure Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>effective</b>: 2024-03-25 08:00:00+0100</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz B}\">Anastomoseninsuffizienz Grad B</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "236091002",
          "display" : "Large intestine anastomotic leak (disorder)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Procedure/mii-exa-onko-krk-operation"
      }],
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "effectiveDateTime" : "2024-03-25T08:00:00+01:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-anastomoseninsuffizienz",
          "code" : "B",
          "display" : "Anastomoseninsuffizienz Grad B"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Observation/mii-exa-onko-asa-klassifikation",
    "resource" : {
      "resourceType" : "Observation",
      "id" : "mii-exa-onko-asa-klassifikation",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-asa-klassifikation"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Observation_mii-exa-onko-asa-klassifikation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation mii-exa-onko-asa-klassifikation</b></p><a name=\"mii-exa-onko-asa-klassifikation\"> </a><a name=\"hcmii-exa-onko-asa-klassifikation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-asa-klassifikation.html\">MII PR Onkologie ASA-Klassifikation</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 97816-3}\">American society of anesthesiologists morbidity state</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>focus</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>effective</b>: 2024-03-15 08:30:00+0100</p><p><b>value</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds 2}\">ASA II</span></p></div></div>"
      },
      "status" : "final",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "97816-3",
          "display" : "American society of anesthesiologists morbidity state"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "focus" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "effectiveDateTime" : "2024-03-15T08:30:00+01:00",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds",
          "code" : "2",
          "display" : "ASA II"
        }]
      }
    },
    "request" : {
      "method" : "POST",
      "url" : "Observation"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-krk-stoma-markierung",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-krk-stoma-markierung",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-stoma-markierung"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-krk-stoma-markierung\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-krk-stoma-markierung</b></p><a name=\"mii-exa-onko-krk-stoma-markierung\"> </a><a name=\"hcmii-exa-onko-krk-stoma-markierung\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-stoma-markierung.html\">MII PR Onkologie KRK Stoma-Markierung</a></p></div><p><b>status</b>: Completed</p><p><b>statusReason</b>: <span title=\"Codes:{http://snomed.info/sct 262008008}\">Not performed (qualifier value)</span></p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 225134005}\">Marking position of planned stoma site (procedure)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-03-15 09:30:00+0100</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>note</b>: </p><blockquote><div><p>Präoperative Markierung der geplanten Stoma-Position im rechten Hemiabdomen nach Rücksprache mit dem Patienten</p>\n</div></blockquote></div></div>"
      },
      "status" : "completed",
      "statusReason" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "262008008",
          "display" : "Not performed (qualifier value)"
        }]
      },
      "category" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "387713003",
          "display" : "Surgical procedure"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "225134005",
          "display" : "Marking position of planned stoma site (procedure)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "performedDateTime" : "2024-03-15T09:30:00+01:00",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "note" : [{
        "text" : "Präoperative Markierung der geplanten Stoma-Position im rechten Hemiabdomen nach Rücksprache mit dem Patienten"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Procedure/mii-exa-onko-krk-operation",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "mii-exa-onko-krk-operation",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-operation"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Procedure_mii-exa-onko-krk-operation\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure mii-exa-onko-krk-operation</b></p><a name=\"mii-exa-onko-krk-operation\"> </a><a name=\"hcmii-exa-onko-krk-operation\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-operation.html\">MII PR Onkologie Präoperative Drahtmarkierung Mamma</a></p></div><p><b>MII EX Onko Operation Intention</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention K}\">kurativ</span></p><p><b>status</b>: Completed</p><p><b>category</b>: <span title=\"Codes:{http://snomed.info/sct 387713003}\">Surgical procedure</span></p><p><b>code</b>: <span title=\"Codes:{http://fhir.de/CodeSystem/bfarm/ops 5-484.55}\">Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><p><b>encounter</b>: <a href=\"Encounter-mii-exa-onko-krk-bundle-encounter.html\">Encounter: status = finished; class = inpatient encounter (ActCode#IMP)</a></p><p><b>performed</b>: 2024-03-22 08:00:00+0100</p><p><b>reasonReference</b>: <a href=\"Condition-mii-exa-onko-krk-diagnose.html\">Condition Bösartige Neubildung des Kolons</a></p><p><b>note</b>: </p><blockquote><div><p>Laparoskopische Resektion beim kolorektalen Karzinom</p>\n</div></blockquote></div></div>"
      },
      "extension" : [{
        "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-operation-intention",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-intention",
            "code" : "K",
            "display" : "kurativ"
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
          "code" : "5-484.55",
          "display" : "Rektumresektion unter Sphinktererhaltung: Tiefe anteriore Resektion: Laparoskopisch mit Anastomose"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "encounter" : {
        "reference" : "Encounter/mii-exa-onko-krk-bundle-encounter"
      },
      "performedDateTime" : "2024-03-22T08:00:00+01:00",
      "reasonReference" : [{
        "reference" : "Condition/mii-exa-onko-krk-diagnose"
      }],
      "note" : [{
        "text" : "Laparoskopische Resektion beim kolorektalen Karzinom"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Procedure"
    }
  },
  {
    "fullUrl" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/Specimen/mii-exa-onko-krk-specimen",
    "resource" : {
      "resourceType" : "Specimen",
      "id" : "mii-exa-onko-krk-specimen",
      "meta" : {
        "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><div xml:lang=\"en\" lang=\"en\"><hr/><p><b>English</b></p><hr/><a name=\"Specimen_mii-exa-onko-krk-specimen\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen mii-exa-onko-krk-specimen</b></p><a name=\"mii-exa-onko-krk-specimen\"> </a><a name=\"hcmii-exa-onko-krk-specimen\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-mii-pr-onko-krk-specimen.html\">MII PR Onkologie Specimen</a></p></div><p><b>accessionIdentifier</b>: KRK-2024-001234</p><p><b>status</b>: Available</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 122652004}\">Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection (specimen)</span></p><p><b>subject</b>: <a href=\"Patient-mii-exa-onko-krk-bundle-patient.html\">Klaus KolorektalCa  (no stated gender), DoB Unknown</a></p><h3>Collections</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Collected[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2024-03-22 08:30:00+0100</td></tr></table><p><b>condition</b>: <span title=\"Codes:{https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-tme-qualitaet 1}\">Grad 1 (gut)</span></p><p><b>note</b>: </p><blockquote><div><p>Sigmaresekat mit Primärtumor und regionären Lymphknoten</p>\n</div></blockquote></div></div>"
      },
      "accessionIdentifier" : {
        "value" : "KRK-2024-001234"
      },
      "status" : "available",
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "122652004",
          "display" : "Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection (specimen)"
        }]
      },
      "subject" : {
        "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
      },
      "collection" : {
        "collectedDateTime" : "2024-03-22T08:30:00+01:00"
      },
      "condition" : [{
        "coding" : [{
          "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-tme-qualitaet",
          "code" : "1",
          "display" : "Grad 1 (gut)"
        }]
      }],
      "note" : [{
        "text" : "Sigmaresekat mit Primärtumor und regionären Lymphknoten"
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "Specimen"
    }
  }]
}

```
