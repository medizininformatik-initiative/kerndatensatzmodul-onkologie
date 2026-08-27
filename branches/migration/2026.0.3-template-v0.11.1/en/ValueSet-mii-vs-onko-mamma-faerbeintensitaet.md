# MII VS Onkologie Mamma Färbeintensität - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Mamma Färbeintensität**

## ValueSet: MII VS Onkologie Mamma Färbeintensität 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-faerbeintensitaet | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_VS_Onko_Mamma_Faerbeintensitaet |

 
Färbeintensität der immunhistochemischen Rezeptorbestimmung (Weak, Moderate, Strong). Enumerierte Fassung der LOINC-Answer-List LL4358-9. 

 **References** 

* [MII PR Onkologie Rezeptorstatus Estrogen](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.md)
* [MII PR Onkologie Rezeptorstatus Progesteron](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-faerbeintensitaet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-faerbeintensitaet",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Faerbeintensitaet",
  "title" : "MII VS Onkologie Mamma Färbeintensität",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T11:29:36+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Färbeintensität der immunhistochemischen Rezeptorbestimmung (Weak, Moderate, Strong). Enumerierte Fassung der LOINC-Answer-List LL4358-9.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "LA13034-6",
        "display" : "Weak"
      },
      {
        "code" : "LA6751-7",
        "display" : "Moderate"
      },
      {
        "code" : "LA14974-2",
        "display" : "Strong"
      }]
    }]
  }
}

```
