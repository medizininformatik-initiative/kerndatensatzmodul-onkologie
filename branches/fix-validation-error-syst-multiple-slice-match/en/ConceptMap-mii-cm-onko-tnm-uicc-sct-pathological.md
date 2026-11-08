# MII CM Onko Pathological TNM UICC SNOMED - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Pathological TNM UICC SNOMED**

## ConceptMap: MII CM Onko Pathological TNM UICC SNOMED (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct-pathological | *Version*:2027.0.0-ballot.1 |
| Active as of 2026-11-04 | *Computable Name*:MII CM Onko Pathological TNM UICC SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping pathological TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt gegen SNOMED CT International 20240401; am 2026-11-04 gegen International 20261001 nachkuratiert (alle Zielkonzepte auf Aktivitaet geprueft, inaktivierte Ziele ersetzt, seit 2024 neu veroeffentlichte Konzepte fuer bisher unbesetzte Werte ergaenzt, Ober-/Unterkonzepte mit equivalence wider/narrower nachgetragen). Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich. 

The codings for the UICC TNM symbols are presented here. The UICC concepts have been part of the international SNOMED distribution since the beginning of 2025.

Unfortunately, the granularity and aggregation of the concepts have been chosen in such a way that the concepts of clinical and pathological TNM are handled as separate concepts.

