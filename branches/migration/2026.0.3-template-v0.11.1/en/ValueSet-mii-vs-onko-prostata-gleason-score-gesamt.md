# MII VS Onkologie Prostata Gleason Score Gesamt - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Prostata Gleason Score Gesamt**

## ValueSet: MII VS Onkologie Prostata Gleason Score Gesamt (Experimental) 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score-gesamt | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_Prostata_Gleason_Score_Gesamt |
| **Copyright/Legal**: This material includes SNOMED Clinical Terms® (SNOMED CT®) which is used by permission of SNOMED International. All rights reserved. SNOMED CT®, was originally created by The College of American Pathologists. SNOMED and SNOMED CT are registered trademarks of SNOMED International. Implementers of these artefacts must have the appropriate SNOMED CT Affiliate license. | |

 
Value Set für den Gleason-Gesamtscore (Summe aus primärem und sekundärem Pattern) ohne Aufschlüsselung in Primär-/Sekundär-Pattern. Enthält die Scores 2 bis 10 aus der SNOMED-CT-Hierarchie unterhalb von 385377005 (Gleason grade finding for prostatic cancer). Damit sind auch Gesamtscores < 6 abbildbar, wie sie bei TURP-Material und in historischen Befunden vorkommen. Ein Gesamtscore 1 existiert nicht, da sich der Score aus zwei Patterns mit Werten ab 1 zusammensetzt. Die ISUP Grade Groups sind bewusst nicht enthalten; sie werden über MII_VS_Onko_Prostata_Gleason_Score abgebildet. 

 **References** 

* [MII PR Onkologie Prostata Gleason Score Gesamt](StructureDefinition-mii-pr-onko-prostate-gleason-score-gesamt.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-prostata-gleason-score-gesamt",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-prostata-gleason-score-gesamt",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Prostata_Gleason_Score_Gesamt",
  "title" : "MII VS Onkologie Prostata Gleason Score Gesamt",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T06:31:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für den Gleason-Gesamtscore (Summe aus primärem und sekundärem Pattern) ohne Aufschlüsselung in Primär-/Sekundär-Pattern. Enthält die Scores 2 bis 10 aus der SNOMED-CT-Hierarchie unterhalb von 385377005 (Gleason grade finding for prostatic cancer). Damit sind auch Gesamtscores < 6 abbildbar, wie sie bei TURP-Material und in historischen Befunden vorkommen. Ein Gesamtscore 1 existiert nicht, da sich der Score aus zwei Patterns mit Werten ab 1 zusammensetzt. Die ISUP Grade Groups sind bewusst nicht enthalten; sie werden über MII_VS_Onko_Prostata_Gleason_Score abgebildet.",
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
        "code" : "49878003",
        "display" : "Gleason grade score 2 out of 10 (finding)"
      },
      {
        "code" : "46677009",
        "display" : "Gleason grade score 3 out of 10 (finding)"
      },
      {
        "code" : "18430005",
        "display" : "Gleason grade score 4 out of 10 (finding)"
      },
      {
        "code" : "74013009",
        "display" : "Gleason grade score 5 out of 10 (finding)"
      },
      {
        "code" : "84556003",
        "display" : "Gleason grade score 6 out of 10 (finding)"
      },
      {
        "code" : "57403001",
        "display" : "Gleason grade score 7 out of 10 (finding)"
      },
      {
        "code" : "33013007",
        "display" : "Gleason grade score 8 out of 10 (finding)"
      },
      {
        "code" : "58925000",
        "display" : "Gleason grade score 9 out of 10 (finding)"
      },
      {
        "code" : "24514009",
        "display" : "Gleason grade score 10 out of 10 (finding)"
      }]
    }]
  }
}

```
