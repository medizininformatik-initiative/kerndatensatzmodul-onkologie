# MII CS Onkologie Primärtumor Diagnosesicherung - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Primärtumor Diagnosesicherung**

## CodeSystem: MII CS Onkologie Primärtumor Diagnosesicherung 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung | *Version*:2026.0.3 |
| Active as of 2026-08-27 | *Computable Name*:MII_CS_Onko_Primaertumor_Diagnosesicherung |

 
Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose. 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Primärtumor Diagnosesicherung](ValueSet-mii-vs-onko-primaertumor-diagnosesicherung.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-primaertumor-diagnosesicherung",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-primaertumor-diagnosesicherung",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Primaertumor_Diagnosesicherung",
  "title" : "MII CS Onkologie Primärtumor Diagnosesicherung",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-27T15:31:43+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Codes für Primärtumor Diagnosesicherung, d.h. die höchste erreichte Diagnosesicherheit der Diagnose.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-primaertumor-diagnosesicherung",
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "0",
    "display" : "Totenschein"
  },
  {
    "code" : "1",
    "display" : "klinisch",
    "definition" : "Die Diagnose wurde vor dem Tode gestellt, jedoch ohne die folgenden Maßnahmen (Schlüsselnummern 2 - 7)."
  },
  {
    "code" : "2",
    "display" : "klinische Diagnostik",
    "definition" : "Alle Untersuchungstechniken, einschließlich Röntgen, Endoskopie, bildgebender Verfahren, Ultraschall, explorativer Eingriffe (wie Laparotomie) und Autopsie, aber ohne Gewebsuntersuchung."
  },
  {
    "code" : "4",
    "display" : "spezifische Tumor-Marker",
    "definition" : "Zusätzlich biochemische und/oder immunologische Marker, die für einen bestimmten Tumorsitz spezifisch sind."
  },
  {
    "code" : "5",
    "display" : "Zytologie",
    "definition" : "Untersuchung von Zellen aus einem primären oder sekundären Sitz, einschließlich der aus durch Endoskopie oder durch Punktion gewonnenen Aspiraten; beinhaltet auch die mikroskopische Untersuchung peripheren Blutes und von Knochenmarkspunktaten."
  },
  {
    "code" : "6",
    "display" : "histologische Untersuchung einer Metastase",
    "definition" : "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie."
  },
  {
    "code" : "7",
    "display" : "histologische Untersuchung eines Primärtumors",
    "definition" : "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein."
  },
  {
    "code" : "7.1",
    "display" : "histologische Untersuchung eines Primärtumors",
    "definition" : "Histologische Untersuchung des Gewebes aus einem Primärtumor, gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien; schließt auch die Untersuchung von Proben des Primärtumors aus einer Autopsie ein."
  },
  {
    "code" : "7.2",
    "display" : "histologische Untersuchung einer Metastase",
    "definition" : "Histologische Untersuchung des Gewebes aus einer Metastase, inklusive der Untersuchung von Proben aus einer Autopsie."
  },
  {
    "code" : "7.3",
    "display" : "Histologie der Autopsie",
    "definition" : "Histologische Untersuchung von Tumorgewebe gleich wie es gewonnen wurde; inklusive aller Schnitt-Techniken und Knochenmarksbiopsien"
  },
  {
    "code" : "8",
    "display" : "Zytogenetisch und/oder molekularer Test",
    "definition" : "Nachweis von tumorspezifischen genetischen Anomalien und genetischen Veränderungen im Tumor einschließlich Verfahren wie Karyotypisierung, FISH (Fluoreszenz in situ-Hybridisierung), PCR"
  },
  {
    "code" : "9",
    "display" : "unbekannt"
  }]
}

```
