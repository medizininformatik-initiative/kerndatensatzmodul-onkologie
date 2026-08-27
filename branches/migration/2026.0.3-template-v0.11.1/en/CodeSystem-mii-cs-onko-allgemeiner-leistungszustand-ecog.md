# MII CS Onkologie Allgemeiner Leistungszustand ECOG - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Allgemeiner Leistungszustand ECOG**

## CodeSystem: MII CS Onkologie Allgemeiner Leistungszustand ECOG 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG |

 
oBDS-spezifisches Codesystem für den Allgemeinen Leistungszustand nach ECOG 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Allgemeiner Leistungszustand nach ECOG](ValueSet-mii-vs-onko-allgemeiner-leistungszustand-ecog.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-allgemeiner-leistungszustand-ecog",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Allgemeiner_Leistungszustand_ECOG",
  "title" : "MII CS Onkologie Allgemeiner Leistungszustand ECOG",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T12:06:00+00:00",
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
