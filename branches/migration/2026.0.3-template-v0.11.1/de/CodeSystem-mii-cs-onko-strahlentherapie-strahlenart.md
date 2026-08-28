# MII CS Onkologie Strahlentherapie Strahlenart - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Strahlentherapie Strahlenart**

## CodeSystem: MII CS Onkologie Strahlentherapie Strahlenart 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Strahlentherapie_Strahlenart |

 
oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Strahlentherapie Strahlenart](ValueSet-mii-vs-onko-strahlentherapie-strahlenart.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-strahlentherapie-strahlenart",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Strahlentherapie_Strahlenart",
  "title" : "MII CS Onkologie Strahlentherapie Strahlenart",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T09:05:47+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von eingesetzter Strahlenart",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-strahlentherapie-strahlenart",
  "content" : "complete",
  "count" : 18,
  "concept" : [{
    "code" : "UH",
    "display" : "Photonen (ultraharte Röntgenstrahlen, inklusive Gamma-Strahler)"
  },
  {
    "code" : "EL",
    "display" : "Elektronen"
  },
  {
    "code" : "NE",
    "display" : "Neutronen"
  },
  {
    "code" : "PN",
    "display" : "Protonen (leichte Wasserstoffionen/H1/Leichtionen)"
  },
  {
    "code" : "SI",
    "display" : "Schwerionen (schwere Kohlenstoff-Ionen/C12/Sauerstoffionen/Heliumionen)"
  },
  {
    "code" : "RO",
    "display" : "Weichstrahl (kV)"
  },
  {
    "code" : "SO",
    "display" : "Sonstige (inklusive Mixed Beams, exklusive Nuklide)"
  },
  {
    "code" : "Lu-177",
    "display" : "Lu-177"
  },
  {
    "code" : "J-131",
    "display" : "J131"
  },
  {
    "code" : "Y-90",
    "display" : "Y-90"
  },
  {
    "code" : "Ra-223",
    "display" : "Ra-223"
  },
  {
    "code" : "Ac-225",
    "display" : "Ac-225"
  },
  {
    "code" : "Sm-153",
    "display" : "Sm-153"
  },
  {
    "code" : "Tb-161",
    "display" : "Tb-161"
  },
  {
    "code" : "Sr-89",
    "display" : "Sr-89"
  },
  {
    "code" : "Ir-192",
    "display" : "Ir-192"
  },
  {
    "code" : "Co-60",
    "display" : "Co-60"
  },
  {
    "code" : "SONU",
    "display" : "Sonstige Nuklide"
  }]
}

```
