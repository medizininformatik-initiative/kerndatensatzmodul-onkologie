# MII CS Onko Therapie Typ - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onko Therapie Typ 

 
Typ der Therapie 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Systemische_Therapie_Art](ValueSet-mii-vs-onko-systemische-therapie-art.md)
* [MII_VS_Onko_Therapieempfehlung_Typ](ValueSet-mii-vs-onko-therapieempfehlung-typ.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-therapie-typ",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-therapie-typ",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Therapie_Typ",
  "title" : "MII CS Onko Therapie Typ",
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
  "description" : "Typ der Therapie",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 16,
  "concept" : [{
    "code" : "CH",
    "display" : "Chemotherapie"
  },
  {
    "code" : "HO",
    "display" : "Hormontherapie"
  },
  {
    "code" : "IM",
    "display" : "Immun-/Antikörpertherapie"
  },
  {
    "code" : "ZS",
    "display" : "zielgerichtete Substanzen"
  },
  {
    "code" : "SZ",
    "display" : "Stammzelltransplantation (inklusive Knochenmarktransplantation)"
  },
  {
    "code" : "CI",
    "display" : "Chemo- + Immun-/Antikörpertherapie"
  },
  {
    "code" : "CZ",
    "display" : "Chemotherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "CIZ",
    "display" : "Chemo- + Immun-/Antikörpertherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "IZ",
    "display" : "Immun-/Antikörpertherapie + zielgerichtete Substanzen"
  },
  {
    "code" : "WW",
    "display" : "Watchful Waiting"
  },
  {
    "code" : "AS",
    "display" : "Active Surveillance"
  },
  {
    "code" : "WS",
    "display" : "Wait and see"
  },
  {
    "code" : "OP",
    "display" : "Operation"
  },
  {
    "code" : "ST",
    "display" : "Strahlentherapie"
  },
  {
    "code" : "KW",
    "display" : "keine weitere tumorspezifische Therapie empfohlen"
  },
  {
    "code" : "SO",
    "display" : "Sonstiges"
  }]
}

```
