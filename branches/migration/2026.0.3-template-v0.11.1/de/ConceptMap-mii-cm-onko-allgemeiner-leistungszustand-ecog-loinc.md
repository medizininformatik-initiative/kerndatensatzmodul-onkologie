# Mapping oBDS ECOG zu LOINC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **Mapping oBDS ECOG zu LOINC**

## ConceptMap: Mapping oBDS ECOG zu LOINC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*: |

 
Mapping der oBDS-Codes für ECOG Performance Status zu LOINC Answer List LL529-9 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ConceptMap/mii-cm-onko-allgemeiner-leistungszustand-ecog-loinc",
  "version" : "2026.0.3",
  "title" : "Mapping oBDS ECOG zu LOINC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T11:08:21+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Mapping der oBDS-Codes für ECOG Performance Status zu LOINC Answer List LL529-9",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "sourceCanonical" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog",
  "targetCanonical" : "http://loinc.org/vs/LL529-9",
  "group" : [{
    "source" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
    "target" : "http://loinc.org",
    "element" : [{
      "code" : "0",
      "display" : "Normale, uneingeschränkte Aktivität wie vor der Erkrankung (90 - 100 % nach Karnofsky)",
      "target" : [{
        "code" : "LA9622-7",
        "display" : "Fully active, able to carry on all pre-disease performance without restriction",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "1",
      "display" : "Einschränkung bei körperlicher Anstrengung, aber gehfähig; leichte körperliche Arbeit bzw. Arbeit im Sitzen (z. B. leichte Hausarbeit oder Büroarbeit) möglich (70 - 80 % nach Karnofsky)",
      "target" : [{
        "code" : "LA9623-5",
        "display" : "Restricted in physically strenuous activity but ambulatory and able to carry out work of a light or sedentary nature, e.g., light house work, office work",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "2",
      "display" : "Gehfähig, Selbstversorgung möglich, aber nicht arbeitsfähig; kann mehr als 50 % der Wachzeit aufstehen (50 - 60 % nach Karnofsky)",
      "target" : [{
        "code" : "LA9624-3",
        "display" : "Ambulatory and capable of all selfcare but unable to carry out any work activities. Up and about more than 50% of waking hours",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "3",
      "display" : "Nur begrenzte Selbstversorgung möglich; ist 50 % oder mehr der Wachzeit an Bett oder Stuhl gebunden (30  40 % nach Karnofsky)",
      "target" : [{
        "code" : "LA9625-0",
        "display" : "Capable of only limited selfcare, confined to bed or chair more than 50% of waking hours",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "4",
      "display" : "Völlig pflegebedürftig, keinerlei Selbstversorgung möglich; völlig an Bett oder Stuhl gebunden (10 - 20 % nach Karnofsky)",
      "target" : [{
        "code" : "LA9626-8",
        "display" : "Completely disabled. Cannot carry on any selfcare. Totally confined to bed or chair",
        "equivalence" : "equivalent"
      }]
    },
    {
      "code" : "U",
      "display" : "Unbekannt",
      "target" : [{
        "equivalence" : "unmatched",
        "comment" : "No corresponding LOINC code for 'Unknown' available"
      }]
    }]
  }]
}

```
