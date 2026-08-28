# MII VS Onkologie Verlauf Primärtumor - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Verlauf Primärtumor**

## ValueSet: MII VS Onkologie Verlauf Primärtumor 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Verlauf_Primaertumor |

 
oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf 

 **References** 

* [MII PR Onkologie Verlauf](StructureDefinition-mii-pr-onko-verlauf.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-verlauf-primaertumor",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-primaertumor",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Verlauf_Primaertumor",
  "title" : "MII VS Onkologie Verlauf Primärtumor",
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
  "description" : "oBDS-spezifisches ValueSet für die Beurteilung des Primärtumors im Behandlungsverlauf",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-primaertumor"
    }]
  }
}

```
