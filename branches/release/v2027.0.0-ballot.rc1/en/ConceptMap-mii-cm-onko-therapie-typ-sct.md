# MII CM Onko Therapie Typ SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Therapie Typ SNOMED Mapping**

## ConceptMap: MII CM Onko Therapie Typ SNOMED Mapping (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-typ-sct | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-04-10 | *Computable Name*:MII CM Onko Therapie Typ SNOMED Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Therapie Typ Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. 

Therapy type is coded on the one hand for systemic/watchful-waiting therapy. In addition, these codes are used to document the recommendations of the tumour board.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-therapie-typ-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-therapie-typ-sct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII CM Onko Therapie Typ SNOMED Mapping",
  "title" : "MII CM Onko Therapie Typ SNOMED Mapping",
  "status" : "active",
  "experimental" : true,
  "date" : "2024-04-10",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Therapie Typ Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "purpose" : "Technical mapping to transform oBDS-Data into SNOMED",
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/",
  "targetUri" : "http://snomed.info/sct/900000000000207008/version/20240401",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "CH",
      "display" : "Chemotherapie",
      "target" : [{
        "code" : "367336001",
        "display" : "Chemotherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HO",
      "display" : "Hormontherapie",
      "target" : [{
        "code" : "169413002",
        "display" : "Hormone therapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IM",
      "display" : "Immun-/Antikörpertherapie",
      "target" : [{
        "code" : "76334006",
        "display" : "Immunotherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ZS",
      "display" : "zielgerichtete Substanzen",
      "target" : [{
        "code" : "1255831008",
        "display" : "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SZ",
      "display" : "Stammzelltransplantation (inklusive Knochenmarktransplantation)",
      "target" : [{
        "code" : "1269349006",
        "display" : "Transplantation of stem cell (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CI",
      "display" : "Chemo- + Immun-/Antikörpertherapie",
      "target" : [{
        "code" : "897713009",
        "display" : "Antineoplastic chemoimmunotherapy (regime/therapy)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CZ",
      "display" : "Chemotherapie + zielgerichtete Substanzen",
      "target" : [{
        "code" : "1255831008",
        "display" : "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "CIZ",
      "display" : "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen",
      "target" : [{
        "code" : "897713009",
        "display" : "Antineoplastic chemoimmunotherapy (regime/therapy)",
        "equivalence" : "narrower",
        "comment" : "Spezifische Kombination für Chemo- und Immuntherapie, aber ohne zielgerichtete Substanzen"
      }]
    },
    {
      "target" : [{
        "code" : "1255831008",
        "display" : "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)",
        "equivalence" : "narrower",
        "comment" : "Spezifischer Code für zielgerichtete Substanzen"
      }]
    },
    {
      "code" : "IZ",
      "display" : "Immun-/Antikörpertherapie + zielgerichtete Substanzen",
      "target" : [{
        "code" : "76334006",
        "display" : "Immunotherapy (procedure)",
        "equivalence" : "narrower",
        "comment" : "Spezifischer Code Immuntherapie, aber ohne zielgerichtete Substanzen"
      }]
    },
    {
      "target" : [{
        "code" : "1255831008",
        "display" : "Chemotherapy for malignant neoplastic disease using targeted agent (procedure)",
        "equivalence" : "narrower",
        "comment" : "Spezifischer Code für zielgerichtete Substanzen"
      }]
    },
    {
      "code" : "WW",
      "display" : "Watchful Waiting",
      "target" : [{
        "code" : "373818007",
        "display" : "No anti-cancer treatment - watchful waiting (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "AS",
      "display" : "Active Surveillance",
      "target" : [{
        "code" : "424313000",
        "display" : "Active surveillance (regime/therapy)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "WS",
      "display" : "Wait and see",
      "target" : [{
        "code" : "310341009",
        "display" : "Follow-up (wait and see) (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OP",
      "display" : "Operation",
      "target" : [{
        "code" : "387713003",
        "display" : "Surgical procedure (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ST",
      "display" : "Strahlentherapie",
      "target" : [{
        "code" : "1287742003",
        "display" : "Radiotherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "KW",
      "display" : "keine weitere tumorspezifische Therapie empfohlen",
      "target" : [{
        "code" : "897016006",
        "display" : "Not recommended (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SO",
      "display" : "Sonstiges",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
