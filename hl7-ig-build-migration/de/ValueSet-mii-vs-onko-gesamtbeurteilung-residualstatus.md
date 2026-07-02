# MII VS Onkologie Gesamtbeurteilung des Residualstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Gesamtbeurteilung des Residualstatus 

 
Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus 

 **References** 

* [MII PR Onkologie Residualstatus](StructureDefinition-mii-pr-onko-residualstatus.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-gesamtbeurteilung-residualstatus",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Gesamtbeurteilung_Residualstatus",
  "title" : "MII VS Onkologie Gesamtbeurteilung des Residualstatus",
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
  "description" : "Value Set für oBDS-Codes für die Gesamtbeurteilung des Residualstatus",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus"
    }]
  }
}

```
