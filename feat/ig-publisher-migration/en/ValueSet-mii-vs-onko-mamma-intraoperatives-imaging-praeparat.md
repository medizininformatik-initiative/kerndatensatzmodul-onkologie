# MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimental) 

 
Value Set für intraoperatives Imaging des Präparats nach Exzision bei Mamma-Karzinom 

 **References** 

* [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-intraoperatives-imaging-praeparat",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-intraoperatives-imaging-praeparat",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Intraoperatives_Imaging_Praeparat",
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
  "description" : "Value Set für intraoperatives Imaging des Präparats nach Exzision bei Mamma-Karzinom",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "code",
        "op" : "is-a",
        "value" : "1332559003"
      }]
    }]
  }
}

```
