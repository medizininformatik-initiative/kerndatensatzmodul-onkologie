# Mapping oBDS Karnofsky zu LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mapping oBDS Karnofsky zu LOINC**

## ConceptMap: Mapping oBDS Karnofsky zu LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*: |

 
Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    },
    {
      "url" : "version",
      "valueString" : "2026.0.3"
    }],
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareableconceptmap",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishableconceptmap"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "version" : "2026.0.3",
  "title" : "Mapping oBDS Karnofsky zu LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T22:10:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der oBDS-Codes für Karnofsky Performance Status zu LOINC Answer List LL4986-7",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-karnofsky",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "100%",
      "display" : "100%",
      "target" : [{
        "code" : "LA29175-9",
        "display" : "Normal; no complaints; no evidence of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "90%",
      "display" : "90%",
      "target" : [{
        "code" : "LA29176-7",
        "display" : "Able to carry on normal activity; minor signs or symptoms of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "80%",
      "display" : "80%",
      "target" : [{
        "code" : "LA29177-5",
        "display" : "Normal activity with effort; some signs or symptoms of disease",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "70%",
      "display" : "70%",
      "target" : [{
        "code" : "LA29178-3",
        "display" : "Cares for self; unable to carry on normal activity or do active work",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "60%",
      "display" : "60%",
      "target" : [{
        "code" : "LA29179-1",
        "display" : "Requires occasional assistance but is able to care for most needs",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "50%",
      "display" : "50%",
      "target" : [{
        "code" : "LA29180-9",
        "display" : "Requires considerable assistance and frequent medical care",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "40%",
      "display" : "40%",
      "target" : [{
        "code" : "LA29181-7",
        "display" : "Disabled; requires special care and assistance",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "30%",
      "display" : "30%",
      "target" : [{
        "code" : "LA29182-5",
        "display" : "Severely disabled; hospitalization is indicated, although death not imminent",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "20%",
      "display" : "20%",
      "target" : [{
        "code" : "LA29183-3",
        "display" : "Very sick; hospitalization necessary; active supportive treatment necessary",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "10%",
      "display" : "10%",
      "target" : [{
        "code" : "LA29184-1",
        "display" : "Moribund; fatal processes progressing rapidly",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "0%",
      "display" : "0%",
      "target" : [{
        "code" : "LA9627-6",
        "display" : "Dead",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
