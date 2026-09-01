# MII Value Set Onkologie - Weitere Klassifikationen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII Value Set Onkologie - Weitere Klassifikationen**

## ValueSet: MII Value Set Onkologie - Weitere Klassifikationen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Onko_Weitere_Klassifikationen |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors. 

 **References** 

* [MII PR Onkologie Weitere Klassifikationen](StructureDefinition-mii-pr-onko-weitere-klassifikationen.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-weitere-klassifikationen",
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
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-weitere-klassifikationen",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Weitere_Klassifikationen",
  "title" : "MII Value Set Onkologie - Weitere Klassifikationen",
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
  "description" : "Comprehensive collection of cancer staging systems and classification schemes used in oncology beyond TNM classification. This includes AJCC, FIGO, hematological classifications, and specialized organ-specific systems. Based on mCODE STU4 and German oBDS catalogue. Covers entity-specific classifications (e.g., FIGO for gynecological tumors), hematological classifications, and WHO classifications for CNS tumors.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "copyright" : "This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "444256004",
        "display" : "American Joint Commission on Cancer, Cancer Staging Manual, 6th edition neoplasm staging system (tumor staging)"
      },
      {
        "code" : "443830009",
        "display" : "American Joint Commission on Cancer, Cancer Staging Manual, 7th edition neoplasm staging system (tumor staging)"
      },
      {
        "code" : "897275008",
        "display" : "American Joint Commission on Cancer, Cancer Staging Manual, 8th edition tumor staging system"
      },
      {
        "code" : "254381008",
        "display" : "American Urological Association staging system for prostate cancer"
      },
      {
        "code" : "254373007",
        "display" : "Ann Arbor Hodgkin's disease tumor staging system"
      },
      {
        "code" : "254372002",
        "display" : "Ann Arbor lymphoma staging system"
      },
      {
        "code" : "254374001",
        "display" : "Ann Arbor non-Hodgkin's lymphoma tumour staging system"
      },
      {
        "code" : "254361007",
        "display" : "Astler-Coller staging system"
      },
      {
        "code" : "1149164009",
        "display" : "ACPS (Australian Clinico-pathological Staging) System for colorectal cancer"
      },
      {
        "code" : "1149099005",
        "display" : "Binet staging classification for chronic lymphocytic leukaemia"
      },
      {
        "code" : "385346008",
        "display" : "Breslow system for melanoma staging (tumor staging)"
      },
      {
        "code" : "385345007",
        "display" : "Clark system for melanoma staging (tumor staging)"
      },
      {
        "code" : "254375000",
        "display" : "Cotswolds Hodgkin's disease tumor staging system"
      },
      {
        "code" : "254360008",
        "display" : "Dukes staging system"
      },
      {
        "code" : "254379006",
        "display" : "Indiana University testicular tumour staging system"
      },
      {
        "code" : "254386003",
        "display" : "Federation Internationale de gynecologie et d'obstetrique staging of ovarian malignancy"
      },
      {
        "code" : "106250008",
        "display" : "FIGO staging of cervical carcinoma"
      },
      {
        "code" : "106244003",
        "display" : "FIGO staging of endometrial carcinoma"
      },
      {
        "code" : "106247005",
        "display" : "FIGO staging for epithelial tumor of ovary"
      },
      {
        "code" : "106245002",
        "display" : "FIGO staging of vulvar carcinoma"
      },
      {
        "code" : "106246001",
        "display" : "FIGO staging of vulvar melanoma"
      },
      {
        "code" : "254383006",
        "display" : "Federation internationale de gynecologie et d'obstetrique staging of gynaecological malignancy"
      },
      {
        "code" : "254385004",
        "display" : "Federation internationale de gynecologie et d'obstetrique staging of corpus uteri malignancy"
      },
      {
        "code" : "254384000",
        "display" : "FIGO Vaginal tumor staging"
      },
      {
        "code" : "1149162008",
        "display" : "International Staging System for multiple myeloma (staging scale)"
      },
      {
        "code" : "254380009",
        "display" : "Marshall Modification of Jewett-Strong staging system for urinary bladder tumor"
      },
      {
        "code" : "254362000",
        "display" : "Modified Astler-Coller staging system"
      },
      {
        "code" : "385359000",
        "display" : "Modified Dukes staging system (tumor staging)"
      },
      {
        "code" : "1149131009",
        "display" : "Rai staging system for chronic lymphocytic leukaemia"
      },
      {
        "code" : "1149163003",
        "display" : "Revised International Staging System for multiple myeloma (staging scale)"
      },
      {
        "code" : "254366002",
        "display" : "Stannard staging system for retinoblastoma"
      },
      {
        "code" : "254382001",
        "display" : "Trophoblastic malignancy staging system"
      },
      {
        "code" : "254378003",
        "display" : "Walter Reed testicular tumor staging system"
      },
      {
        "code" : "1287648008",
        "display" : "Masaoka-Koga stage classification for thymic malignancies (tumor staging)"
      },
      {
        "code" : "1287643004",
        "display" : "INRG (International Neuroblastoma Risk Group) staging system"
      },
      {
        "code" : "1287646007",
        "display" : "International Germ Cell Consensus Classification (tumor staging)"
      },
      {
        "code" : "716567001",
        "display" : "International Prognostic Index (assessment scale)"
      },
      {
        "code" : "708736003",
        "display" : "Follicular Lymphoma International Prognostic Index (assessment scale)"
      },
      {
        "code" : "763236005",
        "display" : "Mantle Cell Lymphoma International Prognostic Index (assessment scale)"
      }]
    },
    {
      "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
      "concept" : [{
        "code" : "C188404",
        "display" : "Union for International Cancer Control Stage"
      },
      {
        "code" : "C186527",
        "display" : "Atypical Teratoid/Rhabdoid Tumor Staging System"
      },
      {
        "code" : "C141206",
        "display" : "Chronic Lymphocytic Leukemia- Modified Rai Staging System"
      },
      {
        "code" : "C62575",
        "display" : "Collaborative Staging"
      },
      {
        "code" : "C128932",
        "display" : "Derkay Staging System"
      },
      {
        "code" : "C186536",
        "display" : "Embryonal Tumor with Multilayered Rosettes Staging System"
      },
      {
        "code" : "C140258",
        "display" : "Enneking Staging System"
      },
      {
        "code" : "C85407",
        "display" : "Evans Staging System"
      },
      {
        "code" : "C99408",
        "display" : "FIGO Staging System and Modified World Health Organization [WHO] Prognostic Scoring System for Gestational Trophoblastic Neoplasms"
      },
      {
        "code" : "C115132",
        "display" : "Hepatocellular Carcinoma by BCLC Stage"
      },
      {
        "code" : "C111073",
        "display" : "International Germ Cell Consensus Risk Classification"
      },
      {
        "code" : "C141168",
        "display" : "Lugano Classification Hodgkin Lymphoma by AJCC v8 Stage"
      },
      {
        "code" : "C141189",
        "display" : "Lugano Classification Adult Hodgkin Lymphoma by AJCC v8 Stage"
      },
      {
        "code" : "C141178",
        "display" : "Lugano Classification Childhood Hodgkin Lymphoma by AJCC v8 Stage"
      },
      {
        "code" : "C141158",
        "display" : "Lugano Classification Adult Non-Hodgkin Lymphoma by AJCC v8 Stage"
      },
      {
        "code" : "C186520",
        "display" : "Medulloblastoma Staging System"
      },
      {
        "code" : "C198826",
        "display" : "Modified Chang Staging System for Medulloblastoma"
      },
      {
        "code" : "C177308",
        "display" : "Non-Seminomatous Germ Cell Tumor International Germ Cell Consensus Risk Classification"
      },
      {
        "code" : "C186567",
        "display" : "Pineoblastoma Staging System"
      },
      {
        "code" : "C123333",
        "display" : "Reese-Ellsworth Staging System"
      },
      {
        "code" : "C177309",
        "display" : "Seminoma International Germ Cell Tumor Consensus Risk Classification"
      },
      {
        "code" : "C112006",
        "display" : "Thymoma by Masaoka-Koga Stage"
      },
      {
        "code" : "C18008",
        "display" : "TNM Ovary Neoplasm Staging"
      },
      {
        "code" : "C141685",
        "display" : "Veterans Administration Lung Study Group Clinical Classification"
      },
      {
        "code" : "C18214",
        "display" : "Whitmore-Jewett Staging System"
      }]
    }]
  }
}

```
