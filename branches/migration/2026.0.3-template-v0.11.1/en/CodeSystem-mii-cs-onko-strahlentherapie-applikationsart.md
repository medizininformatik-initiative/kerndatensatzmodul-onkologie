# MII CS Onkologie Strahlentherapie Applikationsart - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Applikationsart**

## CodeSystem: MII CS Onkologie Strahlentherapie Applikationsart 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_CS_Onko_Strahlentherapie_Applikationsart |

 
oBDS-spezifisches Codesystem für Klassifikation von Intention der OP 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Strahlentherapie Applikationsart](ValueSet-mii-vs-onko-strahlentherapie-applikationsart.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-strahlentherapie-applikationsart",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Strahlentherapie_Applikationsart",
  "title" : "MII CS Onkologie Strahlentherapie Applikationsart",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T18:25:22+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart",
  "content" : "complete",
  "count" : 27,
  "concept" : [{
    "code" : "P",
    "display" : "perkutan (Teletherapie)"
  },
  {
    "code" : "P-ST",
    "display" : "perkutan stereotaktisch"
  },
  {
    "code" : "P-4D",
    "display" : "perkutan, atemgetriggert"
  },
  {
    "code" : "P-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert"
  },
  {
    "code" : "PRCN",
    "display" : "perkutan ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-ST",
    "display" : "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-4D",
    "display" : "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ",
    "display" : "perkutan mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-ST",
    "display" : "perkutan, stereotaktisch mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-4D",
    "display" : "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert, mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "K",
    "display" : "endokavitäre Kontakttherapie"
  },
  {
    "code" : "KHDR",
    "display" : "endokavitäre Kontakttherapie, high dose rate therapy"
  },
  {
    "code" : "KLDR",
    "display" : "endokavitäre Kontakttherapie, low dose rate therapy"
  },
  {
    "code" : "KPDR",
    "display" : "endokavitäre Kontakttherapie, pulsed dose rate therapy"
  },
  {
    "code" : "I",
    "display" : "intersitielle Kontakttherapie"
  },
  {
    "code" : "IHDR",
    "display" : "intersitielle Kontakttherapie, high dose rate therapy"
  },
  {
    "code" : "ILDR",
    "display" : "intersitielle Kontakttherapie, low dose rate therapy"
  },
  {
    "code" : "IPDR",
    "display" : "intersitielle Kontakttherapie, pulsed dose rate therapy"
  },
  {
    "code" : "MSIRT",
    "display" : "selektive interne Radio-Therapie"
  },
  {
    "code" : "MPRRT",
    "display" : "Peptid-Radio-Rezeptor-Therapie"
  },
  {
    "code" : "MPSMA",
    "display" : "PSMA-Therapie"
  },
  {
    "code" : "MRJT",
    "display" : "Radiojod-Therapie"
  },
  {
    "code" : "MRIT",
    "display" : "Radioimmun-Therapie"
  },
  {
    "code" : "M",
    "display" : "sonstige metabolische Radionuklidtherapie"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  }]
}

```
