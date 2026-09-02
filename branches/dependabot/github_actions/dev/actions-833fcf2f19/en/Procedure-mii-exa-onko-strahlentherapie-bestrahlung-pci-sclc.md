# MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1)**

## Example Procedure: MII EXA Onkologie Bestrahlung PCI Ganzhirn (Zielgebiet 1.1)

-------

**English**

-------

Profile: [MII PR Onkologie Strahlentherapie](StructureDefinition-mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie.md) version: 2026.0.3

**Procedure Method**: perkutan ohne Chemotherapie/Sensitizer

**MII EX Onko Strahlentherapie Bestrahlung Gesamtdosis**: 25 Gy

**MII EX Onko Strahlentherapie Bestrahlung Einzeldosis**: 2.5 Gy

**partOf**: [Procedure 8-52](Procedure-mii-exa-onko-strahlentherapie-pci-sclc.md)

**status**: Completed

**category**: Radiotherapy (procedure)

**code**: 8-52

**subject**: [Erika Beispiel Female, DoB: 1965-04-12](Patient-example.md)

**performed**: 2026-05-04 --> 2026-05-18

**bodySite**: Ganzhirn (Neurokranium, inklusive Meningen)

**usedCode**: Protonen (leichte Wasserstoffionen/H1/Leichtionen)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "mii-exa-onko-strahlentherapie-bestrahlung-pci-sclc",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-strahlentherapie-bestrahlung-strahlentherapie|2026.0.3"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/procedure-method",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-applikationsart",
        "code" : "PRCN"
      }]
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-gesamtdosis",
    "valueQuantity" : {
      "value" : 25,
      "unit" : "Gy"
    }
  },
  {
    "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-strahlentherapie-bestrahlung-einzeldosis",
    "valueQuantity" : {
      "value" : 2.5,
      "unit" : "Gy"
    }
  }],
  "partOf" : [{
    "reference" : "Procedure/mii-exa-onko-strahlentherapie-pci-sclc"
  }],
  "status" : "completed",
  "category" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1287742003",
      "display" : "Radiotherapy (procedure)"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/ops",
      "version" : "2026",
      "code" : "8-52"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "performedPeriod" : {
    "start" : "2026-05-04",
    "end" : "2026-05-18"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-zielgebiet",
      "code" : "1.1",
      "display" : "Ganzhirn (Neurokranium, inklusive Meningen)"
    }]
  }],
  "usedCode" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-strahlentherapie-strahlenart",
      "code" : "PN"
    }]
  }]
}

```
