# MII VS Onkologie IGHV-Gensegmente HGNC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie IGHV-Gensegmente HGNC**

## ValueSet: MII VS Onkologie IGHV-Gensegmente HGNC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ighv-gensegmente-hgnc | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Onko_IGHV_Gensegmente_HGNC |

 
Alle IGHV-Gensegmente (Immunglobulin-Schwerketten-V-Region) als HGNC-Gen-IDs. Auswahlunterstuetzung fuer die Angabe des rearrangierten V-Segments in Observation.component:gene-studied — insbesondere bei der chronischen lymphatischen Leukaemie, wo einzelne Segmente wie IGHV3-21 eigene prognostische Bedeutung haben. Ob das Segment mutiert oder unmutiert ist, wird nicht hier, sondern ueber die Auspraegung der Varianten-Observation abgebildet (oBDS M = Mutation, W = Wildtyp). 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-ighv-gensegmente-hgnc",
  "meta" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-license",
      "valueCode" : "CC-BY-4.0"
    },
    {
      "extension" : [{
        "url" : "packageId",
        "valueId" : "de.medizininformatikinitiative.kerndatensatz.onkologie"
      },
      {
        "url" : "version",
        "valueString" : "2026.0.3"
      },
      {
        "url" : "uri",
        "valueUri" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko"
      }],
      "url" : "http://hl7.org/fhir/StructureDefinition/package-source"
    }],
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablevalueset",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-computablevalueset"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "shareable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "publishable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/cqf-knowledgeCapability",
    "valueCode" : "computable"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionPolicy",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/artifact-version-policy-codes",
        "code" : "package",
        "display" : "Package"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-approvalDate",
    "valueDate" : "2026-01-03"
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-topic",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl",
        "code" : "C3262"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-author",
    "valueContactDetail" : {
      "telecom" : [{
        "system" : "email",
        "value" : "thomas.debertshaeuser@charite.de"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-editor",
    "valueContactDetail" : {
      "name" : "Taskforce Core Data Set"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-reviewer",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "Interoperability Working Group",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/interoperability-working-group"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-endorser",
    "valueContactDetail" : {
      "name" : "National Steering Committee",
      "telecom" : [{
        "system" : "url",
        "value" : "https://www.medizininformatik-initiative.de/en/collaboration/national-steering-committee"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/artifact-versionAlgorithm",
    "valueCoding" : {
      "system" : "http://hl7.org/fhir/version-algorithm",
      "code" : "semver",
      "display" : "SemVer"
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/resource-effectivePeriod",
    "valuePeriod" : {
      "start" : "2026"
    }
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-ighv-gensegmente-hgnc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_IGHV_Gensegmente_HGNC",
  "title" : "MII VS Onkologie IGHV-Gensegmente HGNC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T21:24:42+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Alle IGHV-Gensegmente (Immunglobulin-Schwerketten-V-Region) als HGNC-Gen-IDs. Auswahlunterstuetzung fuer die Angabe des rearrangierten V-Segments in Observation.component:gene-studied — insbesondere bei der chronischen lymphatischen Leukaemie, wo einzelne Segmente wie IGHV3-21 eigene prognostische Bedeutung haben. Ob das Segment mutiert oder unmutiert ist, wird nicht hier, sondern ueber die Auspraegung der Varianten-Observation abgebildet (oBDS M = Mutation, W = Wildtyp).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://www.genenames.org/geneId",
      "concept" : [{
        "code" : "HGNC:5563",
        "display" : "IGHV1OR15-1"
      },
      {
        "code" : "HGNC:5564",
        "display" : "IGHV1OR15-2"
      },
      {
        "code" : "HGNC:5565",
        "display" : "IGHV1OR15-3"
      },
      {
        "code" : "HGNC:5566",
        "display" : "IGHV1OR15-4"
      },
      {
        "code" : "HGNC:5567",
        "display" : "IGHV1OR15-5"
      },
      {
        "code" : "HGNC:5568",
        "display" : "IGHV1OR15-6"
      },
      {
        "code" : "HGNC:5569",
        "display" : "IGHV1OR15-9"
      },
      {
        "code" : "HGNC:5570",
        "display" : "IGHV1OR16-1"
      },
      {
        "code" : "HGNC:5571",
        "display" : "IGHV1OR16-2"
      },
      {
        "code" : "HGNC:5572",
        "display" : "IGHV1OR16-3"
      },
      {
        "code" : "HGNC:5573",
        "display" : "IGHV1OR16-4"
      },
      {
        "code" : "HGNC:38040",
        "display" : "IGHV1OR21-1"
      },
      {
        "code" : "HGNC:5550",
        "display" : "IGHV1-2"
      },
      {
        "code" : "HGNC:5552",
        "display" : "IGHV1-3"
      },
      {
        "code" : "HGNC:5559",
        "display" : "IGHV1-8"
      },
      {
        "code" : "HGNC:5546",
        "display" : "IGHV1-12"
      },
      {
        "code" : "HGNC:5547",
        "display" : "IGHV1-14"
      },
      {
        "code" : "HGNC:5548",
        "display" : "IGHV1-17"
      },
      {
        "code" : "HGNC:5549",
        "display" : "IGHV1-18"
      },
      {
        "code" : "HGNC:5551",
        "display" : "IGHV1-24"
      },
      {
        "code" : "HGNC:5560",
        "display" : "IGHV1-38-4"
      },
      {
        "code" : "HGNC:5553",
        "display" : "IGHV1-45"
      },
      {
        "code" : "HGNC:5554",
        "display" : "IGHV1-46"
      },
      {
        "code" : "HGNC:5555",
        "display" : "IGHV1-58"
      },
      {
        "code" : "HGNC:5556",
        "display" : "IGHV1-67"
      },
      {
        "code" : "HGNC:5557",
        "display" : "IGHV1-68"
      },
      {
        "code" : "HGNC:5558",
        "display" : "IGHV1-69"
      },
      {
        "code" : "HGNC:5562",
        "display" : "IGHV1-69-2"
      },
      {
        "code" : "HGNC:49601",
        "display" : "IGHV1-69D"
      },
      {
        "code" : "HGNC:5579",
        "display" : "IGHV2OR16-5"
      },
      {
        "code" : "HGNC:5576",
        "display" : "IGHV2-5"
      },
      {
        "code" : "HGNC:5574",
        "display" : "IGHV2-10"
      },
      {
        "code" : "HGNC:5575",
        "display" : "IGHV2-26"
      },
      {
        "code" : "HGNC:5577",
        "display" : "IGHV2-70"
      },
      {
        "code" : "HGNC:49602",
        "display" : "IGHV2-70D"
      },
      {
        "code" : "HGNC:5633",
        "display" : "IGHV3OR15-7"
      },
      {
        "code" : "HGNC:5634",
        "display" : "IGHV3OR16-10"
      },
      {
        "code" : "HGNC:5635",
        "display" : "IGHV3OR16-11"
      },
      {
        "code" : "HGNC:5636",
        "display" : "IGHV3OR16-12"
      },
      {
        "code" : "HGNC:5637",
        "display" : "IGHV3OR16-13"
      },
      {
        "code" : "HGNC:5638",
        "display" : "IGHV3OR16-14"
      },
      {
        "code" : "HGNC:5639",
        "display" : "IGHV3OR16-15"
      },
      {
        "code" : "HGNC:5640",
        "display" : "IGHV3OR16-16"
      },
      {
        "code" : "HGNC:55105",
        "display" : "IGHV3OR16-17"
      },
      {
        "code" : "HGNC:5641",
        "display" : "IGHV3OR16-6"
      },
      {
        "code" : "HGNC:5642",
        "display" : "IGHV3OR16-7"
      },
      {
        "code" : "HGNC:5643",
        "display" : "IGHV3OR16-8"
      },
      {
        "code" : "HGNC:5644",
        "display" : "IGHV3OR16-9"
      },
      {
        "code" : "HGNC:5613",
        "display" : "IGHV3-6"
      },
      {
        "code" : "HGNC:5620",
        "display" : "IGHV3-7"
      },
      {
        "code" : "HGNC:5628",
        "display" : "IGHV3-9"
      },
      {
        "code" : "HGNC:5580",
        "display" : "IGHV3-11"
      },
      {
        "code" : "HGNC:5581",
        "display" : "IGHV3-13"
      },
      {
        "code" : "HGNC:5582",
        "display" : "IGHV3-15"
      },
      {
        "code" : "HGNC:5583",
        "display" : "IGHV3-16"
      },
      {
        "code" : "HGNC:5584",
        "display" : "IGHV3-19"
      },
      {
        "code" : "HGNC:5585",
        "display" : "IGHV3-20"
      },
      {
        "code" : "HGNC:5586",
        "display" : "IGHV3-21"
      },
      {
        "code" : "HGNC:5587",
        "display" : "IGHV3-22"
      },
      {
        "code" : "HGNC:5588",
        "display" : "IGHV3-23"
      },
      {
        "code" : "HGNC:5589",
        "display" : "IGHV3-25"
      },
      {
        "code" : "HGNC:5590",
        "display" : "IGHV3-29"
      },
      {
        "code" : "HGNC:5591",
        "display" : "IGHV3-30"
      },
      {
        "code" : "HGNC:5592",
        "display" : "IGHV3-30-2"
      },
      {
        "code" : "HGNC:5593",
        "display" : "IGHV3-30-3"
      },
      {
        "code" : "HGNC:5594",
        "display" : "IGHV3-30-5"
      },
      {
        "code" : "HGNC:5595",
        "display" : "IGHV3-32"
      },
      {
        "code" : "HGNC:5596",
        "display" : "IGHV3-33"
      },
      {
        "code" : "HGNC:5597",
        "display" : "IGHV3-33-2"
      },
      {
        "code" : "HGNC:5598",
        "display" : "IGHV3-35"
      },
      {
        "code" : "HGNC:5599",
        "display" : "IGHV3-36"
      },
      {
        "code" : "HGNC:5600",
        "display" : "IGHV3-37"
      },
      {
        "code" : "HGNC:5601",
        "display" : "IGHV3-38"
      },
      {
        "code" : "HGNC:5629",
        "display" : "IGHV3-38-3"
      },
      {
        "code" : "HGNC:5602",
        "display" : "IGHV3-41"
      },
      {
        "code" : "HGNC:5603",
        "display" : "IGHV3-42"
      },
      {
        "code" : "HGNC:5604",
        "display" : "IGHV3-43"
      },
      {
        "code" : "HGNC:50322",
        "display" : "IGHV3-43D"
      },
      {
        "code" : "HGNC:5605",
        "display" : "IGHV3-47"
      },
      {
        "code" : "HGNC:5606",
        "display" : "IGHV3-48"
      },
      {
        "code" : "HGNC:5607",
        "display" : "IGHV3-49"
      },
      {
        "code" : "HGNC:5608",
        "display" : "IGHV3-50"
      },
      {
        "code" : "HGNC:5609",
        "display" : "IGHV3-52"
      },
      {
        "code" : "HGNC:5610",
        "display" : "IGHV3-53"
      },
      {
        "code" : "HGNC:5611",
        "display" : "IGHV3-54"
      },
      {
        "code" : "HGNC:5612",
        "display" : "IGHV3-57"
      },
      {
        "code" : "HGNC:5614",
        "display" : "IGHV3-60"
      },
      {
        "code" : "HGNC:5615",
        "display" : "IGHV3-62"
      },
      {
        "code" : "HGNC:5616",
        "display" : "IGHV3-63"
      },
      {
        "code" : "HGNC:5617",
        "display" : "IGHV3-64"
      },
      {
        "code" : "HGNC:49603",
        "display" : "IGHV3-64D"
      },
      {
        "code" : "HGNC:5618",
        "display" : "IGHV3-65"
      },
      {
        "code" : "HGNC:5619",
        "display" : "IGHV3-66"
      },
      {
        "code" : "HGNC:5631",
        "display" : "IGHV3-69-1"
      },
      {
        "code" : "HGNC:5621",
        "display" : "IGHV3-71"
      },
      {
        "code" : "HGNC:5622",
        "display" : "IGHV3-72"
      },
      {
        "code" : "HGNC:5623",
        "display" : "IGHV3-73"
      },
      {
        "code" : "HGNC:5624",
        "display" : "IGHV3-74"
      },
      {
        "code" : "HGNC:5625",
        "display" : "IGHV3-75"
      },
      {
        "code" : "HGNC:5626",
        "display" : "IGHV3-76"
      },
      {
        "code" : "HGNC:5627",
        "display" : "IGHV3-79"
      },
      {
        "code" : "HGNC:5658",
        "display" : "IGHV4OR15-8"
      },
      {
        "code" : "HGNC:5652",
        "display" : "IGHV4-4"
      },
      {
        "code" : "HGNC:5645",
        "display" : "IGHV4-28"
      },
      {
        "code" : "HGNC:5646",
        "display" : "IGHV4-30-1"
      },
      {
        "code" : "HGNC:5647",
        "display" : "IGHV4-30-2"
      },
      {
        "code" : "HGNC:5648",
        "display" : "IGHV4-30-4"
      },
      {
        "code" : "HGNC:5649",
        "display" : "IGHV4-31"
      },
      {
        "code" : "HGNC:5650",
        "display" : "IGHV4-34"
      },
      {
        "code" : "HGNC:5657",
        "display" : "IGHV4-38-2"
      },
      {
        "code" : "HGNC:5651",
        "display" : "IGHV4-39"
      },
      {
        "code" : "HGNC:5653",
        "display" : "IGHV4-55"
      },
      {
        "code" : "HGNC:5654",
        "display" : "IGHV4-59"
      },
      {
        "code" : "HGNC:5655",
        "display" : "IGHV4-61"
      },
      {
        "code" : "HGNC:5656",
        "display" : "IGHV4-80"
      },
      {
        "code" : "HGNC:5661",
        "display" : "IGHV5-10-1"
      },
      {
        "code" : "HGNC:5659",
        "display" : "IGHV5-51"
      },
      {
        "code" : "HGNC:5660",
        "display" : "IGHV5-78"
      },
      {
        "code" : "HGNC:5662",
        "display" : "IGHV6-1"
      },
      {
        "code" : "HGNC:5665",
        "display" : "IGHV7-4-1"
      },
      {
        "code" : "HGNC:5663",
        "display" : "IGHV7-27"
      },
      {
        "code" : "HGNC:5664",
        "display" : "IGHV7-34-1"
      },
      {
        "code" : "HGNC:5666",
        "display" : "IGHV7-40"
      },
      {
        "code" : "HGNC:5667",
        "display" : "IGHV7-56"
      },
      {
        "code" : "HGNC:5669",
        "display" : "IGHV7-81"
      },
      {
        "code" : "HGNC:5704",
        "display" : "IGHV8-51-1"
      },
      {
        "code" : "HGNC:5670",
        "display" : "IGHVII-1-1"
      },
      {
        "code" : "HGNC:5695",
        "display" : "IGHVIII-2-1"
      },
      {
        "code" : "HGNC:5702",
        "display" : "IGHVIII-5-1"
      },
      {
        "code" : "HGNC:5703",
        "display" : "IGHVIII-5-2"
      },
      {
        "code" : "HGNC:5692",
        "display" : "IGHVIII-11-1"
      },
      {
        "code" : "HGNC:5693",
        "display" : "IGHVIII-13-1"
      },
      {
        "code" : "HGNC:5671",
        "display" : "IGHVII-15-1"
      },
      {
        "code" : "HGNC:5694",
        "display" : "IGHVIII-16-1"
      },
      {
        "code" : "HGNC:5672",
        "display" : "IGHVII-20-1"
      },
      {
        "code" : "HGNC:5673",
        "display" : "IGHVII-22-1"
      },
      {
        "code" : "HGNC:5696",
        "display" : "IGHVIII-22-2"
      },
      {
        "code" : "HGNC:5697",
        "display" : "IGHVIII-25-1"
      },
      {
        "code" : "HGNC:5674",
        "display" : "IGHVII-26-2"
      },
      {
        "code" : "HGNC:5698",
        "display" : "IGHVIII-26-1"
      },
      {
        "code" : "HGNC:5675",
        "display" : "IGHVII-28-1"
      },
      {
        "code" : "HGNC:5676",
        "display" : "IGHVII-30-1"
      },
      {
        "code" : "HGNC:52400",
        "display" : "IGHVII-30-21"
      },
      {
        "code" : "HGNC:5677",
        "display" : "IGHVII-31-1"
      },
      {
        "code" : "HGNC:5678",
        "display" : "IGHVII-33-1"
      },
      {
        "code" : "HGNC:5699",
        "display" : "IGHVIII-38-1"
      },
      {
        "code" : "HGNC:5679",
        "display" : "IGHVII-40-1"
      },
      {
        "code" : "HGNC:5680",
        "display" : "IGHVII-43-1"
      },
      {
        "code" : "HGNC:5681",
        "display" : "IGHVII-44-2"
      },
      {
        "code" : "HGNC:5700",
        "display" : "IGHVIII-44"
      },
      {
        "code" : "HGNC:5710",
        "display" : "IGHVIV-44-1"
      },
      {
        "code" : "HGNC:5682",
        "display" : "IGHVII-46-1"
      },
      {
        "code" : "HGNC:5701",
        "display" : "IGHVIII-47-1"
      },
      {
        "code" : "HGNC:5683",
        "display" : "IGHVII-49-1"
      },
      {
        "code" : "HGNC:5684",
        "display" : "IGHVII-51-2"
      },
      {
        "code" : "HGNC:5685",
        "display" : "IGHVII-53-1"
      },
      {
        "code" : "HGNC:5686",
        "display" : "IGHVII-60-1"
      },
      {
        "code" : "HGNC:5687",
        "display" : "IGHVII-62-1"
      },
      {
        "code" : "HGNC:5688",
        "display" : "IGHVII-65-1"
      },
      {
        "code" : "HGNC:5689",
        "display" : "IGHVII-67-1"
      },
      {
        "code" : "HGNC:5705",
        "display" : "IGHVIII-67-2"
      },
      {
        "code" : "HGNC:5706",
        "display" : "IGHVIII-67-3"
      },
      {
        "code" : "HGNC:5707",
        "display" : "IGHVIII-67-4"
      },
      {
        "code" : "HGNC:5690",
        "display" : "IGHVII-74-1"
      },
      {
        "code" : "HGNC:5708",
        "display" : "IGHVIII-76-1"
      },
      {
        "code" : "HGNC:5691",
        "display" : "IGHVII-78-1"
      },
      {
        "code" : "HGNC:5709",
        "display" : "IGHVIII-82"
      }]
    }]
  }
}

```
