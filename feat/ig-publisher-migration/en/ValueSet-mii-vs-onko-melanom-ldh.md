# MII_VS_Onko_Melanom_LDH - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimental) 

 
Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom 

 **References** 

* [MII PR Onkologie Melanom LDH](StructureDefinition-mii-pr-onko-melanom-ldh.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-ldh",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-ldh",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_LDH",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Laktatdehydrogenase (LDH) Laborwerte beim Malignen Melanom",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "2532-0",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma"
      },
      {
        "code" : "14804-9",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Lactate to pyruvate reaction"
      },
      {
        "code" : "14805-6",
        "display" : "Lactate dehydrogenase [Enzymatic activity/volume] in Serum or Plasma by Pyruvate to lactate reaction"
      }]
    }]
  }
}

```
