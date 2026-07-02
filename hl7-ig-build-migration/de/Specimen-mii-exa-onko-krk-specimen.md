# MII EXA Onko KRK Specimen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

## Beispiel Specimen: MII EXA Onko KRK Specimen

-------

**German**

-------

Profile: [MII PR Onkologie Specimen](StructureDefinition-mii-pr-onko-krk-specimen.md)

**accessionIdentifier**: KRK-2024-001234

**status**: Available

**type**: Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection (specimen)

**subject**: [Klaus KolorektalCa (no stated gender), DoB Unknown](Patient-mii-exa-onko-krk-bundle-patient.md)

### Collections

| | |
| :--- | :--- |
| - | **Collected[x]** |
| * | 2024-03-22 08:30:00+0100 |

**condition**: Grad 1 (gut)

**note**: 

> 

Sigmaresekat mit Primärtumor und regionären Lymphknoten




## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "mii-exa-onko-krk-specimen",
  "meta" : {
    "profile" : ["https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-pr-onko-krk-specimen"]
  },
  "accessionIdentifier" : {
    "value" : "KRK-2024-001234"
  },
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "122652004",
      "display" : "Specimen from colon obtained by rectal/rectosigmoid (low anterior) resection (specimen)"
    }]
  },
  "subject" : {
    "reference" : "Patient/mii-exa-onko-krk-bundle-patient"
  },
  "collection" : {
    "collectedDateTime" : "2024-03-22T08:30:00+01:00"
  },
  "condition" : [{
    "coding" : [{
      "system" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-krk-tme-qualitaet",
      "code" : "1",
      "display" : "Grad 1 (gut)"
    }]
  }],
  "note" : [{
    "text" : "Sigmaresekat mit Primärtumor und regionären Lymphknoten"
  }]
}

```
