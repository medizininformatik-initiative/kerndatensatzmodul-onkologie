# MII VS Onkologie TNM V Kategorie Werte - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie TNM V Kategorie Werte 

 
Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage. 

 **References** 

* [MII PR Onkologie TNM V-Kategorie](StructureDefinition-mii-pr-onko-tnm-v-kategorie.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-v-kategorie-werte",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-v-kategorie-werte",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_V_Kategorie_Werte",
  "title" : "MII VS Onkologie TNM V Kategorie Werte",
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
  "description" : "Das ValueSet enthält die TNM Codes für die Beurteilung der Veneninvasion aus der UICC TNM - Klassifikation maligner Tumoren Achte Auflage.",
  "compose" : {
    "include" : [{
      "system" : "https://www.uicc.org/resources/tnm",
      "concept" : [{
        "code" : "V0",
        "display" : "V0"
      },
      {
        "code" : "V1",
        "display" : "V1"
      },
      {
        "code" : "V2",
        "display" : "V2"
      },
      {
        "code" : "VX",
        "display" : "VX"
      }]
    }]
  }
}

```
