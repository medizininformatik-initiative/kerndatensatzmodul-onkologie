# MII VS Onkologie Verlauf Gesamtbeurteilung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Verlauf Gesamtbeurteilung**

## ValueSet: MII VS Onkologie Verlauf Gesamtbeurteilung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_VS_Onko_Verlauf_Gesamtbeurteilung |

 
oBDS-spezifisches ValueSet für die Gesamtbeurteilung im Behandlungsverlauf 

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
  "id" : "mii-vs-onko-verlauf-gesamtbeurteilung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-verlauf-gesamtbeurteilung",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Verlauf_Gesamtbeurteilung",
  "title" : "MII VS Onkologie Verlauf Gesamtbeurteilung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T15:57:15+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches ValueSet für die Gesamtbeurteilung im Behandlungsverlauf",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-gesamtbeurteilung"
    }]
  }
}

```
