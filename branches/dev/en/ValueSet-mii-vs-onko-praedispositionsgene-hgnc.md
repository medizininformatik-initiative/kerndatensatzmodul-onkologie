# MII VS Onkologie Krebsprädispositionsgene HGNC - MII IG Kerndatensatz-Modul Onkologie v2027.0.0-ballot.rc1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Krebsprädispositionsgene HGNC**

## ValueSet: MII VS Onkologie Krebsprädispositionsgene HGNC 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-praedispositionsgene-hgnc | *Version*:2027.0.0-ballot.rc1 |
| Active as of 2026-09-05 | *Computable Name*:MII_VS_Onko_Praedispositionsgene_HGNC |

 
Krebsprädispositionsgene der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als HGNC-Gen-IDs, inkl. Expansion der Sammel-Einträge (FANCA-FANCW, IDH1/2, XP-Komplementationsgruppen). Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker). Zytogenetische Aberrationen der Quell-Liste (11p13/11p15, Trisomien, ETV-RUNX1-Fusion) sind keine Gene und hier nicht enthalten. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-praedispositionsgene-hgnc",
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
        "valueString" : "2027.0.0-ballot.rc1"
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-praedispositionsgene-hgnc",
  "version" : "2027.0.0-ballot.rc1",
  "name" : "MII_VS_Onko_Praedispositionsgene_HGNC",
  "title" : "MII VS Onkologie Krebsprädispositionsgene HGNC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-05T06:32:59+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Krebsprädispositionsgene der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als HGNC-Gen-IDs, inkl. Expansion der Sammel-Einträge (FANCA-FANCW, IDH1/2, XP-Komplementationsgruppen). Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker). Zytogenetische Aberrationen der Quell-Liste (11p13/11p15, Trisomien, ETV-RUNX1-Fusion) sind keine Gene und hier nicht enthalten. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich.",
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
        "code" : "HGNC:427",
        "display" : "ALK"
      },
      {
        "code" : "HGNC:26837",
        "display" : "AMER1"
      },
      {
        "code" : "HGNC:583",
        "display" : "APC"
      },
      {
        "code" : "HGNC:18318",
        "display" : "ASXL1"
      },
      {
        "code" : "HGNC:795",
        "display" : "ATM"
      },
      {
        "code" : "HGNC:1058",
        "display" : "BLM"
      },
      {
        "code" : "HGNC:1076",
        "display" : "BMPR1A"
      },
      {
        "code" : "HGNC:1097",
        "display" : "BRAF"
      },
      {
        "code" : "HGNC:1100",
        "display" : "BRCA1"
      },
      {
        "code" : "HGNC:1101",
        "display" : "BRCA2"
      },
      {
        "code" : "HGNC:20473",
        "display" : "BRIP1"
      },
      {
        "code" : "HGNC:1149",
        "display" : "BUB1B"
      },
      {
        "code" : "HGNC:1541",
        "display" : "CBL"
      },
      {
        "code" : "HGNC:1833",
        "display" : "CEBPA"
      },
      {
        "code" : "HGNC:30794",
        "display" : "CEP57"
      },
      {
        "code" : "HGNC:16850",
        "display" : "CTR9"
      },
      {
        "code" : "HGNC:2718",
        "display" : "DDB2"
      },
      {
        "code" : "HGNC:17098",
        "display" : "DICER1"
      },
      {
        "code" : "HGNC:28648",
        "display" : "DIS3L2"
      },
      {
        "code" : "HGNC:2890",
        "display" : "DKC1"
      },
      {
        "code" : "HGNC:3309",
        "display" : "ELANE"
      },
      {
        "code" : "HGNC:5959",
        "display" : "ELP1"
      },
      {
        "code" : "HGNC:3374",
        "display" : "EPAS1"
      },
      {
        "code" : "HGNC:11529",
        "display" : "EPCAM"
      },
      {
        "code" : "HGNC:3433",
        "display" : "ERCC1"
      },
      {
        "code" : "HGNC:3434",
        "display" : "ERCC2"
      },
      {
        "code" : "HGNC:3435",
        "display" : "ERCC3"
      },
      {
        "code" : "HGNC:3436",
        "display" : "ERCC4"
      },
      {
        "code" : "HGNC:3437",
        "display" : "ERCC5"
      },
      {
        "code" : "HGNC:3495",
        "display" : "ETV6"
      },
      {
        "code" : "HGNC:3527",
        "display" : "EZH2"
      },
      {
        "code" : "HGNC:3582",
        "display" : "FANCA"
      },
      {
        "code" : "HGNC:3583",
        "display" : "FANCB"
      },
      {
        "code" : "HGNC:3584",
        "display" : "FANCC"
      },
      {
        "code" : "HGNC:3585",
        "display" : "FANCD2"
      },
      {
        "code" : "HGNC:3586",
        "display" : "FANCE"
      },
      {
        "code" : "HGNC:3587",
        "display" : "FANCF"
      },
      {
        "code" : "HGNC:3588",
        "display" : "FANCG"
      },
      {
        "code" : "HGNC:25568",
        "display" : "FANCI"
      },
      {
        "code" : "HGNC:20748",
        "display" : "FANCL"
      },
      {
        "code" : "HGNC:23168",
        "display" : "FANCM"
      },
      {
        "code" : "HGNC:4451",
        "display" : "GPC3"
      },
      {
        "code" : "HGNC:23694",
        "display" : "GPR161"
      },
      {
        "code" : "HGNC:5173",
        "display" : "HRAS"
      },
      {
        "code" : "HGNC:5382",
        "display" : "IDH1"
      },
      {
        "code" : "HGNC:5383",
        "display" : "IDH2"
      },
      {
        "code" : "HGNC:13176",
        "display" : "IKZF1"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:6764",
        "display" : "MAD2L2"
      },
      {
        "code" : "HGNC:6913",
        "display" : "MAX"
      },
      {
        "code" : "HGNC:7010",
        "display" : "MEN1"
      },
      {
        "code" : "HGNC:7127",
        "display" : "MLH1"
      },
      {
        "code" : "HGNC:7325",
        "display" : "MSH2"
      },
      {
        "code" : "HGNC:7329",
        "display" : "MSH6"
      },
      {
        "code" : "HGNC:7652",
        "display" : "NBN"
      },
      {
        "code" : "HGNC:7765",
        "display" : "NF1"
      },
      {
        "code" : "HGNC:7989",
        "display" : "NRAS"
      },
      {
        "code" : "HGNC:14234",
        "display" : "NSD1"
      },
      {
        "code" : "HGNC:26144",
        "display" : "PALB2"
      },
      {
        "code" : "HGNC:8619",
        "display" : "PAX5"
      },
      {
        "code" : "HGNC:9143",
        "display" : "PHOX2B"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:9122",
        "display" : "PMS2"
      },
      {
        "code" : "HGNC:9181",
        "display" : "POLH"
      },
      {
        "code" : "HGNC:9585",
        "display" : "PTCH1"
      },
      {
        "code" : "HGNC:9588",
        "display" : "PTEN"
      },
      {
        "code" : "HGNC:9644",
        "display" : "PTPN11"
      },
      {
        "code" : "HGNC:9817",
        "display" : "RAD51"
      },
      {
        "code" : "HGNC:9820",
        "display" : "RAD51C"
      },
      {
        "code" : "HGNC:9884",
        "display" : "RB1"
      },
      {
        "code" : "HGNC:9949",
        "display" : "RECQL4"
      },
      {
        "code" : "HGNC:9966",
        "display" : "REST"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:25539",
        "display" : "RFWD3"
      },
      {
        "code" : "HGNC:10402",
        "display" : "RPS19"
      },
      {
        "code" : "HGNC:15888",
        "display" : "RTEL1"
      },
      {
        "code" : "HGNC:10471",
        "display" : "RUNX1"
      },
      {
        "code" : "HGNC:1348",
        "display" : "SAMD9"
      },
      {
        "code" : "HGNC:1349",
        "display" : "SAMD9L"
      },
      {
        "code" : "HGNC:10680",
        "display" : "SDHA"
      },
      {
        "code" : "HGNC:26034",
        "display" : "SDHAF2"
      },
      {
        "code" : "HGNC:10681",
        "display" : "SDHB"
      },
      {
        "code" : "HGNC:10682",
        "display" : "SDHC"
      },
      {
        "code" : "HGNC:10683",
        "display" : "SDHD"
      },
      {
        "code" : "HGNC:23845",
        "display" : "SLX4"
      },
      {
        "code" : "HGNC:6770",
        "display" : "SMAD4"
      },
      {
        "code" : "HGNC:11100",
        "display" : "SMARCA4"
      },
      {
        "code" : "HGNC:11103",
        "display" : "SMARCB1"
      },
      {
        "code" : "HGNC:11119",
        "display" : "SMO"
      },
      {
        "code" : "HGNC:11187",
        "display" : "SOS1"
      },
      {
        "code" : "HGNC:11389",
        "display" : "STK11"
      },
      {
        "code" : "HGNC:16466",
        "display" : "SUFU"
      },
      {
        "code" : "HGNC:11633",
        "display" : "TCF3"
      },
      {
        "code" : "HGNC:11727",
        "display" : "TERC"
      },
      {
        "code" : "HGNC:11730",
        "display" : "TERT"
      },
      {
        "code" : "HGNC:11824",
        "display" : "TINF2"
      },
      {
        "code" : "HGNC:26038",
        "display" : "TMEM127"
      },
      {
        "code" : "HGNC:11998",
        "display" : "TP53"
      },
      {
        "code" : "HGNC:16384",
        "display" : "TRIM28"
      },
      {
        "code" : "HGNC:7523",
        "display" : "TRIM37"
      },
      {
        "code" : "HGNC:12307",
        "display" : "TRIP13"
      },
      {
        "code" : "HGNC:12362",
        "display" : "TSC1"
      },
      {
        "code" : "HGNC:12363",
        "display" : "TSC2"
      },
      {
        "code" : "HGNC:25009",
        "display" : "UBE2T"
      },
      {
        "code" : "HGNC:12687",
        "display" : "VHL"
      },
      {
        "code" : "HGNC:12796",
        "display" : "WT1"
      },
      {
        "code" : "HGNC:12814",
        "display" : "XPA"
      },
      {
        "code" : "HGNC:12816",
        "display" : "XPC"
      },
      {
        "code" : "HGNC:12829",
        "display" : "XRCC2"
      }]
    }]
  }
}

```
