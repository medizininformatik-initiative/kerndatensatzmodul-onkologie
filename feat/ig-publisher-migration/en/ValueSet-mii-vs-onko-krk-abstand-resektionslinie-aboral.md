# MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimental) 

 
Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom 

 **References** 

* [MII PR Onkologie Abstand Aboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-krk-abstand-resektionslinie-aboral",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-krk-abstand-resektionslinie-aboral",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KRK_Abstand_Resektionslinie_Aboral",
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
  "description" : "Value Set für semantische Kodierung des oBDS-Abstand des Tumorrandes zur aboralen Resektionslinie im Kolorektalen Karzinom",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "81175-2",
        "display" : "Distance of tumor from closest margin [Length] in Specimen by Macroscopy"
      },
      {
        "code" : "81183-6",
        "display" : "Distance of tumor from closest distal margin [Length] in Specimen by Light microscopy"
      }]
    }]
  }
}

```
