# MII VS Onkologie TNM Klassifikation Typ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: MII VS Onkologie TNM Klassifikation Typ 

 
Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte. 

 **References** 

* [MII PR Onkologie TNM-Klassifikation](StructureDefinition-mii-pr-onko-tnm-klassifikation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-tnm-klassifikation-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-tnm-klassifikation-typ",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_TNM_Klassifikation_Typ",
  "title" : "MII VS Onkologie TNM Klassifikation Typ",
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
  "description" : "Codes für TNM-Klassifikation Typ. Gibt an, ob die Klassifikation klinisch oder pathologisch erfolgte.",
  "copyright" : "This value set includes content from SNOMED CT, which is copyright © 2002+ International Health Terminology Standards Development Organisation (IHTSDO), and distributed by agreement between IHTSDO and HL7. Implementer use of SNOMED CT is not covered by this agreement.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "399390009",
        "display" : "TNM stage grouping"
      },
      {
        "code" : "399537006",
        "display" : "Clinical TNM stage grouping"
      },
      {
        "code" : "399588009",
        "display" : "Pathologic TNM stage grouping"
      }]
    }]
  }
}

```
