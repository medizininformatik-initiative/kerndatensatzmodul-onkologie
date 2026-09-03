# MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping**

## ConceptMap: MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Strahlentherapie Applikationsart SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. 

The various application types are in some cases listed in combination and, in this form, are difficult to represent in SNOMED. It also becomes apparent that some specialised methods (such as PSMA therapy) are not represented in SNOMED CT.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-strahlentherapie-applikationsart-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-applikationsart-sct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII CM Onko Strahlentherapie Applikationsart SCT Mapping",
  "title" : "MII CM Onko Strahlentherapie Applikationsart SNOMED Mapping",
  "status" : "active",
  "experimental" : true,
  "date" : "2024-04-11",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Strahlentherapie Applikationsart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "P",
      "display" : "perkutan (Teletherapie)",
      "target" : [{
        "code" : "33195004",
        "display" : "External beam radiation therapy procedure (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P-ST",
      "display" : "perkutan stereotaktisch",
      "target" : [{
        "code" : "395096001",
        "display" : "Stereotactic radiotherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P-4D",
      "display" : "perkutan, atemgetriggert",
      "target" : [{
        "code" : "721061000124106",
        "display" : "External beam radiotherapy with respiratory gating (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P-ST4D",
      "display" : "perkutan, stereotaktisch, atemgetriggert",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Einzelkonzepte über SNOMED abbildbar"
      }]
    },
    {
      "code" : "PRCN-ST",
      "display" : "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PRCN-4D",
      "display" : "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PRCN-ST4D",
      "display" : "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PRCJ",
      "display" : "perkutan mit Chemotherapie/Sensitizer",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "PRCJ-4D",
      "display" : "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "K",
      "display" : "endokavitäre Kontakttherapie",
      "target" : [{
        "code" : "384692006",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "KHDR",
      "display" : "endokavitäre Kontakttherapie, high dose rate therapy",
      "target" : [{
        "code" : "384692006",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "KLDR",
      "display" : "endokavitäre Kontakttherapie, low dose rate therapy",
      "target" : [{
        "code" : "384692006",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "KPDR",
      "display" : "endokavitäre Kontakttherapie, pulsed dose rate therapy",
      "target" : [{
        "code" : "384692006",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "I",
      "display" : "intersitielle Kontakttherapie",
      "target" : [{
        "code" : "113120007",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IHDR",
      "display" : "intersitielle Kontakttherapie, high dose rate therapy",
      "target" : [{
        "code" : "113120007",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "ILDR",
      "display" : "intersitielle Kontakttherapie, low dose rate therapy",
      "target" : [{
        "code" : "113120007",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "IPDR",
      "display" : "intersitielle Kontakttherapie, pulsed dose rate therapy",
      "target" : [{
        "code" : "113120007",
        "display" : "Intracavitary brachytherapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "MSIRT",
      "display" : "selektive interne Radio-Therapie",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "MPRRT",
      "display" : "Peptid-Radio-Rezeptor-Therapie",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "MPSMA",
      "display" : "PSMA-Therapie",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "MRJT",
      "display" : "Radiojod-Therapie",
      "target" : [{
        "code" : "64291000052106",
        "display" : "Radioactive iodine therapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "MRIT",
      "display" : "Radioimmun-Therapie",
      "target" : [{
        "code" : "118640001",
        "display" : "Radioimmunotherapy (procedure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M",
      "display" : "sonstige metabolische Radionuklidtherapie",
      "target" : [{
        "code" : "399315003",
        "display" : "Radionuclide therapy (procedure)",
        "equivalence" : "wider"
      }]
    },
    {
      "code" : "S",
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
