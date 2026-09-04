# MII CM Onkologie ASA oBDS zu LOINC - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onkologie ASA oBDS zu LOINC**

## ConceptMap: MII CM Onkologie ASA oBDS zu LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-asa-obds-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active Stand: 2026-09-04 | *Maschinenlesbarer Name*:MII_CM_Onko_ASA_oBDS_LOINC |

 
Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-asa-obds-loinc",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-asa-obds-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CM_Onko_ASA_oBDS_LOINC",
  "title" : "MII CM Onkologie ASA oBDS zu LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T15:21:29+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping von oBDS ASA-Klassifikation (ursprünglich KR9, generalisiert für alle onkologischen Indikationen) zu LOINC ASA Physical Status",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-obds",
  "targetCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-asa-loinc",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-asa-obds",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "1",
      "display" : "ASA I",
      "target" : [{
        "code" : "LA28813-6",
        "display" : "ASA I",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "ASA II",
      "target" : [{
        "code" : "LA28814-4",
        "display" : "ASA II",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "ASA III",
      "target" : [{
        "code" : "LA28815-1",
        "display" : "ASA III",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "ASA IV",
      "target" : [{
        "code" : "LA28816-9",
        "display" : "ASA IV",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "5",
      "display" : "ASA V",
      "target" : [{
        "code" : "LA28817-7",
        "display" : "ASA V",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "6",
      "display" : "ASA VI",
      "target" : [{
        "code" : "LA28818-5",
        "display" : "ASA VI",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Unbekannt",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Kein entsprechender LOINC-Code für 'Unbekannt' verfügbar"
      }]
    }]
  }]
}

```
