# MII CM Onko Fernmetastasen SCT Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Fernmetastasen SCT Mapping**

## ConceptMap: MII CM Onko Fernmetastasen SCT Mapping (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-fernmetastasen-sct | *Version*:2026.0.3 |
| Active Stand: 2026-08-31 | *Maschinenlesbarer Name*:mii-cm-onko-fernmetastasen-sct-mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Fernmetastasen 

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-fernmetastasen-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-fernmetastasen-sct",
  "version" : "2026.0.3",
  "name" : "mii-cm-onko-fernmetastasen-sct-mapping",
  "title" : "Fernmetastasen Mapping",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-31T13:44:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Fernmetastasen",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "PUL",
      "display" : "Lunge",
      "target" : [{
        "code" : "258332000",
        "display" : "PUL (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OSS",
      "display" : "Knochen",
      "target" : [{
        "code" : "258333005",
        "display" : "OSS (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "HEP",
      "display" : "Leber",
      "target" : [{
        "code" : "258334004",
        "display" : "HEP (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "BRA",
      "display" : "Hirn",
      "target" : [{
        "code" : "313367003",
        "display" : "BRA (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "LYM",
      "display" : "Lymphknoten",
      "target" : [{
        "code" : "258336002",
        "display" : "LYM (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "MAR",
      "display" : "Knochenmark",
      "target" : [{
        "code" : "14016003",
        "display" : "Bone marrow structure (body structure)",
        "equivalence" : "equivalent",
        "comment" : "In TNM 8. Edition ist MAR als Lokalisation mit aufgeführt, in der aktuellen SNOMED-Version so aber nicht enthalten."
      }]
    },
    {
      "code" : "PLE",
      "display" : "Pleura",
      "target" : [{
        "code" : "258337006",
        "display" : "PLE (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "PER",
      "display" : "Peritoneum",
      "target" : [{
        "code" : "258338001",
        "display" : "PER (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "ADR",
      "display" : "Nebennieren",
      "target" : [{
        "code" : "258339009",
        "display" : "ADR (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "SKI",
      "display" : "Haut",
      "target" : [{
        "code" : "258340006",
        "display" : "SKI (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "OTH",
      "display" : "andere Organe",
      "target" : [{
        "code" : "258348004",
        "display" : "OTH (body structure)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "GEN",
      "display" : "generalisierte Metastasierung",
      "target" : [{
        "code" : "405843009",
        "display" : "Widespread metastatic malignant neoplastic disease (disorder)",
        "equivalence" : "equivalent",
        "comment" : "no specific localisation term for generalized (except maybe 60132005 as Generalized (qualifier value)), but this concept is equally valid to describe the condition"
      }]
    }]
  }]
}

```
