# MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping**

## ConceptMap: MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-gesamtbeurteilung-sct | *Version*:2026.0.3 |
| Active Stand: 2024-04-10 | *Maschinenlesbarer Name*:MII CM Onko Verlauf Gesamtbeurteilung SCT Mapping |
| **Copyright/Rechtliches**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Mapping Gesamtbeurteilung Codes zu SNOMED-CT 

Mit Ausnahme von zwei Antwortmöglichkeiten kann die Gesamptbeurteilung gut abgebildet werden.

> Die vollständige Mapping-Tabelle wird unterhalb dieser Einleitung aus der ConceptMap generiert.



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-verlauf-gesamtbeurteilung-sct",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-verlauf-gesamtbeurteilung-sct",
  "version" : "2026.0.3",
  "name" : "MII CM Onko Verlauf Gesamtbeurteilung SCT Mapping",
  "title" : "MII CM Onko Verlauf Gesamtbeurteilung SNOMED Mapping",
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
  "description" : "Mapping Gesamtbeurteilung Codes zu SNOMED-CT",
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
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung",
    "target" : "http://snomed.info/sct/900000000000207008/version/20240401",
    "element" : [{
      "code" : "V",
      "display" : "Vollremission (complete remission, CR)",
      "target" : [{
        "code" : "550991000124107",
        "display" : "Malignant neoplasm in full remission (disorder)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "T",
      "display" : "Teilremission (partial remission, PR)",
      "target" : [{
        "code" : "551001000124108",
        "display" : "Malignant neoplasm in partial remission (disorder)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "K",
      "display" : "keine Änderung (no change, NC) = stable disease",
      "target" : [{
        "code" : "260388006",
        "display" : "No status change (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "P",
      "display" : "Progression",
      "target" : [{
        "code" : "419835002",
        "display" : "Tumor progression (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "D",
      "display" : "divergentes Geschehen",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "kein SNOMED-Term für divergentes Geschehen"
      }]
    },
    {
      "code" : "B",
      "display" : "klinische Besserung des Zustandes, Teilremissionkriterien jedoch nicht erfüllt (minimal response, MR)",
      "target" : [{
        "code" : "84190002",
        "display" : "Minimal therapeutic response (finding)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "R",
      "display" : "Vollremission mit residualen Auffälligkeiten (CRr)",
      "target" : [{
        "code" : "550991000124107",
        "display" : "Malignant neoplasm in full remission (disorder)",
        "equivalence" : "wider",
        "comment" : "Residuale Auffälligkeiten ggfs. über Postkoordination kodierbar"
      }]
    },
    {
      "code" : "Y",
      "display" : "Rezidiv",
      "target" : [{
        "code" : "1259237005",
        "display" : "Recurrent malignant neoplasm (disorder)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Beurteilung unmöglich",
      "target" : [{
        "code" : "385432009",
        "display" : "Not applicable (qualifier value)",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "X",
      "display" : "fehlende Angabe",
      "target" : [{
        "code" : "1287211007",
        "display" : "No information available (qualifier value)",
        "equivalence" : "equivalent"
      }]
    }]
  }]
}

```
