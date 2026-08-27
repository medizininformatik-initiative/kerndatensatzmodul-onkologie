# mii-sp-onko-ext-systemischetherapie-stellungzurop - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **mii-sp-onko-ext-systemischetherapie-stellungzurop**

## SearchParameter: mii-sp-onko-ext-systemischetherapie-stellungzurop (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-ext-systemischetherapie-stellungzurop | *Version*:2026.0.3 |
| Active Stand: 2024-04-15 | *Maschinenlesbarer Name*:MII_SP_Procedure_Extension_Systemischetherapie_StellungZurOp |

 
SearchParameter for Procedure.extension[StellungZurOp] 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "mii-sp-onko-ext-systemischetherapie-stellungzurop",
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/SearchParameter/mii-sp-onko-ext-systemischetherapie-stellungzurop",
  "version" : "2026.0.3",
  "name" : "MII_SP_Procedure_Extension_Systemischetherapie_StellungZurOp",
  "status" : "active",
  "experimental" : true,
  "date" : "2024-04-15",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "SearchParameter for Procedure.extension[StellungZurOp]",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "code" : "systemischetherapie-stellungzurop",
  "base" : ["Procedure"],
  "type" : "token",
  "expression" : "Procedure.extension.where(url='https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-systemische-therapie-stellungzurop').value"
}

```
