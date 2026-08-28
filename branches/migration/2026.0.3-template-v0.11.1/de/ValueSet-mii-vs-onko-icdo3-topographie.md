# MII VS Onkologie ICD-O-3 Topographie - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie ICD-O-3 Topographie**

## ValueSet: MII VS Onkologie ICD-O-3 Topographie 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_ICDO3_Topographie |

 
Codes für Topographie einer neoplastischen Veränderung 

 **References** 

* [MII PR Biobank Specimen Bioprobe Core](https://simplifier.net/resolve?scope=de.medizininformatikinitiative.kerndatensatz.biobank@2026.0.1&canonical=https://www.medizininformatik-initiative.de/fhir/ext/modul-biobank/StructureDefinition/SpecimenCore)
* [MII PR Onkologie Diagnose Primärtumor](StructureDefinition-mii-pr-onko-diagnose-primaertumor.md)
* [MII PR Onkologie Fernmetastasen](StructureDefinition-mii-pr-onko-fernmetastasen.md)
* [MII PR Onkologie Frühere Tumorerkrankung](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.md)
* [MII PR Onkologie Histologie ICD-O-3](StructureDefinition-mii-pr-onko-histologie-icdo3.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-icdo3-topographie",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-icdo3-topographie",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_ICDO3_Topographie",
  "title" : "MII VS Onkologie ICD-O-3 Topographie",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T08:03:44+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für Topographie einer neoplastischen Veränderung",
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
        "value" : "T"
      }]
    },
    {
      "system" : "http://terminology.hl7.org/CodeSystem/icd-o-3",
      "version" : "2019",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "T"
      }]
    }]
  }
}

```
