# MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## ValueSet: (Experimentell) 

 
Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom 

 **References** 

* [MII PR Onkologie Mamma Operation](StructureDefinition-mii-pr-onko-mamma-operation.md)
* [MII PR Onkologie Präoperative Markierung Mamma](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-mamma-praeoperative-markierung-modalitaet",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Mamma_Praeoperative_Markierung_Modalitaet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-07-02T12:18:38+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Value Set für Imagingmodalität der präoperativen Markierung bei Mamma-Karzinom",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "1269000008",
        "display" : "Insertion of guide wire into breast using mammography guidance (procedure)"
      },
      {
        "code" : "433222002",
        "display" : "Insertion of guide wire into breast using ultrasound guidance (procedure)"
      },
      {
        "code" : "836381000000102",
        "display" : "Insertion of marker into breast using plain X-ray guidance (procedure)"
      },
      {
        "code" : "911831000000104",
        "display" : "Wire guided localization of lesion of breast using magnetic resonance imaging guidance (procedure)"
      }]
    }]
  }
}

```
