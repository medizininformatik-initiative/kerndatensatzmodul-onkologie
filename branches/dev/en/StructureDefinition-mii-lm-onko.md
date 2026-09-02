# MII LM Onkologie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Onkologie**

## Logical Model: MII LM Onkologie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie | *Version*:2026.0.3 |
| Active as of 2026-09-02 | *Computable Name*:MII_LM_Onko |

 
MII LogicalModel Modul Onkologie 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-lm-onko.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-onko.csv), [Excel](../StructureDefinition-mii-lm-onko.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-onko",
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
    "profile" : ["http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablestructuredefinition",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablestructuredefinition"]
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
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-usage",
    "valueMarkdown" : "Use this logical model as the module-specific information model for the Medical Informatics Initiative core dataset. The model describes clinically or administratively relevant information in a domain-oriented form and provides a bridge between the conceptual content specification and the corresponding technical FHIR profiles. It is a pattern for describing the intended content model and is not intended to be exchanged as a concrete FHIR resource instance. Implementers should use it to understand the scope, semantics, and structure of the module before applying the related FHIR profiles and mappings."
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie",
  "version" : "2026.0.3",
  "name" : "MII_LM_Onko",
  "title" : "MII LM Onkologie",
  "status" : "active",
  "date" : "2026-09-02T02:28:56+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "MII LogicalModel Modul Onkologie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "FHIR",
    "name" : "Onkologie LogicalModel FHIR Mapping"
  },
  {
    "identity" : "oBDS",
    "name" : "Onkologie LogicalModel oBDS Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/Onkologie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "Onkologie",
      "path" : "Onkologie",
      "short" : "MII LM Onkologie",
      "definition" : "MII LogicalModel Modul Onkologie"
    },
    {
      "id" : "Onkologie.Diagnose",
      "path" : "Onkologie.Diagnose",
      "short" : "Diagnose",
      "definition" : "Diagnose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition"
      },
      {
        "identity" : "oBDS",
        "map" : "5",
        "comment" : "Diagnose - oBDS Kapitel 5. Amtlicher Feldkatalog: https://basisdatensatz.de"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseICDCode",
      "path" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseICDCode",
      "short" : "Primärtumor Tumordiagnose ICD Code",
      "definition" : "Kodierung einer meldepflichtigen Erkrankung nach der aktuellen ICD-GM Version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
      },
      {
        "identity" : "oBDS",
        "map" : "5.1",
        "comment" : "Primärtumor Tumordiagnose ICD Code - Kodierung nach aktueller ICD-10-GM"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseICDVersion",
      "path" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseICDVersion",
      "short" : "Primärtumor Tumordiagnose ICD-Version",
      "definition" : "Bezeichnung der zur Kodierung verwendeten ICD-GM Version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').version"
      },
      {
        "identity" : "oBDS",
        "map" : "5.2",
        "comment" : "Primärtumor Tumordiagnose ICD-Version"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseText",
      "path" : "Onkologie.Diagnose.PrimaertumorTumordiagnoseText",
      "short" : "Primärtumor Tumordiagnose Text",
      "definition" : "Bezeichnung einer meldepflichtigen Erkrankung.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.text"
      },
      {
        "identity" : "oBDS",
        "map" : "5.3",
        "comment" : "Primärtumor Tumordiagnose Text - Klartextbezeichnung der meldepflichtigen Erkrankung"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorTopographieICDO",
      "path" : "Onkologie.Diagnose.PrimaertumorTopographieICDO",
      "short" : "Primärtumor Topographie ICD-O",
      "definition" : "Bezeichnung der Topographie einer Erkrankung nach der aktuellen ICD-O Version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').code"
      },
      {
        "identity" : "oBDS",
        "map" : "5.4",
        "comment" : "Primärtumor Topographie ICD-O"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorTopographieICDOVersion",
      "path" : "Onkologie.Diagnose.PrimaertumorTopographieICDOVersion",
      "short" : "Primärtumor Topographie ICD-O-Version",
      "definition" : "Bezeichnung der zur Kodierung verwendeten ICD-O Version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.bodySite.coding.where(system='http://terminology.hl7.org/CodeSystem/icd-o-3').version"
      },
      {
        "identity" : "oBDS",
        "map" : "5.5",
        "comment" : "Primärtumor Topographie ICD-O-Version"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorDiagnosedatum",
      "path" : "Onkologie.Diagnose.PrimaertumorDiagnosedatum",
      "short" : "Primärtumor Diagnosedatum",
      "definition" : "Datum, angegeben in Tag, Monat und Jahr, an dem die meldepflichtige Diagnose erstmals durch einen Arzt klinisch oder mikroskopisch diagnostiziert wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.assertedDate"
      },
      {
        "identity" : "oBDS",
        "map" : "5.6",
        "comment" : "Primärtumor Diagnosedatum - Datum der Erstdiagnose"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorDiagnosesicherung",
      "path" : "Onkologie.Diagnose.PrimaertumorDiagnosesicherung",
      "short" : "Primärtumor Diagnosesicherung",
      "definition" : "Höchste erreichte Diagnosesicherheit der Diagnose.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.verificationStatus.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung').code"
      },
      {
        "identity" : "oBDS",
        "map" : "5.7",
        "comment" : "Primärtumor Diagnosesicherung - höchste erreichte Diagnosesicherheit"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.PrimaertumorSeitenlokalisation",
      "path" : "Onkologie.Diagnose.PrimaertumorSeitenlokalisation",
      "short" : "Primärtumor Seitenlokalisation",
      "definition" : "Organspezifische Angabe der betroffenen Seite.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.bodySite.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-seitenlokalisation').code"
      },
      {
        "identity" : "oBDS",
        "map" : "5.8",
        "comment" : "Primärtumor Seitenlokalisation"
      }]
    },
    {
      "id" : "Onkologie.Diagnose.FruehereTumorerkrankungen",
      "path" : "Onkologie.Diagnose.FruehereTumorerkrankungen",
      "short" : "Frühere Tumorerkrankungen",
      "definition" : "Tumorerkrankungen, die in der Anamnese zu einem früheren Zeitpunkt diagnostiziert/behandelt wurden.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Condition"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition"
      },
      {
        "identity" : "oBDS",
        "map" : "5.9",
        "comment" : "Frühere Tumorerkrankungen - eigenständig kodierte Vordiagnosen; im Profil MII_PR_Onko_Fruehere_Tumorerkrankung sind alle Detailangaben ebenfalls unter 5.9 geführt"
      }]
    },
    {
      "id" : "Onkologie.Histologie",
      "path" : "Onkologie.Histologie",
      "short" : "Histologie",
      "definition" : "Histologie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "6",
        "comment" : "Histologie - oBDS Kapitel 6"
      }]
    },
    {
      "id" : "Onkologie.Histologie.TumorHistologiedatum",
      "path" : "Onkologie.Histologie.TumorHistologiedatum",
      "short" : "Tumor Histologiedatum",
      "definition" : "Datum, an dem die Gewebeprobe entnommen wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Specimen.collection.collectedDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "6.1",
        "comment" : "Tumor Histologiedatum - Datum der Probenentnahme"
      }]
    },
    {
      "id" : "Onkologie.Histologie.HistologieEinsendenummer",
      "path" : "Onkologie.Histologie.HistologieEinsendenummer",
      "short" : "Histologie-Einsendenummer",
      "definition" : "Die Histologie-Einsendenummer/Auftragsnummer wird vom Pathologischen Institut beim Eingang des Präparates vergeben.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Specimen.accessionIdentifier"
      },
      {
        "identity" : "oBDS",
        "map" : "6.2",
        "comment" : "Histologie-Einsendenummer bzw. Auftragsnummer des Pathologischen Instituts"
      }]
    },
    {
      "id" : "Onkologie.Histologie.MorphologieCode",
      "path" : "Onkologie.Histologie.MorphologieCode",
      "short" : "Morphologie-Code",
      "definition" : "Gibt an, welche Histologie der Tumor aufweist.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').valueCodeableConcept.code"
      },
      {
        "identity" : "oBDS",
        "map" : "6.3",
        "comment" : "Morphologie-Code nach ICD-O-3"
      }]
    },
    {
      "id" : "Onkologie.Histologie.MorphologieICDOBlueBookVersion",
      "path" : "Onkologie.Histologie.MorphologieICDOBlueBookVersion",
      "short" : "Morphologie ICD-O/Blue Book Version",
      "definition" : "Bezeichnung der zur Kodierung verwendeten ICD-O/Blue Book Version.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').valueCodeableConcept.version"
      },
      {
        "identity" : "oBDS",
        "map" : "6.4",
        "comment" : "Morphologie ICD-O/Blue Book Version"
      }]
    },
    {
      "id" : "Onkologie.Histologie.MorphologieFreitext",
      "path" : "Onkologie.Histologie.MorphologieFreitext",
      "short" : "Morphologie-Freitext",
      "definition" : "Gibt die Originalbezeichnung der morphologischen Diagnose an.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Condition.code.text"
      },
      {
        "identity" : "oBDS",
        "map" : "6.5",
        "comment" : "Morphologie-Freitext - Originalbezeichnung der morphologischen Diagnose"
      }]
    },
    {
      "id" : "Onkologie.Histologie.Grading",
      "path" : "Onkologie.Histologie.Grading",
      "short" : "Grading",
      "definition" : "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.where(system='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading').code"
      },
      {
        "identity" : "oBDS",
        "map" : "6.6",
        "comment" : "Grading - Differenzierungsgrad nach aktueller TNM-Auflage"
      }]
    },
    {
      "id" : "Onkologie.Histologie.AnzahlUntersuchteLymphknoten",
      "path" : "Onkologie.Histologie.AnzahlUntersuchteLymphknoten",
      "short" : "Anzahl der untersuchten Lymphknoten",
      "definition" : "Gibt an, wie viele Lymphknoten untersucht wurden (einschließlich Sentinel).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.coding.where(system='http://loinc.org' and code='2708-6').select(%resource.valueQuantity.value)"
      },
      {
        "identity" : "oBDS",
        "map" : "6.7",
        "comment" : "Anzahl der untersuchten Lymphknoten einschließlich Sentinel"
      }]
    },
    {
      "id" : "Onkologie.Histologie.AnzahlBefalleneLymphknoten",
      "path" : "Onkologie.Histologie.AnzahlBefalleneLymphknoten",
      "short" : "Anzahl der befallenen Lymphknoten",
      "definition" : "Gibt an, wie viele Lymphknoten befallen sind (einschließlich Sentinel).",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.coding.where(system='http://loinc.org' and code='21893-3').select(%resource.valueQuantity.value)"
      },
      {
        "identity" : "oBDS",
        "map" : "6.8",
        "comment" : "Anzahl der befallenen Lymphknoten einschließlich Sentinel"
      }]
    },
    {
      "id" : "Onkologie.Histologie.AnzahlUntersuchteSentinelLymphknoten",
      "path" : "Onkologie.Histologie.AnzahlUntersuchteSentinelLymphknoten",
      "short" : "Anzahl der untersuchten Sentinel-Lymphknoten",
      "definition" : "Gibt an, wie viele Sentinel-Lymphknoten untersucht wurden.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.coding.where(system='http://loinc.org' and code='85347-3').select(%resource.valueQuantity.value)"
      },
      {
        "identity" : "oBDS",
        "map" : "6.9",
        "comment" : "Anzahl der untersuchten Sentinel-Lymphknoten"
      }]
    },
    {
      "id" : "Onkologie.Histologie.AnzahlBefalleneSentinelLymphknoten",
      "path" : "Onkologie.Histologie.AnzahlBefalleneSentinelLymphknoten",
      "short" : "Anzahl der befallenen Sentinel-Lymphknoten",
      "definition" : "Gibt an, wie viele Sentinel-Lymphknoten befallen sind.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "decimal"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.coding.where(system='http://loinc.org' and code='92832-5').select(%resource.valueQuantity.value)"
      },
      {
        "identity" : "oBDS",
        "map" : "6.10",
        "comment" : "Anzahl der befallenen Sentinel-Lymphknoten"
      }]
    },
    {
      "id" : "Onkologie.Histologie.Befund",
      "path" : "Onkologie.Histologie.Befund",
      "short" : "Befund",
      "definition" : "Vollständiger Befundbericht des Pathologen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "DiagnosticReport.code.coding.where(system='http://loinc.org' and code='60568-3').select(%resource.conclusion)"
      },
      {
        "identity" : "oBDS",
        "map" : "6.11",
        "comment" : "Befund - vollständiger Befundbericht des Pathologen"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation",
      "path" : "Onkologie.TNMKlassifikation",
      "short" : "TNM-Klassifikation",
      "definition" : "TNM-Klassifikation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "8",
        "comment" : "TNM-Klassifikation - oBDS Kapitel 8"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMDatum",
      "path" : "Onkologie.TNMKlassifikation.TNMDatum",
      "short" : "TNM Datum",
      "definition" : "Gibt an, auf welches Datum sich die TNM-Klassifikation bezieht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "8.1",
        "comment" : "TNM Datum - Bezugsdatum der Klassifikation"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMVersion",
      "path" : "Onkologie.TNMKlassifikation.TNMVersion",
      "short" : "TNM Version",
      "definition" : "Gibt an, nach welcher Version des TNM klassifiziert wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.method"
      },
      {
        "identity" : "oBDS",
        "map" : "8.2",
        "comment" : "TNM Version - verwendete TNM-Auflage"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMySymbol",
      "path" : "Onkologie.TNMKlassifikation.TNMySymbol",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "101658-3",
        "display" : "Cancer staging after multimodality therapy"
      }],
      "short" : "TNM y-Symbol",
      "definition" : "Gibt an, ob die Klassifikation während oder nach initialer multimodaler Therapie erfolgte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.3",
        "comment" : "TNM y-Symbol - Klassifikation während oder nach initialer multimodaler Therapie"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMrSymbol",
      "path" : "Onkologie.TNMKlassifikation.TNMrSymbol",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "101659-1",
        "display" : "Cancer staging after tumor recurrence"
      }],
      "short" : "TNM r-Symbol",
      "definition" : "Gibt an, ob die Klassifikation ein Rezidiv beurteilt.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.4",
        "comment" : "TNM r-Symbol - Klassifikation eines Rezidivs"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMaSymbol",
      "path" : "Onkologie.TNMKlassifikation.TNMaSymbol",
      "code" : [{
        "system" : "http://loinc.org",
        "code" : "101660-9",
        "display" : "Cancer staging during autopsy"
      }],
      "short" : "TNM a-Symbol",
      "definition" : "Gibt an, ob die Klassifikation aus Anlass einer Autopsie erfolgte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.5",
        "comment" : "TNM a-Symbol - Klassifikation aus Anlass einer Autopsie"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMcpuPraefixT",
      "path" : "Onkologie.TNMKlassifikation.TNMcpuPraefixT",
      "short" : "TNM c/p-Präfix T",
      "definition" : "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.6",
        "comment" : "TNM c/p-Präfix T"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMcpuPraefixN",
      "path" : "Onkologie.TNMKlassifikation.TNMcpuPraefixN",
      "short" : "TNM c/p-Präfix N",
      "definition" : "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.7",
        "comment" : "TNM c/p-Präfix N"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMcpuPraefixM",
      "path" : "Onkologie.TNMKlassifikation.TNMcpuPraefixM",
      "short" : "TNM c/p-Präfix M",
      "definition" : "Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-tnm-cp-praefix').value.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.8",
        "comment" : "TNM c/p-Präfix M"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMTKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMTKategorie",
      "short" : "TNM T-Kategorie",
      "definition" : "Ausbreitung des Primärtumors, erfolgt gemäß Tumorentität nach TNM.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.9",
        "comment" : "TNM T-Kategorie - Ausbreitung des Primärtumors"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMmSymbol",
      "path" : "Onkologie.TNMKlassifikation.TNMmSymbol",
      "short" : "TNM m-Symbol",
      "definition" : "Kennzeichnet Vorhandensein multipler Primärtumoren in einem anatomischen Bezirk.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.10",
        "comment" : "TNM m-Symbol - multiple Primärtumoren in einem anatomischen Bezirk"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMMKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMMKategorie",
      "short" : "TNM M-Kategorie",
      "definition" : "Fehlen oder Vorhandensein von Fernmetastasen, gemäß Tumorentität nach TNM.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.12",
        "comment" : "TNM M-Kategorie - Fehlen oder Vorhandensein von Fernmetastasen"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMNKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMNKategorie",
      "short" : "TNM N-Kategorie",
      "definition" : "Ausbreitung von regionären Lymphknotenmetastasen, erfolgt gemäß Tumorentität nach TNM.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.11",
        "comment" : "TNM N-Kategorie - regionäre Lymphknotenmetastasen"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMLKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMLKategorie",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "395715009",
        "display" : "Status of lymphatic (small vessel) invasion by tumor (observable entity)"
      }],
      "short" : "TNM L-Kategorie",
      "definition" : "Lymphgefäßinvasion.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.13",
        "comment" : "TNM L-Kategorie - Lymphgefäßinvasion"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMVKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMVKategorie",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "371493002",
        "display" : "Status of venous (large vessel) invasion by tumor (observable entity)"
      }],
      "short" : "TNM V-Kategorie",
      "definition" : "Veneninvasion.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.14",
        "comment" : "TNM V-Kategorie - Veneninvasion"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMPnKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMPnKategorie",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "371513001",
        "display" : "Presence of direct invasion by primary malignant neoplasm to nerve (observable entity)"
      }],
      "short" : "TNM Pn-Kategorie",
      "definition" : "Perineuralinvasion.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.15",
        "comment" : "TNM Pn-Kategorie - Perineuralinvasion"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.TNMSKategorie",
      "path" : "Onkologie.TNMKlassifikation.TNMSKategorie",
      "code" : [{
        "system" : "http://snomed.info/sct",
        "code" : "399424006",
        "display" : "Serum tumor marker category (observable entity)"
      }],
      "short" : "TNM S-Kategorie",
      "definition" : "Serumtumormarker.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.16",
        "comment" : "TNM S-Kategorie - Serumtumormarker"
      }]
    },
    {
      "id" : "Onkologie.TNMKlassifikation.UICCStadium",
      "path" : "Onkologie.TNMKlassifikation.UICCStadium",
      "short" : "UICC Stadium",
      "definition" : "Stadium nach aktuell gültiger TNM-Klassifikation.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "8.17",
        "comment" : "UICC Stadium nach aktuell gültiger TNM-Klassifikation"
      }]
    },
    {
      "id" : "Onkologie.WeitereKlassifikationen",
      "path" : "Onkologie.WeitereKlassifikationen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation"
      },
      {
        "identity" : "oBDS",
        "map" : "9",
        "comment" : "Weitere Klassifikationen - oBDS Kapitel 9; in den Profilen zweistellig als 09 geführt"
      }]
    },
    {
      "id" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationDatum",
      "path" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationDatum",
      "short" : "Hämatoonkologische und sonstige Klassifikationen Datum",
      "definition" : "Gibt an, auf welches Datum sich die Klassifikation bezieht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "9.1",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Datum - im Profil als 09.1 geführt"
      }]
    },
    {
      "id" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationName",
      "path" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationName",
      "short" : "Hämatoonkologische und sonstige Klassifikationen Name",
      "definition" : "Name der hämatologischen oder sonstigen Klassifikation. Art der Klassifikation.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.code.text"
      },
      {
        "identity" : "oBDS",
        "map" : "9.2",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Name - im Profil als 09.2 geführt"
      }]
    },
    {
      "id" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationEinstufung",
      "path" : "Onkologie.WeitereKlassifikationen.WeitereKlassifikationEinstufung",
      "short" : "Hämatoonkologische und sonstige Klassifikationen Einstufung",
      "definition" : "Einstufung gemäß der verwendeten hämatoonkologischen oder sonstigen Klassifikationen.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.value[x]"
      },
      {
        "identity" : "oBDS",
        "map" : "9.3",
        "comment" : "Hämatoonkologische und sonstige Klassifikationen Einstufung - im Profil als 09.3 geführt"
      }]
    },
    {
      "id" : "Onkologie.Residualstatus",
      "path" : "Onkologie.Residualstatus",
      "short" : "Residualstatus",
      "definition" : "Residualstatus",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "10",
        "comment" : "Residualstatus - oBDS Kapitel 10"
      }]
    },
    {
      "id" : "Onkologie.Residualstatus.LokalerResidualstatus",
      "path" : "Onkologie.Residualstatus.LokalerResidualstatus",
      "short" : "Beurteilung des lokalen Residualstatus nach Abschluss der Operation",
      "definition" : "Lokale Beurteilung der Residualklassifikation nach Resektion, bezieht sich auf das, was reseziert wurde, meist Primärtumor, aber z. B. auch Lebermetastasen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.outcome"
      },
      {
        "identity" : "oBDS",
        "map" : "10.1",
        "comment" : "Beurteilung des lokalen Residualstatus nach Abschluss der Operation - im Profil MII_PR_Onko_Operation als Procedure.outcome geführt"
      }]
    },
    {
      "id" : "Onkologie.Residualstatus.GlobalerResidualstatus",
      "path" : "Onkologie.Residualstatus.GlobalerResidualstatus",
      "short" : "Gesamtbeurteilung des Residualstatus",
      "definition" : "Gesamtbeurteilung der Residualklassifikation der Erkrankung einschließlich etwaiger Fernmetastasen.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "10.2",
        "comment" : "Gesamtbeurteilung des Residualstatus einschließlich etwaiger Fernmetastasen"
      }]
    },
    {
      "id" : "Onkologie.Fernmetastasen",
      "path" : "Onkologie.Fernmetastasen",
      "short" : "Fernmetastasen",
      "definition" : "Fernmetastasen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "11",
        "comment" : "Fernmetastasen - oBDS Kapitel 11"
      }]
    },
    {
      "id" : "Onkologie.Fernmetastasen.LokalisationFernmetastase",
      "path" : "Onkologie.Fernmetastasen.LokalisationFernmetastase",
      "short" : "Lokalisation von Fernmetastase(n)",
      "definition" : "Lokalisation der Fernmetastase(n).",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.bodySite"
      },
      {
        "identity" : "oBDS",
        "map" : "11.1",
        "comment" : "Lokalisation von Fernmetastasen"
      }]
    },
    {
      "id" : "Onkologie.Fernmetastasen.DatumFernmetase",
      "path" : "Onkologie.Fernmetastasen.DatumFernmetase",
      "short" : "Datum der diagnostischen Sicherung von Fernmetastasen",
      "definition" : "Gibt an, wann die Fernmetastase festgestellt wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "11.2",
        "comment" : "Datum der diagnostischen Sicherung von Fernmetastasen"
      }]
    },
    {
      "id" : "Onkologie.AllgemeinerLeistungszustand",
      "path" : "Onkologie.AllgemeinerLeistungszustand",
      "short" : "Allgemeiner Leistungszustand",
      "definition" : "Allgemeiner Leistungszustand",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "12",
        "comment" : "Allgemeiner Leistungszustand - oBDS Kapitel 12"
      }]
    },
    {
      "id" : "Onkologie.AllgemeinerLeistungszustand.ECOGKarnofsky",
      "path" : "Onkologie.AllgemeinerLeistungszustand.ECOGKarnofsky",
      "short" : "ECOG oder Karnofsky",
      "definition" : "ECOG oder Karnofsky",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.value[x]"
      },
      {
        "identity" : "oBDS",
        "map" : "12.1",
        "comment" : "Allgemeiner Leistungszustand nach ECOG oder Karnofsky - oBDS führt beide Skalen unter derselben Feldnummer"
      }]
    },
    {
      "id" : "Onkologie.Operation",
      "path" : "Onkologie.Operation",
      "short" : "Operation",
      "definition" : "Operation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "13",
        "comment" : "Operation - oBDS Kapitel 13"
      }]
    },
    {
      "id" : "Onkologie.Operation.OPIntention",
      "path" : "Onkologie.Operation.OPIntention",
      "short" : "Intention",
      "definition" : "Gibt an, mit welchem Ziel die Operation geplant wurde",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "13.1",
        "comment" : "Intention der Operation"
      }]
    },
    {
      "id" : "Onkologie.Operation.OPDatum",
      "path" : "Onkologie.Operation.OPDatum",
      "short" : "OP Datum",
      "definition" : "Datum der OP",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.performedDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "13.2",
        "comment" : "OP Datum"
      }]
    },
    {
      "id" : "Onkologie.Operation.OPSCode",
      "path" : "Onkologie.Operation.OPSCode",
      "short" : "OPS Code",
      "definition" : "Gibt an, welche Operation durchgeführ wurde. OPS (5-*), so genau wie möglich. Bei paaringen Organen mit Seitenangabe",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.code.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "13.3",
        "comment" : "OPS - Operationen- und Prozedurenschlüssel"
      }]
    },
    {
      "id" : "Onkologie.Operation.OPSVersion",
      "path" : "Onkologie.Operation.OPSVersion",
      "short" : "OPS Version",
      "definition" : "Gibt an, nach welcher Version (Jahr) des OPS klassifiziert wurde (Gültige Bezeichnung nach BfArM)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.code.coding.version"
      },
      {
        "identity" : "oBDS",
        "map" : "13.4",
        "comment" : "OPS Version - Jahresversion nach BfArM"
      }]
    },
    {
      "id" : "Onkologie.Operation.OPKomplikation",
      "path" : "Onkologie.Operation.OPKomplikation",
      "short" : "OP Komplikationen",
      "definition" : "Gibt an, ob eine oder keine Komplikation aufgetreten ist, bzw. wenn eine aufgetreten ist welche.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.complication.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "13.5",
        "comment" : "OP Komplikationen"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie",
      "path" : "Onkologie.Strahlentherapie",
      "short" : "Strahlentherapie",
      "definition" : "Strahlentherapie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "14",
        "comment" : "Strahlentherapie - oBDS Kapitel 14"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieIntention",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieIntention",
      "short" : "Intention der Strahlentherapie",
      "definition" : "Gibt an, mit welcher Intention die Strahlentherapie geplant wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Intention].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.1",
        "comment" : "Intention der Strahlentherapie"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieStellung",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieStellung",
      "short" : "Strahlentherapie Stellung zu operativer Therapie",
      "definition" : "Gibt an, in welchem Bezug zu einer operativen Therapie die Bestrahlung steht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Stellung].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.2",
        "comment" : "Strahlentherapie Stellung zu operativer Therapie"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieEndeGrund",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieEndeGrund",
      "short" : "Strahlentherapie Ende Grund",
      "definition" : "Gibt den Grund an, warum die Strahlentherapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.outcome.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.13",
        "comment" : "Strahlentherapie Ende Grund"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung",
      "short" : "Bestrahlung",
      "definition" : "Dieser Abschnitt entspricht einer Bestrahlung mit spezifischem Zielgebiet, Methodik und Dosis ",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung]"
      },
      {
        "identity" : "oBDS",
        "map" : "14.3-14.12",
        "comment" : "Bestrahlung - eine Bestrahlung mit spezifischem Zielgebiet Methodik und Dosis; im oBDS keine eigene Feldnummer sondern Gruppierung der Felder 14.3 bis 14.12"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieZielgebiet",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieZielgebiet",
      "short" : "Strahlentherapie Zielgebiet",
      "definition" : "Gibt an, an welcher anatomischen Region die Bestrahlung durchgeführt wurde.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Zielgebiet].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.3",
        "comment" : "Strahlentherapie Zielgebiet"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieSeiteZielgebiet",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieSeiteZielgebiet",
      "short" : "Strahlentherapie Seite Zielgebiet",
      "definition" : "Bei Zielgebieten, die durch \"(r, l)\" gekennzeichnet sind, ist eine Seitenangabe Pflicht.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Zielgebiet_Lateralitaet].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.4",
        "comment" : "Strahlentherapie Seite Zielgebiet - Pflichtangabe bei mit r/l gekennzeichneten Zielgebieten"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieBeginn",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieBeginn",
      "short" : "Strahlentherapie Beginn",
      "definition" : "Gibt an, wann die Strahlentherapie begonnen wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.performedPeriod.start"
      },
      {
        "identity" : "oBDS",
        "map" : "14.5",
        "comment" : "Strahlentherapie Beginn"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEnde",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEnde",
      "short" : "Strahlentherapie Ende",
      "definition" : "Gibt an, wann die Strahlentherapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.performedPeriod.end"
      },
      {
        "identity" : "oBDS",
        "map" : "14.6",
        "comment" : "Strahlentherapie Ende"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieApplikationsart",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieApplikationsart",
      "short" : "Strahlentherapie Applikationsart",
      "definition" : "Gibt an, mit welcher Technik die Strahlentherapie durchgeführt wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Applikationsart].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.7",
        "comment" : "Strahlentherapie Applikationsart"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieStrahlenart",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieStrahlenart",
      "short" : "Strahlenart",
      "definition" : "Angewandte Strahlenart (Strahlung oder metabolische Nuklide)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Strahlenart].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.8",
        "comment" : "Strahlentherapie Strahlenart"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieGesamtdosis",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieGesamtdosis",
      "short" : "Strahlentherapie Gesamtdosis",
      "definition" : "Gibt an, mit welcher Gesamtdosis das Zielgebiet bestrahlt wurde (inklusive Boost).",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Gesamtdosis].valueQuantity.value"
      },
      {
        "identity" : "oBDS",
        "map" : "14.9",
        "comment" : "Strahlentherapie Gesamtdosis inklusive Boost"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEinzeldosis",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEinzeldosis",
      "short" : "Strahlentherapie Einzeldosis",
      "definition" : "Strahlentherapie Einzeldosis pro Tag (Dosis)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Einzeldosis].valueQuantity.value"
      },
      {
        "identity" : "oBDS",
        "map" : "14.10",
        "comment" : "Strahlentherapie Einzeldosis pro Tag"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEinheit",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieEinheit",
      "short" : "Strahlentherapie Einheit",
      "definition" : "Gibt die Einheit zu der Einzel- oder Gesamtdosis an, mit welcher das Zielgebiet bestrahlt wurde, bzw. bei metabolischer Therapie die Aktivität des verwendeten Radionuklids.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Einheit].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.11",
        "comment" : "Strahlentherapie Einheit zu Einzel- und Gesamtdosis - in den Profilen als Quantity.unit an 14.9 und 14.10 abgebildet"
      }]
    },
    {
      "id" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieBoost",
      "path" : "Onkologie.Strahlentherapie.StrahlentherapieBestrahlung.StrahlentherapieBoost",
      "short" : "Boost",
      "definition" : "Angabe, ob ein Boost und falls ja, welche Art von Boost appliziert wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Bestrahlung].extension[Boost].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "14.12",
        "comment" : "Strahlentherapie Boost"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie",
      "path" : "Onkologie.SystemischeTherapie",
      "short" : "Systemische Therapie",
      "definition" : "Systemische Therapie",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "16",
        "comment" : "Systemische Therapie - oBDS Kapitel 16"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieIntention",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieIntention",
      "short" : "Intention der systemischen Therapie",
      "definition" : "Intention der systemischen Therapie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Intention].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "16.1",
        "comment" : "Intention der systemischen Therapie"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieStellung",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieStellung",
      "short" : "Systemische Therapie Stellung zu operativer Therapie",
      "definition" : "Gibt an, in welchem Bezug zu einer operativen Therapie die systemische Therapie steht.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.extension[Stellung].valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "16.2",
        "comment" : "Systemische Therapie Stellung zu operativer Therapie"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieArtTherapie",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieArtTherapie",
      "short" : "Art der systemischen oder abwartenden Therapie",
      "definition" : "Gibt an, welche Art der Therapie bzw. abwartende Strategie durchgeführt wurde.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.code.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "16.3",
        "comment" : "Art der systemischen oder abwartenden Therapie"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieProtokoll",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieProtokoll",
      "short" : "Systemische Therapie Protokoll",
      "definition" : "Gibt an, nach welchem Protokoll die Systemtherapie durchgeführt wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "MedicationStatement.medicationCodeableConcept.text "
      },
      {
        "identity" : "oBDS",
        "map" : "16.4",
        "comment" : "Systemische Therapie Protokoll"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieSubstanz",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieSubstanz",
      "short" : "Systemische Therapie Substanz",
      "definition" : "Gibt an, mit welcher Substanz die Systemtherapie durchgeführt wurde. Nach Möglichkeit ATC kodiert. Mehrere Substanzen sind jeweils einzeln zu kodieren. ",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "MedicationStatement.medicationCodeableConcept[atcClassDe].coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "16.6",
        "comment" : "Systemische Therapie Substanz - nach Möglichkeit ATC-kodiert"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieBeginn",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieBeginn",
      "short" : "Systemische Therapie Beginn",
      "definition" : "Gibt an, wann die systemische Therapie begonnen wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.performedPeriod.start"
      },
      {
        "identity" : "oBDS",
        "map" : "16.5",
        "comment" : "Systemische Therapie Beginn"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieEnde",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieEnde",
      "short" : "Systemische Therapie Ende Grund",
      "definition" : "Gibt den Grund an, warum die Systemtherapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.performedPeriod.end"
      },
      {
        "identity" : "oBDS",
        "map" : "16.8",
        "comment" : "Systemische Therapie Ende - Enddatum; die Kurzbeschreibung im LM ist mit der von SystemischeTherapieEndeGrund vertauscht"
      }]
    },
    {
      "id" : "Onkologie.SystemischeTherapie.SystemischeTherapieEndeGrund",
      "path" : "Onkologie.SystemischeTherapie.SystemischeTherapieEndeGrund",
      "short" : "Systemische Therapie Ende",
      "definition" : "Gibt an, wann die systemische Therapie beendet wurde.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Procedure.outcome.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "16.7",
        "comment" : "Systemische Therapie Ende Grund; die Kurzbeschreibung im LM ist mit der von SystemischeTherapieEnde vertauscht"
      }]
    },
    {
      "id" : "Onkologie.Nebenwirkungen",
      "path" : "Onkologie.Nebenwirkungen",
      "short" : "Nebenwirkungen",
      "definition" : "Nebenwirkungen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "15",
        "comment" : "Nebenwirkungen der Strahlentherapie und systemischen Therapie - oBDS Kapitel 15"
      }]
    },
    {
      "id" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEGrad",
      "path" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEGrad",
      "short" : "Nebenwirkungen nach CTCAE-Grad",
      "definition" : "Gibt an, zu welchem Schweregrad von Nebenwirkungen es bei der Bestrahlung oder der systemischen Therapie gekommen ist.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "AdverseEvent.seriousness.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "15.1",
        "comment" : "Nebenwirkungen nach CTCAE-Grad"
      }]
    },
    {
      "id" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEArt",
      "path" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEArt",
      "short" : "Nebenwirkungen nach CTCAE Art",
      "definition" : "Gibt an, zu welcher Nebenwirkung es bei der Bestrahlung oder der systemischen Therapie gekommen ist. Bei der Bestrahlung sind sogenannte akute Nebenwirkungen bis zum 90. Tag nach Bestrahlungsbeginn gemeint.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "AdverseEvent.event.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "15.2",
        "comment" : "Nebenwirkungen nach CTCAE Art"
      }]
    },
    {
      "id" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEVersion",
      "path" : "Onkologie.Nebenwirkungen.NebenwirkungenCTCAEVersion",
      "short" : "Nebenwirkungen nach CTCAE Version",
      "definition" : "Für den medizinischen Katalog gültige Versionsbezeichnungen (4, 4.03, 5.0, Sonstige). Gemeint ist die Version des CTCAE-Katalogs, nicht die des MedDRA-Katalogs, aus dem die Codes stammen — CTCAE v4.03 basiert auf MedDRA v12.0.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "AdverseEvent.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-nebenwirkung-ctcae-version').valueCodeableConcept"
      },
      {
        "identity" : "oBDS",
        "map" : "15.3",
        "comment" : "Nebenwirkungen nach CTCAE Version"
      }]
    },
    {
      "id" : "Onkologie.Verlauf",
      "path" : "Onkologie.Verlauf",
      "short" : "Verlauf",
      "definition" : "Verlauf",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17",
        "comment" : "Verlauf - oBDS Kapitel 17"
      }]
    },
    {
      "id" : "Onkologie.Verlauf.VerlaufDatum",
      "path" : "Onkologie.Verlauf.VerlaufDatum",
      "short" : "Untersuchungsdatum Verlauf",
      "definition" : "Datum, an dem die letzte Untersuchung durchgeführt wurde, die zur Einschätzung des Tumorstatus geführt hat.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.1",
        "comment" : "Untersuchungsdatum Verlauf"
      }]
    },
    {
      "id" : "Onkologie.Verlauf.VerlaufBeurteilungTumorstatus",
      "path" : "Onkologie.Verlauf.VerlaufBeurteilungTumorstatus",
      "short" : "Gesamtbeurteilung des Tumorstatus",
      "definition" : "Gesamtbeurteilung der Erkrankung unter Berücksichtigung aller Manifestationen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.2",
        "comment" : "Gesamtbeurteilung des Tumorstatus"
      }]
    },
    {
      "id" : "Onkologie.Verlauf.VerlaufTumorstatusPrimaertumor",
      "path" : "Onkologie.Verlauf.VerlaufTumorstatusPrimaertumor",
      "short" : "Tumorstatus Primärtumor",
      "definition" : "Beurteilung der Situation im Primärtumorbereich.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.3",
        "comment" : "Tumorstatus Primärtumor"
      }]
    },
    {
      "id" : "Onkologie.Verlauf.VerlaufTumorstatusLymphknoten",
      "path" : "Onkologie.Verlauf.VerlaufTumorstatusLymphknoten",
      "short" : "Tumorstatus Lymphknoten",
      "definition" : "Beurteilung der Situation im Bereich der regionären Lymphknoten.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.4",
        "comment" : "Tumorstatus Lymphknoten"
      }]
    },
    {
      "id" : "Onkologie.Verlauf.VerlaufTumorstatusMetastasen",
      "path" : "Onkologie.Verlauf.VerlaufTumorstatusMetastasen",
      "short" : "Tumorstatus Fernmetastasen",
      "definition" : "Beurteilung der Situation im Bereich der Fernmetastasen.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "17.5",
        "comment" : "Tumorstatus Fernmetastasen"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz",
      "path" : "Onkologie.Tumorkonferenz",
      "short" : "Tumorkonferenz und Therapieempfehlung",
      "definition" : "Tumorkonferenz und Therapieempfehlung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "18, 19",
        "comment" : "Tumorkonferenz oBDS Kapitel 18 und Therapieempfehlung oBDS Kapitel 19"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieplanungDatum",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieplanungDatum",
      "short" : "Tumorkonferenz Therapieplanung Datum",
      "definition" : "Datum der Durchführung der Tumorkonferenz bzw. der sonstigen Therapieplanung.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "CarePlan.created"
      },
      {
        "identity" : "oBDS",
        "map" : "18.1",
        "comment" : "Tumorkonferenz Therapieplanung Datum"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieplanungTyp",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieplanungTyp",
      "short" : "Tumorkonferenz Therapieplanung Typ",
      "definition" : "Typ der Tumorkonferenz bzw. der sonstigen Therapieplanung.",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "CarePlan.category"
      },
      {
        "identity" : "oBDS",
        "map" : "18.2",
        "comment" : "Tumorkonferenz Therapieplanung Typ"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungTyp",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungTyp",
      "short" : "Tumorkonferenz Therapieempfehlung Typ",
      "definition" : "Typ der Therapieempfehlung der Tumorkonferenz (z.B. CH, OP, ST).",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "RequestGroup.code (Therapy type: CH, OP, ST, etc.)"
      },
      {
        "identity" : "oBDS",
        "map" : "19.1",
        "comment" : "Tumorkonferenz Therapieempfehlung Typ - z.B. CH OP ST"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungProtokoll",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungProtokoll",
      "short" : "Tumorkonferenz Therapieempfehlung Protokoll",
      "definition" : "Empfohlenes Therapieprotokoll bei systemischer Therapie (z.B. FOLFOX4, R-CHOP, AC). Optional, insbesondere bei Kombinationstherapien.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "RequestGroup.action.code (Protocol: FOLFOX4, R-CHOP, etc.)"
      },
      {
        "identity" : "oBDS",
        "map" : "19.1 (Erweiterung)",
        "comment" : "Empfohlenes Therapieprotokoll - MII-Erweiterung zu 19.1; der oBDS erfasst in 19.1 nur den Therapietyp ohne Protokollangabe"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungMedikation",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieempfehlungMedikation",
      "short" : "Tumorkonferenz Therapieempfehlung Medikation",
      "definition" : "Einzelne empfohlene Medikamente/Substanzen der Therapie (z.B. ATC-kodiert). Bei Kombinationstherapien werden mehrere Medikamente angegeben.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "MedicationRequest.medicationCodeableConcept (referenced from RequestGroup.action.action.resource)"
      },
      {
        "identity" : "oBDS",
        "map" : "19.1 (Erweiterung)",
        "comment" : "Einzelne empfohlene Substanzen - MII-Erweiterung zu 19.1; der oBDS erfasst in 19.1 nur den Therapietyp ohne Substanzangabe"
      }]
    },
    {
      "id" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieAbweichungPatientenwunsch",
      "path" : "Onkologie.Tumorkonferenz.TumorkonferenzTherapieAbweichungPatientenwunsch",
      "short" : "Tumorkonferenz/Therapieempfehlung Therapieabweichung auf Wunsch des Patienten",
      "definition" : "Abweichung auf Wunsch des Patienten.",
      "min" : 1,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "CarePlan.activity.detail.status & statusReason"
      },
      {
        "identity" : "oBDS",
        "map" : "19.2",
        "comment" : "Tumorkonferenz bzw. Therapieempfehlung Therapieabweichung auf Wunsch des Patienten"
      }]
    },
    {
      "id" : "Onkologie.Tod",
      "path" : "Onkologie.Tod",
      "short" : "Tod",
      "definition" : "Tod",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "oBDS",
        "map" : "20",
        "comment" : "Tod - oBDS Kapitel 20"
      }]
    },
    {
      "id" : "Onkologie.Tod.Sterbedatum",
      "path" : "Onkologie.Tod.Sterbedatum",
      "short" : "Sterbedatum",
      "definition" : "Datum des Todes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "20.1",
        "comment" : "Sterbedatum"
      }]
    },
    {
      "id" : "Onkologie.Tod.TodTumorbedingt",
      "path" : "Onkologie.Tod.TodTumorbedingt",
      "short" : "Tod tumorbedingt",
      "definition" : "Krebs-Tod-Relation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.interpretation.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "20.2",
        "comment" : "Tod tumorbedingt - Krebs-Tod-Relation"
      }]
    },
    {
      "id" : "Onkologie.Tod.TodesursacheICD",
      "path" : "Onkologie.Tod.TodesursacheICD",
      "short" : "Todesursache ICD",
      "definition" : "Todesursache im Sinne des Grundleidens",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "20.3",
        "comment" : "Todesursache ICD im Sinne des Grundleidens"
      }]
    },
    {
      "id" : "Onkologie.Tod.TodesursacheICDVersion",
      "path" : "Onkologie.Tod.TodesursacheICDVersion",
      "short" : "Todesursache ICD Version",
      "definition" : "Bezeichnung der zur Kodierung verwendeten ICD-GM-Version",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.version"
      },
      {
        "identity" : "oBDS",
        "map" : "20.4",
        "comment" : "Todesursache ICD-Version"
      }]
    },
    {
      "id" : "Onkologie.GenetischeVariante",
      "path" : "Onkologie.GenetischeVariante",
      "short" : "Genetische Variante",
      "definition" : "Genetische Variante",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation"
      },
      {
        "identity" : "oBDS",
        "map" : "23",
        "comment" : "Genetische Variante - oBDS Kapitel 23"
      }]
    },
    {
      "id" : "Onkologie.GenetischeVariante.GenetischeVarianteName",
      "path" : "Onkologie.GenetischeVariante.GenetischeVarianteName",
      "short" : "Genetische Variante Name",
      "definition" : "Name der genetischen Variante (z.B. K-ras, BRAFV600, NRAS, C-KIT)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.note"
      },
      {
        "identity" : "oBDS",
        "map" : "23.1",
        "comment" : "Genetische Variante Name - z.B. K-ras BRAFV600 NRAS C-KIT"
      }]
    },
    {
      "id" : "Onkologie.GenetischeVariante.GenetischeVarianteAuspraegung",
      "path" : "Onkologie.GenetischeVariante.GenetischeVarianteAuspraegung",
      "short" : "Genetische Variante Ausprägung",
      "definition" : "Ausprägung der genetischen Variante nach oBDS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.interpretation"
      },
      {
        "identity" : "oBDS",
        "map" : "23.2",
        "comment" : "Genetische Variante Ausprägung"
      }]
    },
    {
      "id" : "Onkologie.Studienteilnahme",
      "path" : "Onkologie.Studienteilnahme",
      "short" : "Studienteilnahme",
      "definition" : "Studienteilnahme",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation"
      },
      {
        "identity" : "oBDS",
        "map" : "24",
        "comment" : "Studienteilnahme - oBDS Kapitel 24"
      }]
    },
    {
      "id" : "Onkologie.Studienteilnahme.StudienteilnahmeStatus",
      "path" : "Onkologie.Studienteilnahme.StudienteilnahmeStatus",
      "short" : "Studienteilnahme Status",
      "definition" : "Einschluss in eine Studie mit Ethikvotum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.valueCodeableConcept.coding.code"
      },
      {
        "identity" : "oBDS",
        "map" : "24.1",
        "comment" : "Studienteilnahme Status - Einschluss in eine Studie mit Ethikvotum"
      }]
    },
    {
      "id" : "Onkologie.Studienteilnahme.StudienteilnahmeDatum",
      "path" : "Onkologie.Studienteilnahme.StudienteilnahmeDatum",
      "short" : "Studienteilnahme Datum",
      "definition" : "Erstes Einschlussdatum einer Studie mit Ethikvotum",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.effectiveDateTime"
      },
      {
        "identity" : "oBDS",
        "map" : "24.2",
        "comment" : "Studienteilnahme Datum - erstes Einschlussdatum"
      }]
    },
    {
      "id" : "Onkologie.Studienteilnahme.StudienteilnahmeStudienreferenz",
      "path" : "Onkologie.Studienteilnahme.StudienteilnahmeStudienreferenz",
      "short" : "Studienteilnahme Studienreferenz",
      "definition" : "Referenz zur konkreten Studie (ResearchStudy)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Reference"
      }],
      "mapping" : [{
        "identity" : "FHIR",
        "map" : "Observation.focus.where(resolve() is ResearchStudy)"
      },
      {
        "identity" : "oBDS",
        "map" : "kein oBDS-Feld",
        "comment" : "Referenz auf die konkrete Studie als ResearchStudy - MII-Ergänzung; der oBDS benennt Studien nur im pädiatrischen Zusatzmodul DKKR/GPOH mit Studienname und Studiennummer nicht in Kapitel 24"
      }]
    }]
  }
}

```
