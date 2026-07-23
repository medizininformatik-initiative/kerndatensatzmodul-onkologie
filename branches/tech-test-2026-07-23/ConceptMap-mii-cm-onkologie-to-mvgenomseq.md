# MII Concept Map Modellvorhaben Genomsequenzierung Onkologie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII Concept Map Modellvorhaben Genomsequenzierung Onkologie**

## ConceptMap: MII Concept Map Modellvorhaben Genomsequenzierung Onkologie (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onkologie-to-mvgenomseq | *Version*:2026.0.3 |
| Draft as of 2025-04-25 | *Computable Name*:MII_CM_MVGenomSeq_Onkologie |

 
Mapping der einzelnen MII-OnkologieProfile auf den Klinischen Datenkranz der MVGenomSeq 

 
Das Ziel dieser ConceptMap ist die Abbildung der MII-OnkologieProfile auf den MVGenomSeq-Datenkranz. Die ConceptMap ist ein Teil des MII-Onkologiemoduls und soll den Datenintegrationszentren das Erstellen von harmonisierbaren ETL-Strecken erleichtern. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onkologie-to-mvgenomseq",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onkologie-to-mvgenomseq",
  "version" : "2026.0.3",
  "name" : "MII_CM_MVGenomSeq_Onkologie",
  "title" : "MII Concept Map Modellvorhaben Genomsequenzierung Onkologie",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-04-25",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der einzelnen MII-OnkologieProfile auf den Klinischen Datenkranz der MVGenomSeq",
  "purpose" : "Das Ziel dieser ConceptMap ist die Abbildung der MII-OnkologieProfile auf den MVGenomSeq-Datenkranz. Die ConceptMap ist ein Teil des MII-Onkologiemoduls und soll den Datenintegrationszentren das Erstellen von harmonisierbaren ETL-Strecken erleichtern.",
  "sourceUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onkologie/",
  "targetUri" : "https://www.bfarm.de/DE/Das-BfArM/Aufgaben/Modellvorhaben-Genomsequenzierung",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-diagnose-primaertumor",
    "sourceVersion" : "2025.0.4",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json",
    "targetVersion" : "1.1.1",
    "element" : [{
      "code" : "Condition.code",
      "display" : "Diagnose Primärtumor",
      "target" : [{
        "code" : "diagnosisOd.mainDiagnosis",
        "display" : "Haupttumordiagnose",
        "equivalence" : "equivalent",
        "comment" : "Abbildung über ICD-10-GM-Coding Code/System/Version"
      }]
    },
    {
      "code" : "Condition.extension:Feststellungsdatum",
      "display" : "Feststellungsdatum",
      "target" : [{
        "code" : "diagnosisOd.mainDiagnosis.date",
        "display" : "Datum der Diagnose",
        "equivalence" : "equivalent",
        "comment" : "Wenn Tag unbekannt, soll auf 15. gesetzt werden"
      }]
    },
    {
      "code" : "Condition.bodySite.coding:icd-o-3.code",
      "display" : "ICD-O-3 Topographie",
      "target" : [{
        "code" : "diagnosisOd.mainDiagnosis.icdoTopography",
        "display" : "ICD-O-3 Topographie",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Condition.bodySite.coding:icd-o-3.version",
      "display" : "ICD-O-3 Version",
      "target" : [{
        "code" : "diagnosisOd.mainDiagnosis.icdoVersion",
        "display" : "ICD-O-3 Version",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Condition.extension:morphology-behavior-icdo3.valueCodeableConcept.coding.code",
      "display" : "ICD-O-3 Morphologie-Code",
      "target" : [{
        "code" : "DiagnosisOd.mainDiagnosis.icdoMorphology",
        "display" : "ICD-O-3 Morphologie",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-diagnose/StructureDefinition/Diagnose",
    "sourceVersion" : "2025.0.0",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json",
    "targetVersion" : "1.1.1",
    "element" : [{
      "code" : "Condition.code.coding",
      "display" : "Diagnosecode",
      "target" : [{
        "code" : "DiagnosisOd.additionalDiagnoses",
        "display" : "Diagnosecode",
        "equivalence" : "narrower",
        "comment" : "Abbildung über ICD-10-GM/OrphaCode/AlphaID jeweils mit Code/System/Version. Hier hauptsächlich relevante onkologische Begleit- und Vorerkrankungen. Diagnostizierte Keimbahnerkrankungen sollen über "
      }]
    },
    {
      "code" : "Condition.extension:Feststellungsdatum",
      "display" : "Feststellungsdatum",
      "target" : [{
        "code" : "DiagnosisOd.additionalDiagnoses.date",
        "display" : "Datum der Diagnose",
        "equivalence" : "equivalent",
        "comment" : "Wenn Tag unbekannt, soll auf 15. gesetzt werden"
      }]
    },
    {
      "code" : "Condition.code.coding\"",
      "display" : "Diagnosecode",
      "target" : [{
        "equivalence" : "unmatched"
      }]
    }]
  },
  {
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-allgemeiner-leistungszustand-ecog",
    "sourceVersion" : "2025.0.4",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json",
    "targetVersion" : "1.1.1",
    "element" : [{
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "ECOG-Performance-Status",
      "target" : [{
        "code" : "ecogPerformanceStatusScore",
        "display" : "ECOG-Performance-Status",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-grading",
    "sourceVersion" : "2025.0.4",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json",
    "targetVersion" : "1.1.1",
    "element" : [{
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "Histologisches Grading",
      "target" : [{
        "code" : "grading",
        "display" : "Histologisches Grading",
        "equivalence" : "equivalent"
      }]
    }]
  },
  {
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-tnm-klassifikation",
    "sourceVersion" : "2025.0.4",
    "target" : "https://github.com/BfArM-MVH/MVGenomseq_KDK/blob/main/KDK/OncologyCase.json",
    "targetVersion" : "1.1.1",
    "element" : [{
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "TNM-Klassifikation",
      "target" : [{
        "code" : "ecogPerformanceStatusScore",
        "display" : "TNM-KLassifkation",
        "equivalence" : "equivalent",
        "comment" : "für Primärtherapie entscheidendes TNM(auswerterelevanter TNM)"
      }]
    },
    {
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "TNM-T-Kategorie",
      "target" : [{
        "code" : "ecogPerformanceStatusScore",
        "display" : "TNM-KLassifkation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "TNM-N-Kategorie",
      "target" : [{
        "code" : "ecogPerformanceStatusScore",
        "display" : "TNM-KLassifkation",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "Observation.valueCodeableConcept.coding.code",
      "display" : "TNM-M-Kategorie",
      "target" : [{
        "code" : "ecogPerformanceStatusScore",
        "display" : "TNM-KLassifkation",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
