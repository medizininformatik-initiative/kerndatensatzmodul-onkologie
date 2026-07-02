# MII CS Onkologie KRK Operationstyp - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie KRK Operationstyp 

 
oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* This CodeSystem is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-krk-operationstyp",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-operationstyp",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_KRK_Operationstyp",
  "title" : "MII CS Onkologie KRK Operationstyp",
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
  "description" : "oBDS-spezifisches Codesystem TME-Präparat, basierend auf der S3-Leitlinie Mammakarzinom v",
  "caseSensitive" : true,
  "content" : "fragment",
  "concept" : [{
    "code" : "T",
    "display" : "TME",
    "definition" : "Totale mesorektale Exzision"
  },
  {
    "code" : "P",
    "display" : "PME",
    "definition" : "Partielle mesorektale Exzision"
  },
  {
    "code" : "L",
    "display" : "Lokale Exzision",
    "definition" : "Lokale Exzision des Rektums"
  },
  {
    "code" : "A",
    "display" : "Andere Operation",
    "definition" : "Andere Operation des Rektums"
  },
  {
    "code" : "U",
    "display" : "Unbekannt",
    "definition" : "Unbekannte Operation des Rektums"
  }]
}

```
