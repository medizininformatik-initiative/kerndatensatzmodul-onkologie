# MII CS Onkologie Strahlentherapie Applikationsart - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Applikationsart**

## CodeSystem: MII CS Onkologie Strahlentherapie Applikationsart 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Strahlentherapie_Applikationsart |

 
oBDS-spezifisches Codesystem für Klassifikation von Intention der OP 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Strahlentherapie Applikationsart](ValueSet-mii-vs-onko-strahlentherapie-applikationsart.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-strahlentherapie-applikationsart",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Strahlentherapie_Applikationsart",
  "title" : "MII CS Onkologie Strahlentherapie Applikationsart",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Intention der OP",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-applikationsart",
  "content" : "complete",
  "count" : 27,
  "concept" : [{
    "code" : "P",
    "display" : "perkutan (Teletherapie)"
  },
  {
    "code" : "P-ST",
    "display" : "perkutan stereotaktisch"
  },
  {
    "code" : "P-4D",
    "display" : "perkutan, atemgetriggert"
  },
  {
    "code" : "P-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert"
  },
  {
    "code" : "PRCN",
    "display" : "perkutan ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-ST",
    "display" : "perkutan, stereotaktisch ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-4D",
    "display" : "perkutan, atemgetriggert, ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCN-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert, ohne Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ",
    "display" : "perkutan mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-ST",
    "display" : "perkutan, stereotaktisch mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-4D",
    "display" : "perkutan, atemgetriggert, mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "PRCJ-ST4D",
    "display" : "perkutan, stereotaktisch, atemgetriggert, mit Chemotherapie/Sensitizer"
  },
  {
    "code" : "K",
    "display" : "endokavitäre Kontakttherapie"
  },
  {
    "code" : "KHDR",
    "display" : "endokavitäre Kontakttherapie, high dose rate therapy"
  },
  {
    "code" : "KLDR",
    "display" : "endokavitäre Kontakttherapie, low dose rate therapy"
  },
  {
    "code" : "KPDR",
    "display" : "endokavitäre Kontakttherapie, pulsed dose rate therapy"
  },
  {
    "code" : "I",
    "display" : "intersitielle Kontakttherapie"
  },
  {
    "code" : "IHDR",
    "display" : "intersitielle Kontakttherapie, high dose rate therapy"
  },
  {
    "code" : "ILDR",
    "display" : "intersitielle Kontakttherapie, low dose rate therapy"
  },
  {
    "code" : "IPDR",
    "display" : "intersitielle Kontakttherapie, pulsed dose rate therapy"
  },
  {
    "code" : "MSIRT",
    "display" : "selektive interne Radio-Therapie"
  },
  {
    "code" : "MPRRT",
    "display" : "Peptid-Radio-Rezeptor-Therapie"
  },
  {
    "code" : "MPSMA",
    "display" : "PSMA-Therapie"
  },
  {
    "code" : "MRJT",
    "display" : "Radiojod-Therapie"
  },
  {
    "code" : "MRIT",
    "display" : "Radioimmun-Therapie"
  },
  {
    "code" : "M",
    "display" : "sonstige metabolische Radionuklidtherapie"
  },
  {
    "code" : "S",
    "display" : "Sonstiges"
  }]
}

```
