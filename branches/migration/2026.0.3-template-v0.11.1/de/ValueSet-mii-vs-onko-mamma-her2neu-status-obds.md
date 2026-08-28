# MII VS Onkologie Mamma Her2neu Status oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Mamma Her2neu Status oBDS**

## ValueSet: MII VS Onkologie Mamma Her2neu Status oBDS 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-her2neu-status-obds | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Mamma_Her2neu_Status_oBDS |

 
Value Set für Her2neu Status nach oBDS 

 **References** 

* [MII PR Onkologie Her2neu Status](StructureDefinition-mii-pr-onko-mamma-her2neu-status.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-her2neu-status-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-her2neu-status-obds",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Her2neu_Status_oBDS",
  "title" : "MII VS Onkologie Mamma Her2neu Status oBDS",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T06:12:02+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Her2neu Status nach oBDS",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds"
    }]
  }
}

```
