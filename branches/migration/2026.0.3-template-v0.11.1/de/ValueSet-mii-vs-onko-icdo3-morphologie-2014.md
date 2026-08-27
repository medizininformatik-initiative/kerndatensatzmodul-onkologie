# MII VS Onkologie ICD-O-3 Morphologie 2014 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie ICD-O-3 Morphologie 2014**

## ValueSet: MII VS Onkologie ICD-O-3 Morphologie 2014 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie-2014 | *Version*:2026.0.3 |
| Active Stand: 2026-08-27 | *Maschinenlesbarer Name*:MII_VS_Onko_ICDO3_Morphologie_2014 |

 
Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-icdo3-morphologie-2014",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie-2014",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ICDO3_Morphologie_2014",
  "title" : "MII VS Onkologie ICD-O-3 Morphologie 2014",
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
  "description" : "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung gemäß ICD-O-3 Erste Revision (deutsche Ausgabe 2014).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "version" : "2014",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "M"
      }]
    }]
  }
}

```
