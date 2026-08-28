# MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC**

## ValueSet: MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC |

 
LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7. 

 **References** 

* [MII PR Onkologie Allgemeiner Leistungszustand nach Karnofsky](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-karnofsky.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
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
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-karnofsky-loinc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Allgemeiner_Leistungszustand_Karnofsky_LOINC",
  "title" : "MII VS Onkologie Allgemeiner Leistungszustand Karnofsky LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T12:47:27+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "LOINC-Answer-Codes für den Karnofsky Performance Status. Enumerierte Fassung der LOINC-Answer-List LL4986-7.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA29175-9",
        "display" : "Normal; no complaints; no evidence of disease"
      },
      {
        "code" : "LA29176-7",
        "display" : "Able to carry on normal activity; minor signs or symptoms of disease"
      },
      {
        "code" : "LA29177-5",
        "display" : "Normal activity with effort; some signs or symptoms of disease"
      },
      {
        "code" : "LA29178-3",
        "display" : "Cares for self; unable to carry on normal activity or do active work"
      },
      {
        "code" : "LA29179-1",
        "display" : "Requires occasional assistance but is able to care for most needs"
      },
      {
        "code" : "LA29180-9",
        "display" : "Requires considerable assistance and frequent medical care"
      },
      {
        "code" : "LA29181-7",
        "display" : "Disabled; requires special care and assistance"
      },
      {
        "code" : "LA29182-5",
        "display" : "Severely disabled; hospitalization is indicated, although death not imminent"
      },
      {
        "code" : "LA29183-3",
        "display" : "Very sick; hospitalization necessary; active supportive treatment necessary"
      },
      {
        "code" : "LA29184-1",
        "display" : "Moribund; fatal processes progressing rapidly"
      },
      {
        "code" : "LA9627-6",
        "display" : "Dead"
      }]
    }]
  }
}

```
