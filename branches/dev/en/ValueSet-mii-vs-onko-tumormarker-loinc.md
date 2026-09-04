# MII VS Onkologie Tumormarker LOINC - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Tumormarker LOINC**

## ValueSet: MII VS Onkologie Tumormarker LOINC 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tumormarker-loinc | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-04 | *Computable Name*:MII_VS_Onko_Tumormarker_LOINC |

 
Kuratierte LOINC-Codes der in der Onkologie gebraeuchlichen Tumormarker (Serum-/Plasma- bzw. Urin-Bestimmungen). Verwendung als Auswahlliste fuer Observation.code im Profil MII_PR_Onko_Tumormarker (Ableitung des KDS-Moduls Laborbefund). Die Liste ist nicht abschliessend gemeint: Weitere Laborwerte werden ueber das KDS-Modul Laborbefund abgebildet. 

 **References** 

* [MII PR Onkologie Tumormarker](StructureDefinition-mii-pr-onko-tumormarker.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tumormarker-loinc",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tumormarker-loinc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Onko_Tumormarker_LOINC",
  "title" : "MII VS Onkologie Tumormarker LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-04T16:20:32+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kuratierte LOINC-Codes der in der Onkologie gebraeuchlichen Tumormarker (Serum-/Plasma- bzw. Urin-Bestimmungen). Verwendung als Auswahlliste fuer Observation.code im Profil MII_PR_Onko_Tumormarker (Ableitung des KDS-Moduls Laborbefund). Die Liste ist nicht abschliessend gemeint: Weitere Laborwerte werden ueber das KDS-Modul Laborbefund abgebildet.",
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
        "code" : "2039-6",
        "display" : "Carcinoembryonic Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "1834-1",
        "display" : "Alpha-1-Fetoprotein [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "24108-3",
        "display" : "Cancer Ag 19-9 [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "10334-1",
        "display" : "Cancer Ag 125 [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "2857-1",
        "display" : "Prostate specific Ag [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "19080-1",
        "display" : "Choriogonadotropin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "21198-7",
        "display" : "Choriogonadotropin.beta subunit [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "9811-1",
        "display" : "Chromogranin A [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "20448-7",
        "display" : "Insulin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "2338-2",
        "display" : "Glucagon [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2333-3",
        "display" : "Gastrin [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "3125-2",
        "display" : "Vasoactive intestinal peptide [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2961-1",
        "display" : "Somatostatin [Mass/volume] in Plasma"
      },
      {
        "code" : "18253-5",
        "display" : "Serotonin [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "27057-9",
        "display" : "Serotonin [Mass/volume] in Serum"
      },
      {
        "code" : "2940-5",
        "display" : "Serotonin [Mass/volume] in Plasma"
      },
      {
        "code" : "2939-7",
        "display" : "Serotonin [Mass/volume] in Blood"
      },
      {
        "code" : "1695-6",
        "display" : "5-Hydroxyindoleacetate [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "31203-3",
        "display" : "5-Hydroxyindoleacetate [Mass/volume] in 24 hour Urine"
      },
      {
        "code" : "1694-9",
        "display" : "5-Hydroxyindoleacetate [Mass/volume] in Urine"
      },
      {
        "code" : "44288-9",
        "display" : "5-Hydroxyindoleacetate/Creatinine [Mass Ratio] in 24 hour Urine"
      },
      {
        "code" : "2141-0",
        "display" : "Corticotropin [Mass/volume] in Plasma"
      },
      {
        "code" : "1992-7",
        "display" : "Calcitonin [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2436-4",
        "display" : "Homovanillate [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "53595-5",
        "display" : "Homovanillate [Mass/volume] in 24 hour Urine"
      },
      {
        "code" : "13760-4",
        "display" : "Homovanillate/Creatinine [Mass Ratio] in 24 hour Urine"
      },
      {
        "code" : "11146-8",
        "display" : "Homovanillate/Creatinine [Mass Ratio] in Urine"
      },
      {
        "code" : "3122-9",
        "display" : "Vanillylmandelate [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "26706-2",
        "display" : "Vanillylmandelate [Mass/volume] in 24 hour Urine"
      },
      {
        "code" : "30571-4",
        "display" : "Vanillylmandelate/Creatinine [Mass Ratio] in 24 hour Urine"
      },
      {
        "code" : "3124-5",
        "display" : "Vanillylmandelate/Creatinine [Mass Ratio] in Urine"
      },
      {
        "code" : "27055-3",
        "display" : "Catecholamines Free [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "2058-6",
        "display" : "Catecholamines [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "2056-0",
        "display" : "Catecholamines [Mass/volume] in Plasma"
      },
      {
        "code" : "43108-0",
        "display" : "Metanephrine and Normetanephrine panel [Mass/volume] - Serum or Plasma"
      },
      {
        "code" : "57462-4",
        "display" : "Normetanephrine Free [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2669-0",
        "display" : "Normetanephrine [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2609-6",
        "display" : "Metanephrines [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "2671-6",
        "display" : "Normetanephrine [Mass/time] in 24 hour Urine"
      },
      {
        "code" : "2842-3",
        "display" : "Prolactin [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2963-7",
        "display" : "Somatotropin [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "15067-2",
        "display" : "Follitropin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "10501-5",
        "display" : "Lutropin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "3016-3",
        "display" : "Thyrotropin [Units/volume] in Serum or Plasma"
      },
      {
        "code" : "33358-3",
        "display" : "Protein.monoclonal [Mass/volume] in Serum or Plasma by Electrophoresis"
      },
      {
        "code" : "2465-3",
        "display" : "IgG [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2458-8",
        "display" : "IgA [Mass/volume] in Serum or Plasma"
      },
      {
        "code" : "2472-9",
        "display" : "IgM [Mass/volume] in Serum or Plasma"
      }]
    }]
  }
}

```
