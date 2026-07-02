# MII CS Onkologie Grading - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## CodeSystem: MII CS Onkologie Grading 

 
Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an. 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII_VS_Onko_Grading](ValueSet-mii-vs-onko-grading.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-grading",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-grading",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Grading",
  "title" : "MII CS Onkologie Grading",
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
  "description" : "Codes für Histologie Grading. Gibt den Differenzierungsgrad des Tumors entsprechend der aktuellen TNM-Auflage an.",
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-grading",
  "content" : "complete",
  "count" : 13,
  "concept" : [{
    "code" : "0",
    "display" : "primär erworbene Melanose ohne zelluläre Atypien",
    "definition" : "(nur beim malignen Melanom der Konjunktiva)"
  },
  {
    "code" : "1",
    "display" : "gut differenziert"
  },
  {
    "code" : "2",
    "display" : "mäßig differenziert"
  },
  {
    "code" : "3",
    "display" : "schlecht differenziert"
  },
  {
    "code" : "4",
    "display" : "undifferenziert"
  },
  {
    "code" : "5",
    "display" : "nur für C61, TNM8"
  },
  {
    "code" : "X",
    "display" : "nicht bestimmbar"
  },
  {
    "code" : "L",
    "display" : "low grade (G1 oder G2)"
  },
  {
    "code" : "M",
    "display" : "intermediate grade (G2 oder G3)"
  },
  {
    "code" : "H",
    "display" : "high grade (G3 oder G4)"
  },
  {
    "code" : "B",
    "display" : "Borderline"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  },
  {
    "code" : "T",
    "display" : "trifft nicht zu"
  }]
}

```
