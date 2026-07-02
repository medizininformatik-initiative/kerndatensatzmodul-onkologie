# MII CS Onkologie Mamma Her2neu Status oBDS - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Mamma Her2neu Status oBDS 

 
oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243) 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Mamma_Her2neu_Status_oBDS](ValueSet-mii-vs-onko-mamma-her2neu-status-obds.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-mamma-her2neu-status-obds",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-mamma-her2neu-status-obds",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Mamma_Her2neu_Status_oBDS",
  "title" : "MII CS Onkologie Mamma Her2neu Status oBDS",
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
  "description" : "oBDS-spezifisches Codesystem für Her2neu Status gemäß oBDS Feld M4 (243)",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "P",
    "display" : "positiv",
    "definition" : "Positiv: IHC +++ (Score 3+) oder IHC ++ (Score 2+) und ISH (FISH, CISH o. Ä.) positiv"
  },
  {
    "code" : "N",
    "display" : "negativ",
    "definition" : "Negativ"
  },
  {
    "code" : "U",
    "display" : "unbekannt",
    "definition" : "Unbekannt"
  }]
}

```
