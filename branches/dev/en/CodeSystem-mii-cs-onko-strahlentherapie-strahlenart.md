# MII CS Onkologie Strahlentherapie Strahlenart - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Strahlenart**

## CodeSystem: MII CS Onkologie Strahlentherapie Strahlenart 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_CS_Onko_Strahlentherapie_Strahlenart |

 
oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Strahlentherapie Strahlenart](ValueSet-mii-vs-onko-strahlentherapie-strahlenart.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-strahlentherapie-strahlenart",
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
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_CS_Onko_Strahlentherapie_Strahlenart",
  "title" : "MII CS Onkologie Strahlentherapie Strahlenart",
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
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-strahlenart",
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "UH",
    "display" : "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
  },
  {
    "code" : "EL",
    "display" : "Elektronen"
  },
  {
    "code" : "NE",
    "display" : "Neutronen"
  },
  {
    "code" : "PN",
    "display" : "Protonen (leichte Wasserstoffionen/H1/Leichtionen)"
  },
  {
    "code" : "SI",
    "display" : "Schwerionen (schwere Kohlenstoff-Ionen/C12/Sauerstoffionen/Heliumionen)"
  },
  {
    "code" : "RO",
    "display" : "Weichstrahl (kV)"
  },
  {
    "code" : "SO",
    "display" : "Sonstige (inklusive Mixed Beams, exklusive Nuklide)"
  },
  {
    "code" : "Lu-177",
    "display" : "Lu-177"
  },
  {
    "code" : "J-131",
    "display" : "J131"
  },
  {
    "code" : "Y-90",
    "display" : "Y-90"
  },
  {
    "code" : "Ra-223",
    "display" : "Ra-223"
  },
  {
    "code" : "Ac-225",
    "display" : "Ac-225"
  },
  {
    "code" : "Sm-153",
    "display" : "Sm-153"
  },
  {
    "code" : "Tb-161",
    "display" : "Tb-161"
  },
  {
    "code" : "Sr-89",
    "display" : "Sr-89"
  },
  {
    "code" : "Ir-192",
    "display" : "Ir-192"
  },
  {
    "code" : "Co-60",
    "display" : "Co-60"
  },
  {
    "code" : "SONU",
    "display" : "Sonstige Nuklide"
  }]
}

```
