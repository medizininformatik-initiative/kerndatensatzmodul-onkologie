# MII VS Onkologie ICD-O-3 Morphologie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie ICD-O-3 Morphologie 

 
Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung 

 **References** 

* [MII EX Onko Histology Morphology Behavior ICDO3](StructureDefinition-mii-ex-onko-histology-morphology-behavior-icdo3.md)
* [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-icdo3-morphologie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-morphologie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ICDO3_Morphologie",
  "title" : "MII VS Onkologie ICD-O-3 Morphologie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für histologische Morphologie und Verhalten einer neoplastischen Veränderung",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "M"
      }]
    }]
  }
}

```
