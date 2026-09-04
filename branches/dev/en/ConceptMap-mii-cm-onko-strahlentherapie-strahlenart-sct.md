# MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping**

## ConceptMap: MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahlenart-sct | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2024-04-11 | *Computable Name*:MII CM Onko Strahlentherapie Strahlenart SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Strahlentherapie Strahlenart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. 

The radiation type covers both the kind of radiation and the kind of radioactive metabolites used. With the exception of Tb-161, all radiation types were available in SNOMED CT.

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-strahlentherapie-strahlenart-sct",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2027.0.0-ballot.rc1"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-strahlentherapie-strahlenart-sct",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII CM Onko Strahlentherapie Strahlenart SCT Mapping",
  "title" : "MII CM Onko Strahlentherapie Strahlenart SNOMED Mapping",
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
  "description" : "Mapping Strahlentherapie Strahlenart Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt, gegen SNOMED CT International 20240401. Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Die Zielcodes sind gegen neuere SNOMED-Releases nicht nachverifiziert; einzelne Konzepte koennen inzwischen inaktiviert oder ersetzt sein. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "UH",
      "display" : "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)",
      "target" : [{
        "code" : "290006006",
        "display" : "Photon (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "EL",
      "display" : "Elektronen",
      "target" : [{
        "code" : "46602004",
        "display" : "Electron (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "NE",
      "display" : "Neutronen",
      "target" : [{
        "code" : "58607005",
        "display" : "Neutron (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "PN",
      "display" : "Protonen (leichte Wasserstoffionen/H1/Leichtionen)",
      "target" : [{
        "code" : "89177007",
        "display" : "Proton (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SI",
      "display" : "Schwerionen (schwere Kohlenstoff-Ionen/C12/Sauerstoffionen/Heliumionen)",
      "target" : [{
        "code" : "312253001",
        "display" : "Heavy ion radiation (physical force)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "RO",
      "display" : "Weichstrahl (kV)",
      "target" : [{
        "code" : "286630003",
        "display" : "Soft X-radiation (physical force)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SO",
      "display" : "Sonstige (inklusive Mixed Beams, exklusive Nuklide)",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Lu-177",
      "display" : "Lu-177",
      "target" : [{
        "code" : "447553000",
        "display" : "Lutetium-177 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Lu-177",
      "display" : "Lu-177",
      "target" : [{
        "code" : "1263784000",
        "display" : "Radioligand therapy using lutetium (177-Lu) vipivotide tetraxetan (procedure)",
        "equivalence" : "narrower",
        "comment" : "Verwendung einer bestimmten Verbindung. Momentan wird Lu-177 hauptsächlich damit verwendet; es ist aber nicht auszuschließen, dass in Zukunft auch andere Substanzen zum Einsatz kommen."
      }]
    },
    {
      "code" : "J-131",
      "display" : "J131",
      "target" : [{
        "code" : "1368003",
        "display" : "Iodine-131 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Y-90",
      "display" : "Y-90",
      "target" : [{
        "code" : "14691008",
        "display" : "Yttrium-90 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Y-90",
      "display" : "Y-90",
      "target" : [{
        "code" : "764677008",
        "display" : "Selective internal radiotherapy of liver using yttrium (90-Y) labeled microspheres (procedure)",
        "equivalence" : "narrower",
        "comment" : "Kombination einer bestimmten Strahlequelle mit einer bestimmten Applikation (Microsphären). Andere Anwendungen sind theoretisch in Zukunft denkbar und werden von diesem Code nicht miterfasst."
      }]
    },
    {
      "code" : "Ra-223",
      "display" : "Ra-223",
      "target" : [{
        "code" : "24853006",
        "display" : "Radium-223 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Ac-225",
      "display" : "Ac-225",
      "target" : [{
        "code" : "32059002",
        "display" : "Actinium-225 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Sm-153",
      "display" : "Sm-153",
      "target" : [{
        "code" : "419804008",
        "display" : "Samarium-153 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tb-161",
      "display" : "Tb-161",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    },
    {
      "code" : "Sr-89",
      "display" : "Sr-89",
      "target" : [{
        "code" : "7770004",
        "display" : "Strontium-89 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Ir-192",
      "display" : "Ir-192",
      "target" : [{
        "code" : "48341001",
        "display" : "Iridium-192 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Co-60",
      "display" : "Co-60",
      "target" : [{
        "code" : "5405008",
        "display" : "Cobalt-60 (substance)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SONU",
      "display" : "Sonstige Nuklide",
      "target" : [{
        "code" : "89457008",
        "display" : "Radioactive isotope (substance)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
