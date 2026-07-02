# MII CS Onkologie Fernmetastasen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Fernmetastasen 

 
oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Fernmetastasen](ValueSet-mii-vs-onko-fernmetastasen.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-fernmetastasen",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-fernmetastasen",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Fernmetastasen",
  "title" : "MII CS Onkologie Fernmetastasen",
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
  "description" : "oBDS-spezifisches Codesystem für Fernmetastasen, basierend auf Spezifikation durch TNM-Klassifikation",
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-fernmetastasen",
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "PUL",
    "display" : "Lunge"
  },
  {
    "code" : "OSS",
    "display" : "Knochen"
  },
  {
    "code" : "HEP",
    "display" : "Leber"
  },
  {
    "code" : "BRA",
    "display" : "Hirn"
  },
  {
    "code" : "LYM",
    "display" : "Lymphknoten"
  },
  {
    "code" : "MAR",
    "display" : "Knochenmark"
  },
  {
    "code" : "PLE",
    "display" : "Pleura"
  },
  {
    "code" : "PER",
    "display" : "Peritoneum"
  },
  {
    "code" : "ADR",
    "display" : "Nebennieren"
  },
  {
    "code" : "SKI",
    "display" : "Haut"
  },
  {
    "code" : "OTH",
    "display" : "andere Organe"
  },
  {
    "code" : "GEN",
    "display" : "generalisierte Metastasierung"
  }]
}

```
