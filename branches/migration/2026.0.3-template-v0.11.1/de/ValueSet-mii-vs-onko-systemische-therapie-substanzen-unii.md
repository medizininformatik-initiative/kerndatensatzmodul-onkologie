# MII VS Onkologie Systemische Therapie Substanzen (UNII) - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Substanzen (UNII)**

## ValueSet: MII VS Onkologie Systemische Therapie Substanzen (UNII) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Systemische_Therapie_Substanzen_UNII |

 
UNII-Codes für Substanzen der systemischen Therapie ohne ATC-Code. Ergänzung zum ATC-basierten Haupt-ValueSet für neuere und experimentelle onkologische Wirkstoffe. 

 **References** 

* [MII PR Onkologie Systemische Therapie Medikation](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-substanzen-unii",
  "meta" : {
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
  }],
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-unii",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Substanzen_UNII",
  "title" : "MII VS Onkologie Systemische Therapie Substanzen (UNII)",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T18:25:22+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "UNII-Codes für Substanzen der systemischen Therapie ohne ATC-Code. Ergänzung zum ATC-basierten Haupt-ValueSet für neuere und experimentelle onkologische Wirkstoffe.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fdasis.nlm.nih.gov",
      "concept" : [{
        "code" : "T66ES73M18",
        "display" : "ALISERTIB"
      },
      {
        "code" : "F333OQQ9UV",
        "display" : "ASUNERCEPT"
      },
      {
        "code" : "31M3WLJ3KG",
        "display" : "BELVARAFENIB"
      },
      {
        "code" : "0ICW2LX8AS",
        "display" : "BEMCENTINIB"
      },
      {
        "code" : "0ZM2Z182GD",
        "display" : "BUPARLISIB"
      },
      {
        "code" : "85RE35306Z",
        "display" : "CERALASERTIB"
      },
      {
        "code" : "4EDF46E4GI",
        "display" : "CILENGITIDE"
      },
      {
        "code" : "923X28214S",
        "display" : "CRENIGACESTAT"
      },
      {
        "code" : "LQF7I567TQ",
        "display" : "CRENOLANIB"
      },
      {
        "code" : "N9B0H171MJ",
        "display" : "DERAZANTINIB"
      },
      {
        "code" : "SJ82PK3HWA",
        "display" : "EFTILAGIMOD ALFA"
      },
      {
        "code" : "SMA5ZS5B22",
        "display" : "ENSARTINIB"
      },
      {
        "code" : "6I3O3W6O3B",
        "display" : "ENTOSPLETINIB"
      },
      {
        "code" : "UC96G28EQF",
        "display" : "ENZASTAURIN"
      },
      {
        "code" : "2E8412Y946",
        "display" : "GANETESPIB"
      },
      {
        "code" : "QSQ883V35U",
        "display" : "IDASANUTLIN"
      },
      {
        "code" : "F60NE4XB53",
        "display" : "IMETELSTAT"
      },
      {
        "code" : "L4C1UY2NYH",
        "display" : "INAVOLISIB"
      },
      {
        "code" : "PP449XA4BH",
        "display" : "LUCITANIB"
      },
      {
        "code" : "703P9YDP7F",
        "display" : "MARIZOMIB"
      },
      {
        "code" : "5OGS5K699E",
        "display" : "MERESTINIB"
      },
      {
        "code" : "6O01GMS00P",
        "display" : "MOMELOTINIB"
      },
      {
        "code" : "15JL80DG6H",
        "display" : "NAPORAFENIB"
      },
      {
        "code" : "KE7K32EME8",
        "display" : "NAZARTINIB"
      },
      {
        "code" : "JTZ51LIXN4",
        "display" : "NEMTABRUTINIB"
      },
      {
        "code" : "MTM792B442",
        "display" : "OLAPTESED PEGOL"
      },
      {
        "code" : "S3AZD8D215",
        "display" : "PEVONEDISTAT"
      },
      {
        "code" : "JNA39I7ZVB",
        "display" : "PIRTOBRUTINIB"
      },
      {
        "code" : "08O3FQ4UNP",
        "display" : "REPOTRECTINIB"
      },
      {
        "code" : "15KFN616FK",
        "display" : "RINETERKIB"
      },
      {
        "code" : "67DOW7F9GL",
        "display" : "RIGOSERTIB"
      },
      {
        "code" : "0282IF4JC8",
        "display" : "SIREMADLIN"
      },
      {
        "code" : "G287IC9MH3",
        "display" : "TILSOTOLIMOD"
      },
      {
        "code" : "MAT637500A",
        "display" : "TIPIFARNIB"
      },
      {
        "code" : "LXG44NDL2T",
        "display" : "TIRABRUTINIB"
      },
      {
        "code" : "PJ4H73IL17",
        "display" : "TIVANTINIB"
      },
      {
        "code" : "ZN90E4027M",
        "display" : "TOVORAFENIB"
      },
      {
        "code" : "X8Y5U6NC7E",
        "display" : "TREBANANIB"
      },
      {
        "code" : "U36PGF65JH",
        "display" : "UMIROLIMUS"
      },
      {
        "code" : "6EM57086EA",
        "display" : "VOLASERTIB"
      },
      {
        "code" : "H4GXR80IZE",
        "display" : "ZOTAROLIMUS"
      },
      {
        "code" : "7OSV6M6T4D",
        "display" : "ALNUCTAMAB"
      },
      {
        "code" : "6HP0354G04",
        "display" : "AMATUXIMAB"
      },
      {
        "code" : "PRC974M49B",
        "display" : "BALIXAFORTIDE"
      },
      {
        "code" : "Q16CT95N25",
        "display" : "BAVITUXIMAB"
      },
      {
        "code" : "RJW23BQ0KW",
        "display" : "BEMARITUZUMAB"
      },
      {
        "code" : "LYK98WP91F",
        "display" : "CETRELIMAB"
      },
      {
        "code" : "RR5U4UFJ8L",
        "display" : "CUSATUZUMAB"
      },
      {
        "code" : "2OQ3OPV2F8",
        "display" : "DARLEUKIN"
      },
      {
        "code" : "GD2OWY1DTK",
        "display" : "DATOPOTAMAB DERUXTECAN"
      },
      {
        "code" : "W984C353CG",
        "display" : "DEPATUXIZUMAB"
      },
      {
        "code" : "RB3U3A1S27",
        "display" : "DISITAMAB VEDOTIN"
      },
      {
        "code" : "L0HR9A577V",
        "display" : "ELRANATAMAB"
      },
      {
        "code" : "DGK38A42AE",
        "display" : "ELSILIMOMAB"
      },
      {
        "code" : "VE267FC2UB",
        "display" : "FIGITUMUMAB"
      },
      {
        "code" : "S9OX9692ZB",
        "display" : "GALIXIMAB"
      },
      {
        "code" : "85V55ZLV2Z",
        "display" : "GATIPOTUZUMAB"
      },
      {
        "code" : "4B57CWT710",
        "display" : "GEBASAXTUREV"
      },
      {
        "code" : "28P3DU6DB3",
        "display" : "GIREDESTRANT"
      },
      {
        "code" : "539B57DFJF",
        "display" : "GIRENTUXIMAB"
      },
      {
        "code" : "06P3KLK2J8",
        "display" : "GLOFITAMAB"
      },
      {
        "code" : "8V66F27X44",
        "display" : "IBERDOMIDE"
      },
      {
        "code" : "XGL4M23834",
        "display" : "INDATUXIMAB RAVTANSINE"
      },
      {
        "code" : "GO90DFK14U",
        "display" : "INOLIMOMAB"
      },
      {
        "code" : "0H2XLR2IKW",
        "display" : "LEMZOPARLIMAB"
      },
      {
        "code" : "NYM5HO7I39",
        "display" : "LONCASTUXIMAB"
      },
      {
        "code" : "7K5O7P6QIU",
        "display" : "LONCASTUXIMAB TESIRINE"
      },
      {
        "code" : "90YIEHRFJ9",
        "display" : "MAGROLIMAB"
      },
      {
        "code" : "98DE7VN88D",
        "display" : "MIRVETUXIMAB SORAVTANSINE"
      },
      {
        "code" : "DA9G065962",
        "display" : "MOTIXAFORTIDE"
      },
      {
        "code" : "ND296JF21I",
        "display" : "NIDANILIMAB"
      },
      {
        "code" : "W2OR26S7UE",
        "display" : "NISEVOKITUG"
      },
      {
        "code" : "6HXC0O6JMV",
        "display" : "ONFEKAFUSP ALFA"
      },
      {
        "code" : "S9J80L3D1U",
        "display" : "PELAREOREP"
      },
      {
        "code" : "IBS1BZ4E4I",
        "display" : "PENPULIMAB"
      },
      {
        "code" : "4XG66BMN0D",
        "display" : "PLOZALIZUMAB"
      },
      {
        "code" : "AF75XOF6W3",
        "display" : "RELATLIMAB"
      },
      {
        "code" : "51WEW898IJ",
        "display" : "RILOTUMUMAB"
      },
      {
        "code" : "P256HB60FF",
        "display" : "ROVALPITUZUMAB TESIRINE"
      },
      {
        "code" : "1N3L70MDFX",
        "display" : "SERIBANTUMAB"
      },
      {
        "code" : "8FU7FQ8UPK",
        "display" : "SINTILIMAB"
      },
      {
        "code" : "QOG25L6Z8Z",
        "display" : "SPARTALIZUMAB"
      },
      {
        "code" : "X8JR0I7JE1",
        "display" : "TALACOTUZUMAB"
      },
      {
        "code" : "6XG22YQM2Z",
        "display" : "TIRAGOLUMAB"
      },
      {
        "code" : "T41737F88A",
        "display" : "TISOTUMAB VEDOTIN"
      },
      {
        "code" : "5P637IXG16",
        "display" : "TOMUZOTUXIMAB"
      },
      {
        "code" : "8JXN261VVA",
        "display" : "TORIPALIMAB"
      },
      {
        "code" : "230902QLLC",
        "display" : "URELUMAB"
      },
      {
        "code" : "5XO3JF0FEK",
        "display" : "VIBOSTOLIMAB"
      },
      {
        "code" : "IZY9ZSI6FI",
        "display" : "ZILOVERTAMAB VEDOTIN"
      },
      {
        "code" : "94N635564T",
        "display" : "HUMAN PARVOVIRUS B19"
      },
      {
        "code" : "1Q8D39N37L",
        "display" : "AMONAFIDE"
      },
      {
        "code" : "XT3Z54Z28A",
        "display" : "CAMPTOTHECIN"
      },
      {
        "code" : "04079A1RDZ",
        "display" : "CYTARABINE"
      },
      {
        "code" : "5L84T2Z6NP",
        "display" : "DAUNORUBICIN CITRATE"
      },
      {
        "code" : "V1JK16Y2JP",
        "display" : "DOXIFLURIDINE"
      },
      {
        "code" : "2KT4YN1DP7",
        "display" : "GUADECITABINE"
      },
      {
        "code" : "P88XT4IS4D",
        "display" : "PACLITAXEL"
      },
      {
        "code" : "Z8R4A37V9Q",
        "display" : "ARFOLITIXORIN"
      },
      {
        "code" : "BNO1JG5MZC",
        "display" : "BEMPEGALDESLEUKIN"
      },
      {
        "code" : "4MXU9LJS4Q",
        "display" : "LEUCOVORIN SODIUM"
      }]
    }]
  }
}

```
