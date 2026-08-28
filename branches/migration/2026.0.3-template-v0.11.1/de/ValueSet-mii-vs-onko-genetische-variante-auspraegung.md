# MII_VS Onkologie Genetische Variante Ausprägung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII_VS Onkologie Genetische Variante Ausprägung**

## ValueSet: MII_VS Onkologie Genetische Variante Ausprägung 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-genetische-variante-auspraegung | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Genetische_Variante_Auspraegung |

 
Value Set für oBDS-Codes für Ausprägung der Genetischen Variante 

 **References** 

* [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-genetische-variante-auspraegung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-genetische-variante-auspraegung",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Genetische_Variante_Auspraegung",
  "title" : "MII_VS Onkologie Genetische Variante Ausprägung",
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
  "description" : "Value Set für oBDS-Codes für Ausprägung der Genetischen Variante",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-genetische-variante-auspraegung"
    }]
  }
}

```
