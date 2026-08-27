# MII CM Onko Genetische Variante Auspraegung SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CM Onko Genetische Variante Auspraegung SNOMED Mapping**

## ConceptMap: MII CM Onko Genetische Variante Auspraegung SNOMED Mapping 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct | *Version*:2026.0.3 |
| Active as of 2024-04-10 | *Computable Name*:MII CM Onko Genetische Variante Auspraegung SCT Mapping |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Therapieabweichung Codes zu SNOMED-CT 

The expression of the genetic variant. The assessment of the expression is, together with a free-text description of the variant, to the cancer registries

For a detailed assessment on the basis of international classifications, the MII variant from the molecular genetic report can be used (see [Genetic variant: Observation](StructureDefinition-mii-pr-onko-genetische-variante.md)).

> The complete mapping table is generated from the ConceptMap below this introduction.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-genetische-variante-auspraegung-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-genetische-variante-auspraegung-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Genetische Variante Auspraegung SCT Mapping",
  "title" : "MII CM Onko Genetische Variante Auspraegung SNOMED Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2024-04-10",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping Therapieabweichung Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "M",
      "display" : "Mutation/positiv",
      "target" : [{
        "code" : "55446002",
        "display" : "Genetic mutation (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "W",
      "display" : "Wildtyp/nicht mutiert/ negativ",
      "target" : [{
        "code" : "412730000",
        "display" : "Genetic finding not detected (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "Polymorphismus",
      "target" : [{
        "code" : "50334000",
        "display" : "Genetic polymorphism (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "S",
      "display" : "Sonstiges",
      "target" : [{
        "code" : "74964007",
        "display" : "Other (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "N",
      "display" : "Nicht bestimmbar",
      "target" : [{
        "code" : "1156316003",
        "display" : "Cannot be determined (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Unbekannt",
      "target" : [{
        "code" : "261665006",
        "display" : "Unknown (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
