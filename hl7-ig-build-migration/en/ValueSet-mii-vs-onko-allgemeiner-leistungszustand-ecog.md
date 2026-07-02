# MII VS Onkologie Allgemeiner Leistungszustand nach ECOG - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie Allgemeiner Leistungszustand nach ECOG 

 
Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach ECOG 

 **References** 

* [MII PR Onkologie Allgemeiner Leistungszustand ECOG](StructureDefinition-mii-pr-onko-allgemeiner-leistungszustand-ecog.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-allgemeiner-leistungszustand-ecog",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-allgemeiner-leistungszustand-ecog",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Allgemeiner_Leistungszustand_ECOG",
  "title" : "MII VS Onkologie Allgemeiner Leistungszustand nach ECOG",
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
  "description" : "Value Set für oBDS-Codes für den Allgemeinen Leistungszustand nach ECOG",
  "compose" : {
    "include" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-allgemeiner-leistungszustand-ecog"
    }]
  }
}

```