The table below represents one possible mapping to the pathological TNMs (cTNMs).



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-tnm-uicc-sct-pathological",
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
        "valueString" : "2027.0.0-ballot.1"
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
    "valueDate" : "2026-09-15"
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
      "start" : "2027"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-tnm-uicc-sct-pathological",
  "version" : "2027.0.0-ballot.1",
  "name" : "MII CM Onko Pathological TNM UICC SCT Mapping",
  "title" : "MII CM Onko Pathological TNM UICC SNOMED",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-11-04",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping pathological TNM UICC Codes zu SNOMED-CT STATUS DIESER ZUORDNUNG: 2024 erstellt gegen SNOMED CT International 20240401; am 2026-11-04 gegen International 20261001 nachkuratiert (alle Zielkonzepte auf Aktivitaet geprueft, inaktivierte Ziele ersetzt, seit 2024 neu veroeffentlichte Konzepte fuer bisher unbesetzte Werte ergaenzt, Ober-/Unterkonzepte mit equivalence wider/narrower nachgetragen). Sie ist WEDER OFFIZIELL ENDORSED NOCH FINAL QUALITAETSGESICHERT - es handelt sich um einen projektseitigen Arbeitsstand, nicht um eine abgestimmte Referenz. Vor einer Nutzung in Produktivsystemen sind fachliche Pruefung und ein Abgleich gegen die eingesetzte SNOMED-Version erforderlich.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "group" : [{
    "source" : "https://www.uicc.org/resources/tnm",
    "target" : "http://snomed.info/sct",
    "targetVersion" : "http://snomed.info/sct/900000000000207008/version/20261001",
    "element" : [{
      "code" : "y",
      "display" : "y",
      "target" : [{
        "code" : "421755005",
        "display" : "Tumor staging descriptor y (tumor staging)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "r",
      "display" : "r",
      "target" : [{
        "code" : "421188008",
        "display" : "Tumor staging descriptor r (tumor staging)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "a",
      "display" : "a",
      "target" : [{
        "code" : "421426001",
        "display" : "Tumor staging descriptor a (tumor staging)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "c",
      "display" : "c",
      "target" : [{
        "code" : "1397043001",
        "display" : "Union for International Cancer Control c prefix (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260601"
      }]
    },
    {
      "code" : "p",
      "display" : "p",
      "target" : [{
        "code" : "1397044007",
        "display" : "Union for International Cancer Control p prefix (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260601"
      }]
    },
    {
      "code" : "u",
      "display" : "u",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "TX",
      "display" : "TX",
      "target" : [{
        "code" : "1352532000",
        "display" : "Union for International Cancer Control pTX (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T0",
      "display" : "T0",
      "target" : [{
        "code" : "1352552004",
        "display" : "Union for International Cancer Control pT0 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Ta",
      "display" : "Ta",
      "target" : [{
        "code" : "1352539009",
        "display" : "Union for International Cancer Control pTa (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis",
      "display" : "Tis",
      "target" : [{
        "code" : "1352558000",
        "display" : "Union for International Cancer Control pTis (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis(LAMN)",
      "display" : "Tis(LAMN)",
      "target" : [{
        "code" : "1352555002",
        "display" : "Union for International Cancer Control pTis(LAMN) (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis(DCIS)",
      "display" : "Tis(DCIS)",
      "target" : [{
        "code" : "1352535003",
        "display" : "Union for International Cancer Control pTis(DCIS) (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis(LCIS)",
      "display" : "Tis(LCIS)",
      "target" : [{
        "code" : "1351847000",
        "display" : "Union for International Cancer Control pTis(LCIS) (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis(Paget)",
      "display" : "Tis(Paget)",
      "target" : [{
        "code" : "1352563001",
        "display" : "Union for International Cancer Control pTis(Paget) (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Tis(pu)",
      "display" : "Tis(pu)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "Tis(pd)",
      "display" : "Tis(pd)",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "T1",
      "display" : "T1",
      "target" : [{
        "code" : "1352559008",
        "display" : "Union for International Cancer Control pT1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1mi",
      "display" : "T1mi",
      "target" : [{
        "code" : "1352562006",
        "display" : "Union for International Cancer Control pT1mi (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1a",
      "display" : "T1a",
      "target" : [{
        "code" : "1352560003",
        "display" : "Union for International Cancer Control pT1a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1a1",
      "display" : "T1a1",
      "target" : [{
        "code" : "1352550007",
        "display" : "Union for International Cancer Control pT1a1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1a2",
      "display" : "T1a2",
      "target" : [{
        "code" : "1352566009",
        "display" : "Union for International Cancer Control pT1a2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1b",
      "display" : "T1b",
      "target" : [{
        "code" : "1352543008",
        "display" : "Union for International Cancer Control pT1b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1b1",
      "display" : "T1b1",
      "target" : [{
        "code" : "1352536002",
        "display" : "Union for International Cancer Control pT1b1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1b2",
      "display" : "T1b2",
      "target" : [{
        "code" : "1352554003",
        "display" : "Union for International Cancer Control pT1b2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1c",
      "display" : "T1c",
      "target" : [{
        "code" : "1352537006",
        "display" : "Union for International Cancer Control pT1c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1c1",
      "display" : "T1c1",
      "target" : [{
        "code" : "1352544002",
        "display" : "Union for International Cancer Control pT1c1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1c2",
      "display" : "T1c2",
      "target" : [{
        "code" : "1352541005",
        "display" : "Union for International Cancer Control pT1c2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1c3",
      "display" : "T1c3",
      "target" : [{
        "code" : "1352549007",
        "display" : "Union for International Cancer Control pT1c3 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T1d",
      "display" : "T1d",
      "target" : [{
        "code" : "1352568005",
        "display" : "Union for International Cancer Control pT1d (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2",
      "display" : "T2",
      "target" : [{
        "code" : "1352545001",
        "display" : "Union for International Cancer Control pT2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2a",
      "display" : "T2a",
      "target" : [{
        "code" : "1352564007",
        "display" : "Union for International Cancer Control pT2a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2a1",
      "display" : "T2a1",
      "target" : [{
        "code" : "1352546000",
        "display" : "Union for International Cancer Control pT2a1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2a2",
      "display" : "T2a2",
      "target" : [{
        "code" : "1352567000",
        "display" : "Union for International Cancer Control pT2a2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2b",
      "display" : "T2b",
      "target" : [{
        "code" : "1352547009",
        "display" : "Union for International Cancer Control pT2b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2c",
      "display" : "T2c2",
      "target" : [{
        "code" : "1352569002",
        "display" : "Union for International Cancer Control pT2c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T2d",
      "display" : "T2d",
      "target" : [{
        "code" : "1352548004",
        "display" : "Union for International Cancer Control pT2d (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3",
      "display" : "T3",
      "target" : [{
        "code" : "1352533005",
        "display" : "Union for International Cancer Control pT3 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3a",
      "display" : "T3a",
      "target" : [{
        "code" : "1352551006",
        "display" : "Union for International Cancer Control pT3a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3b",
      "display" : "T3b",
      "target" : [{
        "code" : "1352534004",
        "display" : "Union for International Cancer Control pT3b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3c",
      "display" : "T3c",
      "target" : [{
        "code" : "1352556001",
        "display" : "Union for International Cancer Control pT3c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3d",
      "display" : "Td3",
      "target" : [{
        "code" : "1352531007",
        "display" : "Union for International Cancer Control pT3d (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T3e",
      "display" : "T3e",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten (cT3e, ycT3e, aT3e vorhanden, pT3e nicht)"
      }]
    },
    {
      "code" : "T4",
      "display" : "T4",
      "target" : [{
        "code" : "1352553009",
        "display" : "Union for International Cancer Control pT4 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T4a",
      "display" : "T4a",
      "target" : [{
        "code" : "1352538001",
        "display" : "Union for International Cancer Control pT4a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T4b",
      "display" : "T4b",
      "target" : [{
        "code" : "1352561004",
        "display" : "Union for International Cancer Control pT4b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T4c",
      "display" : "T4c",
      "target" : [{
        "code" : "1352540006",
        "display" : "Union for International Cancer Control pT4c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T4d",
      "display" : "T4d",
      "target" : [{
        "code" : "1352557005",
        "display" : "Union for International Cancer Control pT4d (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T4e",
      "display" : "T4e",
      "target" : [{
        "code" : "1352542003",
        "display" : "Union for International Cancer Control pT4e (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "m",
      "display" : "m",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "2",
      "display" : "2",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "3",
      "display" : "3",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "4",
      "display" : "4",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "5",
      "display" : "5",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "6",
      "display" : "6",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "7",
      "display" : "7",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "8",
      "display" : "8",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "9",
      "display" : "9",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "10",
      "display" : "10",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "Zaehlwert (Anzahl multipler Primaertumoren zum Suffix m), kein terminologisches Konzept; gehoert in ein numerisches Element, nicht nach SNOMED CT"
      }]
    },
    {
      "code" : "NX",
      "display" : "Nx",
      "target" : [{
        "code" : "1352605004",
        "display" : "Union for International Cancer Control pNX (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N0",
      "display" : "N0",
      "target" : [{
        "code" : "1352621009",
        "display" : "Union for International Cancer Control pN0 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N1",
      "display" : "N1",
      "target" : [{
        "code" : "1352614009",
        "display" : "Union for International Cancer Control pN1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N1mi",
      "display" : "N1(mi)",
      "target" : [{
        "code" : "1352620005",
        "display" : "Union for International Cancer Control pN1mi (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N1a",
      "display" : "N1a",
      "target" : [{
        "code" : "1352619004",
        "display" : "Union for International Cancer Control pN1a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N1b",
      "display" : "N1b",
      "target" : [{
        "code" : "1352616006",
        "display" : "Union for International Cancer Control pN1b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N1c",
      "display" : "N1c",
      "target" : [{
        "code" : "1352617002",
        "display" : "Union for International Cancer Control pN1c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N2",
      "display" : "N2",
      "target" : [{
        "code" : "1352610000",
        "display" : "Union for International Cancer Control pN2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N2a",
      "display" : "N2a",
      "target" : [{
        "code" : "1352608002",
        "display" : "Union for International Cancer Control pN2a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N2b",
      "display" : "N2b",
      "target" : [{
        "code" : "1352612008",
        "display" : "Union for International Cancer Control pN2b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N2c",
      "display" : "N2c",
      "target" : [{
        "code" : "1352613003",
        "display" : "Union for International Cancer Control pN2c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N3",
      "display" : "N3",
      "target" : [{
        "code" : "1352622002",
        "display" : "Union for International Cancer Control pN3 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N3a",
      "display" : "N3a",
      "target" : [{
        "code" : "1352618007",
        "display" : "Union for International Cancer Control pN3a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N3b",
      "display" : "N3b",
      "target" : [{
        "code" : "1352623007",
        "display" : "Union for International Cancer Control pN3b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N3c",
      "display" : "N3c",
      "target" : [{
        "code" : "1352606003",
        "display" : "Union for International Cancer Control pN3c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M0",
      "display" : "M0",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "pM0 ist nach UICC nicht zulaessig; in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "M1",
      "display" : "M1",
      "target" : [{
        "code" : "1352583000",
        "display" : "Union for International Cancer Control pM1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M1a",
      "display" : "M1a",
      "target" : [{
        "code" : "1352573004",
        "display" : "Union for International Cancer Control pM1a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M1b",
      "display" : "M1b",
      "target" : [{
        "code" : "1352578008",
        "display" : "Union for International Cancer Control pM1b (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M1c",
      "display" : "M1c",
      "target" : [{
        "code" : "1352574005",
        "display" : "Union for International Cancer Control pM1c (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "M1d",
      "display" : "M1d",
      "target" : [{
        "code" : "1352580002",
        "display" : "Union for International Cancer Control pM1d (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "MX",
      "display" : "MX",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "i+",
      "display" : "i+",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "i-",
      "display" : "i-",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "mol+",
      "display" : "mol+",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "mol-",
      "display" : "mol-",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "sn",
      "display" : "sn",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein eigenstaendiges Suffix-Konzept; SNOMED CT praekoordiniert die Marker als UICC-Kategoriewerte (z. B. pN0(i+) 1352624001, pN0(mol+) 1352609005, pN1mi(sn)); Abbildung nur auf Kategorieebene moeglich (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "L0",
      "display" : "L0",
      "target" : [{
        "code" : "1380127005",
        "display" : "Union for International Cancer Control L0 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "L1",
      "display" : "L1",
      "target" : [{
        "code" : "1380125002",
        "display" : "Union for International Cancer Control L1 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "LX",
      "display" : "LX",
      "target" : [{
        "code" : "1380126001",
        "display" : "Union for International Cancer Control LX (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "V0",
      "display" : "V0",
      "target" : [{
        "code" : "1380138005",
        "display" : "Union for International Cancer Control V0 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "V1",
      "display" : "V1",
      "target" : [{
        "code" : "1380137000",
        "display" : "Union for International Cancer Control V1 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "V2",
      "display" : "V2",
      "target" : [{
        "code" : "1380139002",
        "display" : "Union for International Cancer Control V2 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "VX",
      "display" : "VX",
      "target" : [{
        "code" : "1380136009",
        "display" : "Union for International Cancer Control VX (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20251101"
      }]
    },
    {
      "code" : "Pn0",
      "display" : "Pn0",
      "target" : [{
        "code" : "1386331003",
        "display" : "Union for International Cancer Control Pn0 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"
      }]
    },
    {
      "code" : "Pn1",
      "display" : "Pn1",
      "target" : [{
        "code" : "1386332005",
        "display" : "Union for International Cancer Control Pn1 (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"
      }]
    },
    {
      "code" : "PnX",
      "display" : "PnX",
      "target" : [{
        "code" : "1386316007",
        "display" : "Union for International Cancer Control PnX (qualifier value)",
        "equivalence" : "equivalent",
        "comment" : "ergaenzt 2026-11-04: Konzept seit SNOMED CT International 20260201"
      }]
    },
    {
      "code" : "S0",
      "display" : "S0",
      "target" : [{
        "code" : "313139000",
        "display" : "Serum tumor marker stage S0 (finding)",
        "equivalence" : "equivalent",
        "comment" : "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "S1",
      "display" : "S1",
      "target" : [{
        "code" : "313140003",
        "display" : "Serum tumor marker stage S1 (finding)",
        "equivalence" : "equivalent",
        "comment" : "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "S2",
      "display" : "S2",
      "target" : [{
        "code" : "313141004",
        "display" : "Serum tumor marker stage S2 (finding)",
        "equivalence" : "equivalent",
        "comment" : "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "S3",
      "display" : "S3",
      "target" : [{
        "code" : "313142006",
        "display" : "Serum tumor marker stage S3 (finding)",
        "equivalence" : "equivalent",
        "comment" : "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "SX",
      "display" : "SX",
      "target" : [{
        "code" : "313138008",
        "display" : "Serum tumor marker stage SX (finding)",
        "equivalence" : "equivalent",
        "comment" : "Finding-Konzept (seit 2002), kein UICC Qualifier Value; semantisch gleich, fuer Bindings an Qualifier-Wertemengen aber ungeeignet (Stand Intl 20261001)"
      }]
    },
    {
      "code" : "okk",
      "display" : "Stadium X",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "in der UICC-Hierarchie von SNOMED CT International 20261001 (<<1352503003) nicht enthalten"
      }]
    },
    {
      "code" : "0",
      "display" : "Stadium 0",
      "target" : [{
        "code" : "1352916008",
        "display" : "Union for International Cancer Control stage 0 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "0a",
      "display" : "Stadium 0a",
      "target" : [{
        "code" : "1352825003",
        "display" : "Union for International Cancer Control stage 0a (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "0is",
      "display" : "Stadium 0is",
      "target" : [{
        "code" : "1352895007",
        "display" : "Union for International Cancer Control stage 0is (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "I",
      "display" : "Stadium I",
      "target" : [{
        "code" : "1352927005",
        "display" : "Union for International Cancer Control stage I (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IA1",
      "display" : "Stadium IA1",
      "target" : [{
        "code" : "1352890002",
        "display" : "Union for International Cancer Control stage IA1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IA2",
      "display" : "Stadium IA2",
      "target" : [{
        "code" : "1352945005",
        "display" : "Union for International Cancer Control stage IA2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IA3",
      "display" : "Stadium IA3",
      "target" : [{
        "code" : "1352854009",
        "display" : "Union for International Cancer Control stage IA3 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IB",
      "display" : "Stadium IB",
      "target" : [{
        "code" : "1352911003",
        "display" : "Union for International Cancer Control stage IB (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IB1",
      "display" : "Stadium IB1",
      "target" : [{
        "code" : "1352816009",
        "display" : "Union for International Cancer Control stage IB1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IB2",
      "display" : "Stadium IB2",
      "target" : [{
        "code" : "1352864000",
        "display" : "Union for International Cancer Control stage IB2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IC",
      "display" : "Stadium IC",
      "target" : [{
        "code" : "1352919001",
        "display" : "Union for International Cancer Control stage IC (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IS",
      "display" : "Stadium IS",
      "target" : [{
        "code" : "1352880005",
        "display" : "Union for International Cancer Control stage IS (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "II",
      "display" : "Stadium II",
      "target" : [{
        "code" : "1352944009",
        "display" : "Union for International Cancer Control stage II (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIA",
      "display" : "Stadium IIA",
      "target" : [{
        "code" : "1352856006",
        "display" : "Union for International Cancer Control stage IIA (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIA1",
      "display" : "Stadium IIA1",
      "target" : [{
        "code" : "1352829009",
        "display" : "Union for International Cancer Control stage IIA1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIA2",
      "display" : "Stadium IIA2",
      "target" : [{
        "code" : "1352892005",
        "display" : "Union for International Cancer Control stage IIA2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIB",
      "display" : "Stadium IIB",
      "target" : [{
        "code" : "1352861008",
        "display" : "Union for International Cancer Control stage IIB (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIC",
      "display" : "Stadium IIC",
      "target" : [{
        "code" : "1352831000",
        "display" : "Union for International Cancer Control stage IIC (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "III",
      "display" : "Stadium III",
      "target" : [{
        "code" : "1352871005",
        "display" : "Union for International Cancer Control stage III (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIA",
      "display" : "Stadium IIIA",
      "target" : [{
        "code" : "1352915007",
        "display" : "Union for International Cancer Control stage IIIA (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIA1",
      "display" : "Stadium IIIA1",
      "target" : [{
        "code" : "1352935008",
        "display" : "Union for International Cancer Control stage IIIA1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIA2",
      "display" : "Stadium IIIA2",
      "target" : [{
        "code" : "1352882002",
        "display" : "Union for International Cancer Control stage IIIA2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIB",
      "display" : "Stadium IIIB",
      "target" : [{
        "code" : "1352896008",
        "display" : "Union for International Cancer Control stage IIIB (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIC",
      "display" : "Stadium IIIC",
      "target" : [{
        "code" : "1352848008",
        "display" : "Union for International Cancer Control stage IIIC (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIC1",
      "display" : "Stadium IIIC1",
      "target" : [{
        "code" : "1352862001",
        "display" : "Union for International Cancer Control stage IIIC1 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IIIC2",
      "display" : "Stadium IIIC2",
      "target" : [{
        "code" : "1352833002",
        "display" : "Union for International Cancer Control stage IIIC2 (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IV",
      "display" : "Stadium IV",
      "target" : [{
        "code" : "1352913000",
        "display" : "Union for International Cancer Control stage IV (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IVA",
      "display" : "Stadium IVA",
      "target" : [{
        "code" : "1352822000",
        "display" : "Union for International Cancer Control stage IVA (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IVB",
      "display" : "Stadium IVB",
      "target" : [{
        "code" : "1352836005",
        "display" : "Union for International Cancer Control stage IVB (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "IVC",
      "display" : "Stadium IVC",
      "target" : [{
        "code" : "1352921006",
        "display" : "Union for International Cancer Control stage IVC (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
