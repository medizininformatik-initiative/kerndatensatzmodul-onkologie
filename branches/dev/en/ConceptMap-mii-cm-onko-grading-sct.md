# MII CM Onko Grading SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Grading SNOMED Mapping**

## ConceptMap: MII CM Onko Grading SNOMED Mapping (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-grading-sct | *Version*:2026.0.3 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Grading SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Grading Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. 

Grading is part of the histology module.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-grading-sct",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-grading-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Grading SCT Mapping",
  "title" : "MII CM Onko Grading SNOMED Mapping",
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
  "description" : "Mapping Grading Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "0",
      "display" : "primär erworbene Melanose ohne zelluläre Atypien (nur beim malignen Melanom der Konjunktiva)",
      "target" : [{
        "code" : "415175000",
        "display" : "Primary acquired melanosis of conjunctiva without atypia (disorder)",
        "equivalence" : "equivalent",
        "comment" : "Hier der Vollständigkeit aufgeführt."
      }]
    },
    {
      "code" : "1",
      "display" : "gut differenziert",
      "target" : [{
        "code" : "373375007",
        "display" : "Well differentiated histological grade finding (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "mäßig differenziert",
      "target" : [{
        "code" : "373377004",
        "display" : "Moderately differentiated histological grade finding (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "schlecht differenziert",
      "target" : [{
        "code" : "373373000",
        "display" : "Poorly differentiated histological grade finding (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "undifferenziert",
      "target" : [{
        "code" : "373374006",
        "display" : "Undifferentiated histological grade finding (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "5",
      "display" : "nur für C61, TNM8",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "wird im derzeitigen oBDS nicht mehr kodiert, kein passender SNOMED CT Code notwendig"
      }]
    },
    {
      "code" : "X",
      "display" : "nicht bestimmbar",
      "target" : [{
        "code" : "1155705000",
        "display" : "GX: Histologic grade cannot be assessed (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "L",
      "display" : "low grade (G1 oder G2)",
      "target" : [{
        "code" : "1155708003",
        "display" : "Low histologic grade (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M",
      "display" : "intermediate grade (G2 oder G3)",
      "target" : [{
        "code" : "1286893008",
        "display" : "Intermediate histologic grade (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "H",
      "display" : "high grade (G3 oder G4)",
      "target" : [{
        "code" : "1155707008",
        "display" : "High histologic grade (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "B",
      "display" : "Borderline",
      "target" : [{
        "code" : "1268929003",
        "display" : "GB: Borderline tumor (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T",
      "display" : "trifft nicht zu",
      "target" : [{
        "code" : "385432009",
        "display" : "Not applicable (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
