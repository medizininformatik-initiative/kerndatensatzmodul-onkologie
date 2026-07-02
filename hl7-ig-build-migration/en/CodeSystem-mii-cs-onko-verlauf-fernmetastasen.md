# MII CS Onkologie Verlauf Fernmetastasen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Verlauf Fernmetastasen 

 
oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf 

This Code system is referenced in the definition of the following value sets:

* [MII_VS_Onko_Verlauf_Fernmetastasen](ValueSet-mii-vs-onko-verlauf-fernmetastasen.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-verlauf-fernmetastasen",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-verlauf-fernmetastasen",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Verlauf_Fernmetastasen",
  "title" : "MII CS Onkologie Verlauf Fernmetastasen",
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
  "description" : "oBDS-spezifisches Codesystem für die Beurteilung von Fernmetastasen im Behandlungsverlauf ",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 8,
  "concept" : [{
    "code" : "K",
    "display" : "keine Fernmetastasen nachweisbar"
  },
  {
    "code" : "R",
    "display" : "neu aufgetretene Fernmetastase(n) bzw. Metastasenrezidiv"
  },
  {
    "code" : "T",
    "display" : "Fernmetastasen Residuen"
  },
  {
    "code" : "P",
    "display" : "Fernmetastasen Progress"
  },
  {
    "code" : "N",
    "display" : "Fernmetastasen No Change"
  },
  {
    "code" : "F",
    "display" : "fraglicher Befund"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  },
  {
    "code" : "X",
    "display" : "fehlende Angabe"
  }]
}

```
