# MII LM Modellvorhaben Genomsequenzierung Onkologie - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII LM Modellvorhaben Genomsequenzierung Onkologie**

## Logical Model: MII LM Modellvorhaben Genomsequenzierung Onkologie 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/mii-lm-mvgenomseq-onkologie | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-05 | *Computable Name*:MII_LM_MVGenomSeq_Onkologie |

 
MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie 

**Usages:**

* This Logical Model is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/de.medizininformatikinitiative.kerndatensatz.onkologie|current/StructureDefinition/StructureDefinition-mii-lm-mvgenomseq-onkologie.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots, and their representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-mii-lm-mvgenomseq-onkologie.csv), [Excel](../StructureDefinition-mii-lm-mvgenomseq-onkologie.xlsx) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "mii-lm-mvgenomseq-onkologie",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/mii-lm-mvgenomseq-onkologie",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_LM_MVGenomSeq_Onkologie",
  "title" : "MII LM Modellvorhaben Genomsequenzierung Onkologie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-05T07:29:05+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
    "name" : "Onkologie LogicalModel MII Onkologie Mapping"
  }],
  "kind" : "logical",
  "abstract" : false,
  "type" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/LogicalModel/mii-lm-mvgenomseq-onkologie",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Element",
  "derivation" : "specialization",
  "differential" : {
    "element" : [{
      "id" : "mii-lm-mvgenomseq-onkologie",
      "path" : "mii-lm-mvgenomseq-onkologie",
      "short" : "MII LM Modellvorhaben Genomsequenzierung Onkologie",
      "definition" : "MII LogicalModel Modellvorhaben Genomsequenzierung Onkologie"
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall",
      "short" : "Onkologie-Fall",
      "definition" : "Onkologie-Fall",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose",
      "short" : "Diagnose",
      "definition" : "Diagnose",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Haupttumordiagnose",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Haupttumordiagnose",
      "short" : "Haupttumordiagnose",
      "definition" : "Haupttumordiagnose in ICD-10-GM",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.WeitereOnkologischeDiagnosen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.WeitereOnkologischeDiagnosen",
      "short" : "Weitere onkologische Diagnosen",
      "definition" : "Optional bei mehreren onkologischen Diagnosen, insbesondere Dokumentation als weiter onkologische Diagnose bei hereditären Tumordispositionssydroms (HT), bei HT zusätzliche Dokumentation ORPHAcode oder AlphaID, ein Code soweit vorhanden ist. Undiagnostizierte Erkrankungen sind mit ORPHA:616874 zu kodieren.",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition.code.coding.where(system='http://fhir.de/CodeSystem/bfarm/icd-10-gm').code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Hauptdiagnosedatum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Hauptdiagnosedatum",
      "short" : "Hauptdiagnosedatum",
      "definition" : "Datum der Erstdiagnose der Hauptdiagnose. Wenn Tag unbekannt -> 15. des Monats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition.extension.where(url='http://hl7.org/fhir/StructureDefinition/condition-assertedDate').valueDate"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.ECOGStatus",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.ECOGStatus",
      "short" : "ECOG-Status",
      "definition" : "Eastern Cooperative Oncology Group (ECOG) Performance Status nach 0,1,2,3,4,5,unknown, not applicable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Observation.where(code='423740007' and system='http://snomed.info/sct').valueCodeableConcept.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.KeimbahndiagnoseVorhanden",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.KeimbahndiagnoseVorhanden",
      "short" : "Keimbahndiagnose vorhanden",
      "definition" : "Ja, Nein, unbekannt",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "no direct match, vsl. über FHIRPath automatisch generieren, wenn Keimbahndiagnose.exists()"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Keimbahndiagnose",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Keimbahndiagnose",
      "short" : "Keimbahndiagnose",
      "definition" : "Keimbahndiagnosen nach ICD-10-GM.Bei Diagnose eines hereditären Tumordispositionssydroms als Teil der OE ist verpflichtend anzugeben mit ICD10 und ORPHA oder AlphaID ",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "no direct match. Keimbahndiagnose existiert als Konzept nicht, hier könnte / müsste mit Condition.category gearbeitet werden, z.B. SNOMED Hereditary cancer-predisposing syndrome (disorder)"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.HPOPhaenotypisierung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.HPOPhaenotypisierung",
      "short" : "Phänotypisierung nach HPO ",
      "definition" : "Human Phenotype Ontology.Bei Diagnose eines hereditären Tumordispositionssydroms als Teil der OE, wenn vorhanden angeben (optional) ",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Observation.where(valueCodeableConcept.coding.system='http://human-phenotype-ontology.org')"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Histologie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Histologie",
      "short" : "Histologie nach ICD-O-3",
      "definition" : "Histologische Morphologie und Verhalten nach ICD-O-3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3').valueCodeableConcept.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Topographie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Topographie",
      "short" : "Topographie nach ICD-O-3",
      "definition" : "Topographie des Tumors nach ICD-O-3",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Condition.bodySite.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Grading",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.Grading",
      "short" : "Differenzierungsgrad",
      "definition" : "Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an,  Bei der Klassifikation sind die einschlägigen Regeln der Literatur (TNM) zu beachten.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Observation.where(code.coding.code='33732-9' and code.coding.system='http://loinc.org').valueCodeableConcept.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.TNMSchluessel",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.TNMSchluessel",
      "short" : "TNM-Klassifikation",
      "definition" : "TNM-Klassifikation des Tumors",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Observation.where(code.coding.code='33732-9' and code.coding.system='http://snomed.info/sct').valueCodeableConcept.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.TNMSystematik",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.TNMSystematik",
      "short" : "TNM-Systematik",
      "definition" : "TNM-Systematik nach AJCC oder UICC",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Laut Krebsregisterdaten nur UICC vorgesehen? kein expiziter Datenpunkt außer Version"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.WeitereKlassifikationen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.WeitereKlassifikationen",
      "short" : "Weitere Klassifikationen",
      "definition" : "Weitere Klassifikationen des Tumors zum Diagnosezeitpunkt",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "no direkt match - Observation - Nutzung des Profils WeitereKlassifikationen, aber aufgrund der Vielfalt der Klassifikationen keine direkte Zuordnung möglich"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.DiagnostischeVoruntersuchungen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Diagnose.DiagnostischeVoruntersuchungen",
      "short" : "Diagnostische Voruntersuchungen",
      "definition" : "Diagnostische Voruntersuchungen zum Diagnosezeitpunkt. Bewertung der durchgeführten genetischen Diagnostik, nur für heriditäre Prädispositionssyndrome/ Erbliche Tumore",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "no direkt match"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik",
      "short" : "Vordiagnostik",
      "definition" : "Vordiagnostik",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Vordiagnostik"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik.ArtDiagnostik",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik.ArtDiagnostik",
      "short" : "Diagnostik",
      "definition" : "Diagnostik, die vor dem MV Genomseq, durchgeführt wurde (Vorbefunde)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Diagnoste)"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik.DatumDiagnostik",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.Vordiagnostik.DatumDiagnostik",
      "short" : "Datum",
      "definition" : "Datum der Diagnostik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Datum Diagnostik"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde",
      "short" : "klinisch relevante Ergebnisse der Diagnostik",
      "definition" : "klinisch relevante Ergebnisse der Diagnostik",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "klinisch relevante Ergebnisse der Diagnostik"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.Gen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.Gen",
      "short" : "Gen",
      "definition" : "Gen kodiert nach HGNC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Genert nach HGNC"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.Transkript",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.Transkript",
      "short" : "Transkript",
      "definition" : "Transkript kodiert nach Ensembl/RefSeq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Transkriranskript kodiert nach Ensembl/RefSeq"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.DNAChange",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.DNAChange",
      "short" : "DNA-Veränderung",
      "definition" : "DNA-Verändung nach cHGVS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "DNA-VeränVerändung nach cHGVS"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.ProteinChange",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.ProteinChange",
      "short" : "Protein-Veränderung",
      "definition" : "Protein-Veränderung nach pHGVS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Protein-Verändotein-Veränderung nach pHGVS"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.TypAlteration",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.TypAlteration",
      "short" : "Typ der Alteration",
      "definition" : "Typ der Alteration / Variantenklasse nach Sequence ontology (SO)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Typ der Alteratr Alteration / Variantenklasse nach Sequence ontology (SO)"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.KomplexeAlteration",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.MolekulareVorbefunde.KomplexeAlteration",
      "short" : "Komplexe Alteration",
      "definition" : "Ausführliche Beschreibung bei komplexen Alteration z.B. Fusion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Komplexe AlteratAusführliche Beschreibung"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien",
      "short" : "Systemische Vortherapien",
      "definition" : "Systemische Vortherapien",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.ArtTherapie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.ArtTherapie",
      "short" : "Bezug zur operativen Therapie",
      "definition" : "Bezug der Vortherapie zu einer operativen Therapie, z.B. adjuvant, neoadjuvant",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure.extension.where(url='StellungZurOp')"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.IntentionTherapie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.IntentionTherapie",
      "short" : "Intention",
      "definition" : "Intention der Vortherapie, z.B. kurativ, palliativ",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure.extension.where(url='Intention')"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Substanz",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Substanz",
      "short" : "Substanz",
      "definition" : "Substanz der Vortherapie nach ATC oder Text bei nicht-ATC-Wirkstoffen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "MedicationStatement.medicationCode.coding[atc-de].code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Therapiestart",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Therapiestart",
      "short" : "Startdatum",
      "definition" : "Startdatum der Vortherapie. Wenn Datum unbekannt, dann 15. des Monats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure.effectivePeriod.start"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Therapieende",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.Therapieende",
      "short" : "Enddatum",
      "definition" : "Enddatum der Vortherapie. Wenn Datum unbekannt, dann 15. des Monats",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure.effectivePeriod.end"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.EndeGrund",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.EndeGrund",
      "short" : "Ende der Therapie",
      "definition" : "Grund für das Ende der Vortherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Procedure.outcome"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.TherapieAnsprechen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.TherapieAnsprechen",
      "short" : "Ansprechen",
      "definition" : "Therapieansprechen der fallrelevante, systemische Vortherapie (PD: Progression, SD:Stabile Erkrankung, PR:Partielle Remission, CR:Komplette Remission)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Verlauf.valueCodeableConcept.coding.code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.TherapieAnsprechenDatum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFall.SystemischeVortherapien.TherapieAnsprechenDatum",
      "short" : "Datum",
      "definition" : "Datum des Ansprechens der Vortherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }],
      "mapping" : [{
        "identity" : "MVGenomSeq-Datenkranz-to-MII-FHIR",
        "map" : "Verlauf.effectiveDateTime"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular",
      "short" : "Molekulare Diagnostik",
      "definition" : "Molekulare Diagnostik",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante",
      "short" : "Einfache Variante inkl. Fusionen im codierenden Bereich",
      "definition" : "Einfache Variante inkl. Fusionen im codierenden Bereich",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Variante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Gen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Gen",
      "short" : "Gen",
      "definition" : "Gen kodiert nach HGNC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Transkript",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Transkript",
      "short" : "Transkript",
      "definition" : "Transkript kodiert nach Ensembl/RefSeq",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.DNAChange",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.DNAChange",
      "short" : "DNA-Veränderung",
      "definition" : "DNA-Verändung nach cHGVS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.ProteinChange",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.ProteinChange",
      "short" : "Protein-Veränderung",
      "definition" : "Protein-Veränderung nach pHGVS",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.TypAlteration",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.TypAlteration",
      "short" : "Typ der Alteration",
      "definition" : "Typ der Alteration / Variantenklasse nach Sequence ontology (SO)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Lokalization",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.Lokalization",
      "short" : "Lokalisation der Variante",
      "definition" : "Lokalisation im kodierenden, regulatorischen oder intergenischen Bereich",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.LossOfHeterozygosity",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.EinfacheVariante.LossOfHeterozygosity",
      "short" : "Loss of Heterozygosity (LOH)",
      "definition" : "Loss of Heterozygosity (LOH) im Bereich der Variante Ja / Nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante",
      "short" : "Variante mit Kopienzahlveränderung (Copy Number Variation, CNV)",
      "definition" : "Variante mit Kopienzahlveränderung (Copy Number Variation, CNV)",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Variante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVTyp",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVTyp",
      "short" : "CNV-Typ",
      "definition" : "Komplettverlust, partieller Verlust, Amplifikation",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Quellprobe",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Quellprobe",
      "short" : "Art der Quellprobe",
      "definition" : "Art der Quellprobe (somatisch oder Keimbahn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Gen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Gen",
      "short" : "Gen",
      "definition" : "Gen kodiert nach HGNC - falls nur ein Gen betreffend",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Chromosom",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Chromosom",
      "short" : "Chromosom",
      "definition" : "Chromosom",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVStartPosition",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVStartPosition",
      "short" : "CNV-Start",
      "definition" : "Startposition des CNV basierend auf Hg38",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVEndPosition",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CNVEndPosition",
      "short" : "CNV-Ende",
      "definition" : "Endposition des CNV basierend auf Hg38",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CopyNumber",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.CopyNumber",
      "short" : "Copy Number",
      "definition" : "Copy Number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Lokalization",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.CopyNumberVariante.Lokalization",
      "short" : "Lokalisation der Variante",
      "definition" : "Lokalisation im kodierenden, regulatorischen oder intergenischen Bereich",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante",
      "short" : "Strukturelle Variante",
      "definition" : "Strukturelle Variante",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Variante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Quellprobe",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Quellprobe",
      "short" : "Art der Quellprobe",
      "definition" : "Art der Quellprobe (somatisch oder Keimbahn)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Gen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Gen",
      "short" : "Gen",
      "definition" : "N-terminales Gen",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.GenC",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.GenC",
      "short" : "Gen",
      "definition" : "C-terminales Gen, falls in-frame und kodierend",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.StrukturTyp",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.StrukturTyp",
      "short" : "Variantentyp",
      "definition" : "Variantentyp (Inversion, Translokation, Deletion, Insertion, Duplikation)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Beschreibung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Beschreibung",
      "short" : "Beschreibung der Variante",
      "definition" : "Beschreibung der Variante nach HGVS oder ISCN",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Nachweismethode",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Nachweismethode",
      "short" : "Nachweismethode",
      "definition" : "Nachweismethode (DNA / RNA)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Lokalization",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.StrukturelleVariante.Lokalization",
      "short" : "Lokalisation der Variante",
      "definition" : "Lokalisation im kodierenden, regulatorischen oder intergenischen Bereich",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante",
      "short" : "Expressionsvariante",
      "definition" : "Expressionsvariante",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Variante",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Gen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Gen",
      "short" : "Gen",
      "definition" : "Gen kodiert nach HGNC",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Expression",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Expression",
      "short" : "Expression",
      "definition" : "Expression des Gens (über- oder unterexprimiert)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Bewertungsgrundlage",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Bewertungsgrundlage",
      "short" : "Bewertungsgrundlage",
      "definition" : "Bewertungsgrundlage der Expression (z.B. Vergleichskohorte von 400 Patienten)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.TMB",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.TMB",
      "short" : "Tumor Mutational Burden (TMB)",
      "definition" : "Tumor Mutational Burden (TMB) in Mut/Mb",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "decimal"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.HRD",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.HRD",
      "short" : "Homologous Recombination Deficiency (HRD)",
      "definition" : "Homologous Recombination Deficiency (HRD) erhöht ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.LST",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.LST",
      "short" : "Large Scale Transition (LST)",
      "definition" : "Large Scale Transition (LST) erhöht ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.TAI",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.TAI",
      "short" : "Telomeric Allelic Imbalance (TAI)",
      "definition" : "Telomeric Allelic Imbalance (TAI) erhöht ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.SBS",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.SBS",
      "short" : "Single Base Substitution (SBS)",
      "definition" : "Single Base Substitution (SBS) erhöht ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.SBSSignature",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.SBSSignature",
      "short" : "Single Base Substitution Signature",
      "definition" : "Single Base Substitution Signature",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Lokalization",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieMolekular.ExpressionsVariante.Lokalization",
      "short" : "Lokalisation der Variante",
      "definition" : "Lokalisation im kodierenden, regulatorischen oder intergenischen Bereich",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan",
      "short" : "Therapieplan",
      "definition" : "Therapieplan",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard",
      "short" : "Molekulares Tumorboard",
      "definition" : "Molekulares Tumorboard",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.Datum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.Datum",
      "short" : "Datum",
      "definition" : "Datum des Tumorboards",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungStudie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungStudie",
      "short" : "Empfehlung Studie",
      "definition" : "Empfehlung zur Studienteilnahme ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungBeratung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungBeratung",
      "short" : "Empfehlung humangenetische Beratung",
      "definition" : "Empfehlung zu einer humangenetischen Beratung ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungReevaluation",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungReevaluation",
      "short" : "Empfehlung Reevaluation",
      "definition" : "Empfehlung zur Reevaluation der molekularen Diagnostik ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperation",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperation",
      "short" : "Empfehlung Operation",
      "definition" : "Empfehlung zur Operation ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationArt",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationArt",
      "short" : "empfohlenene Operation",
      "definition" : "empfohlenen Operation",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationRisikoreduzierend",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationRisikoreduzierend",
      "short" : "empfohlene Operation ist riskoreduzierend",
      "definition" : "empfohlenen Operation ist riskoreduzierend ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationTherapeutisch",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.EmpfehlungOperationTherapeutisch",
      "short" : "empfohlene Operation ist therapeutisch",
      "definition" : "empfohlenene Operation ist therapeutisch ja/nein",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.DurchgefuehrteOperation",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.MolekularesTumorboard.DurchgefuehrteOperation",
      "short" : "Durchgeführte Operation",
      "definition" : "Durchgeführte Operation nach OPS inkl. Version",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie",
      "short" : "Empfohlene Studieneinschlüsse",
      "definition" : "Empfohlene Studieneinschlüsse",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Studie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Register",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Register",
      "short" : "Register",
      "definition" : "Registersystematik, in dem die StudienID angegeben wird (NCT, EudraCT/CTIS, DRKS, andere, unbekannt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.StudienID",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.StudienID",
      "short" : "Studie",
      "definition" : "StudienID in einer Registersystematik",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Studienname",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Studienname",
      "short" : "Name der Studie",
      "definition" : "Name der Studie",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Substanzen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Substanzen",
      "short" : "Substanzen",
      "definition" : "Substanzen, die in der Studie eingesetzt werden, nach ATC kodiert",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Evidenzgrad",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Evidenzgrad",
      "short" : "Evidenzgrad",
      "definition" : "Evidenzgrad",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.ZusatzverweiseEvidenzgraduierung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.ZusatzverweiseEvidenzgraduierung",
      "short" : "Zusatzverweise zur Evidenzgraduierung",
      "definition" : "Zusatzverweise zur Evidenzgraduierung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Prioritaet",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Prioritaet",
      "short" : "Priorität",
      "definition" : "Priorität der Studie, falls mehrere Studien empfohlen wurde. 1 ist höchste Priorität",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Variante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.EmpfohleneStudie.Variante",
      "short" : "Variante",
      "definition" : "interne VariantenID der Variante, die für die Studie relevant ist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung",
      "short" : "String",
      "definition" : "String",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der Therapieempfehlung",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.EmpfehlungTyp",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.EmpfehlungTyp",
      "short" : "Typ der Empfehlung",
      "definition" : "Typ der Empfehlung (z.B. inlabel, offlabel, compassionate use, unknown, secondary preventive)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Substanz",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Substanz",
      "short" : "Substanzen",
      "definition" : "Substanzen, die empfohlen werden, nach ATC kodiert",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Evidenzgrad",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Evidenzgrad",
      "short" : "Evidenzgrad",
      "definition" : "Evidenzgrad (m1A - m4, unbekannt)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Prioritaet",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Prioritaet",
      "short" : "Priorität",
      "definition" : "Priorität der Therapieempfehlung, falls mehrere Empfehlungen gegeben wurden. 1 ist höchste Priorität",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Variante",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.Variante",
      "short" : "Variante",
      "definition" : "interne VariantenID der Variante, die für die Therapieempfehlung relevant ist",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.TherapeutischeStrategie",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.Therapieempfehlung.TherapeutischeStrategie",
      "short" : "Therapeutische Strategie",
      "definition" : "Therapeutische Strategie (z.B. zielgerichtete Therapie, Immuntherapie, Chemotherapie, supportive Therapie)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen",
      "short" : "Präventive Maßnahmen",
      "definition" : "Präventive Maßnahmen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen.Identifier",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen.Identifier",
      "short" : "Identifier",
      "definition" : "interner Identifikator der präventiven Maßnahme",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen.ArtUntersuchung",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologiePlan.PraeventiveUntersuchungen.ArtUntersuchung",
      "short" : "Art der Untersuchung",
      "definition" : "Art der Untersuchung(z.B. Breast Imaging, MRI, MGR, US;Colonoscopy ; Esophago-gastro-duodenoscopy )",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup",
      "short" : "Follow-up und Umsetzung der Therapieempfehlung",
      "definition" : "Follow-up und Umsetzung der Therapieempfehlung",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Datum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Datum",
      "short" : "Datum",
      "definition" : "Datum des Follow-up",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.MetachroneTumore",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.MetachroneTumore",
      "short" : "Auftreten Metachroner Tumore",
      "definition" : "Auftreten metachroner Tumore ja/nein",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.MetachroneDiagnose",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.MetachroneDiagnose",
      "short" : "Diagnose",
      "definition" : "Diagnose des metachronen Tumors laut ICD-10",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.ECOG",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.ECOG",
      "short" : "ECOG-Status",
      "definition" : "Eastern Cooperative Oncology Group (ECOG) Performance Status nach 0,1,2,3,4,5,unknown, not applicable",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Vitalstatus",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Vitalstatus",
      "short" : "Vitalstatus",
      "definition" : "Vitalstatus des Patienten zum Zeitpunkt des Follow-ups (lebend, verstorben, unbekannt)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.LetzterKontakt",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.LetzterKontakt",
      "short" : "Letzter Kontakt",
      "definition" : "Datum des letzten Kontakts",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Todesdatum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Todesdatum",
      "short" : "Todesdatum",
      "definition" : "Datum des Todes",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien",
      "short" : "Therapien",
      "definition" : "Therapien",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.reference",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.reference",
      "short" : "Referenz Studien-/ Therapieempfehlung",
      "definition" : "Referenz auf Studien- / Therapieempfehlung",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieStart",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieStart",
      "short" : "Startdatum",
      "definition" : "Startdatum der Therapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieEnde",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieEnde",
      "short" : "Enddatum",
      "definition" : "Enddatum der Therapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieWirkstoff",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieWirkstoff",
      "short" : "Wirkstoff",
      "definition" : "Wirkstoff der Therapie nach ATC oder Text bei nicht-ATC-Wirkstoffen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieAnsprechen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieAnsprechen",
      "short" : "Ansprechen",
      "definition" : "Therapieansprechen der Therapie (PD: Progression, SD:Stabile Erkrankung, PR:Partielle Remission, CR:Komplette Remission)",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieAnsprechenDatum",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieAnsprechenDatum",
      "short" : "Datum",
      "definition" : "Datum des Ansprechens der Vortherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieEndeGrund",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.TherapieEndeGrund",
      "short" : "Ende der Therapie",
      "definition" : "Grund für das Ende der Vortherapie",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.DatenquelleTherapieansprechen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.Therapien.DatenquelleTherapieansprechen",
      "short" : "Datenquelle Therapieansprechen",
      "definition" : "Datenquelle des Therapieansprechens (z.B. Arztbrief, Entlassungsbericht, Tumordokumentation)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen",
      "short" : "Präventive Maßnahmen",
      "definition" : "Präventive Maßnahmen",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "BackboneElement"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.reference",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.reference",
      "short" : "Referenz präventive Maßnahme",
      "definition" : "interne Referenz auf präventive Maßnahme",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.preventiveMeasureResult",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.preventiveMeasureResult",
      "short" : "Ergebnis der präventiven Maßnahme",
      "definition" : "Ergebnis der präventiven Maßnahme (z.B. ohne Befund, benigner Befund, Malignom, unklar)",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.preventiveMeasureDate",
      "path" : "mii-lm-mvgenomseq-onkologie.OnkologieFollowup.PraeventiveMassnahmen.preventiveMeasureDate",
      "short" : "Datum der präventiven Maßnahme",
      "definition" : "Datum der präventiven Maßnahme",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
