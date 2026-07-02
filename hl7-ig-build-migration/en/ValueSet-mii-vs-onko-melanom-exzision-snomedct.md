# MII VS Onko Melanom Exzision SNOMED CT - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onko Melanom Exzision SNOMED CT 

 
Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden. 

 **References** 

* [MII PR Onko Melanom Exzision](StructureDefinition-mii-pr-onko-melanom-exzision.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-melanom-exzision-snomedct",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-melanom-exzision-snomedct",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Melanom_Exzision_SNOMEDCT",
  "title" : "MII VS Onko Melanom Exzision SNOMED CT",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Melanom-spezifische Exzisionen basierend auf SNOMED CT. Enthält den Code für Melanom-Exzision. Weitere anatomische Details können über bodySite kodiert werden.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "177281002",
        "display" : "Excision of melanoma (procedure)"
      }]
    }]
  }
}

```
