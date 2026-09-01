# MII CS Onkologie Allgemeiner Leistungszustand ECOG - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Allgemeiner Leistungszustand ECOG**

## CodeSystem: MII CS Onkologie Allgemeiner Leistungszustand ECOG 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG |

 
oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Allgemeiner Leistungszustand nach ECOG](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-allgemeiner-leistungszustand-ecog",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG",
  "title" : "MII CS Onkologie Allgemeiner Leistungszustand ECOG",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T08:53:35+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog",
  "content" : "complete",
  "count" : 6,
  "concept" : [{
    "code" : "0",
    "display" : "Normale, uneingeschränkte Aktivität wie vor der Erkrankung (90 - 100 % nach Karnofsky)"
  },
  {
    "code" : "1",
    "display" : "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)"
  },
  {
    "code" : "2",
    "display" : "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)"
  },
  {
    "code" : "3",
    "display" : "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30  40 % nach Karnofsky)"
  },
  {
    "code" : "4",
    "display" : "Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden (10 - 20 % nach Karnofsky)"
  },
  {
    "code" : "U",
    "display" : "Unbekannt"
  }]
}

```
