# MII CS Onkologie Residualstatus - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Residualstatus 

 
oBDS-spezifisches Codesystem für R-Klassifikation 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Beurteilung_Lokaler_Residualstatus](ValueSet-mii-vs-onko-beurteilung-lokaler-residualstatus.md)
* [MII_VS_Onko_Gesamtbeurteilung_Residualstatus](ValueSet-mii-vs-onko-gesamtbeurteilung-residualstatus.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-residualstatus",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-residualstatus",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Residualstatus",
  "title" : "MII CS Onkologie Residualstatus",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-07-02T11:24:18+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für R-Klassifikation",
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-gesamtbeurteilung-residualstatus",
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "R0",
    "display" : "Kein Residualtumor"
  },
  {
    "code" : "R1",
    "display" : "Mikroskopischer Residualtumor"
  },
  {
    "code" : "R1(is)",
    "display" : "In-Situ-Rest"
  },
  {
    "code" : "R1(cy+)",
    "display" : "Cytologischer Rest"
  },
  {
    "code" : "R2",
    "display" : "Makroskopischer Residualtumor"
  },
  {
    "code" : "RX",
    "display" : "Vorhandensein von Residualtumor kann nicht beurteilt werden"
  },
  {
    "code" : "U",
    "display" : "Residualtumorstatus ist nicht bekannt"
  }]
}

```
