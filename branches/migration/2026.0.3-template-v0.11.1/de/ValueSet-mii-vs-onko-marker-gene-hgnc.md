# MII VS Onkologie Marker-Gene HGNC - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Marker-Gene HGNC**

## ValueSet: MII VS Onkologie Marker-Gene HGNC 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-marker-gene-hgnc | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Onko_Marker_Gene_HGNC |

 
Gensymbole der onkologisch gebraeuchlichen Marker-Gene aus der Genetik-Markerliste der §65c-Plattform, als HGNC-Gen-IDs. Auswahlunterstuetzung fuer Observation.component:gene-studied im Profil MII_PR_Onko_Genetische_Variante (extensible gebunden — weitere Gene sind zulaessig). Nicht-Gene der Quellliste (IHC-Marker, zytogenetische Aberrationen) sind bewusst ausgeschlossen; siehe die Kommentare in der FSH-Quelle und die IG-Seite zu den Variantentypen. 

 **References** 

* [MII PR Onkologie Genetische Variante](StructureDefinition-mii-pr-onko-genetische-variante.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-marker-gene-hgnc",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-marker-gene-hgnc",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Marker_Gene_HGNC",
  "title" : "MII VS Onkologie Marker-Gene HGNC",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T09:38:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Gensymbole der onkologisch gebraeuchlichen Marker-Gene aus der Genetik-Markerliste der §65c-Plattform, als HGNC-Gen-IDs. Auswahlunterstuetzung fuer Observation.component:gene-studied im Profil MII_PR_Onko_Genetische_Variante (extensible gebunden — weitere Gene sind zulaessig). Nicht-Gene der Quellliste (IHC-Marker, zytogenetische Aberrationen) sind bewusst ausgeschlossen; siehe die Kommentare in der FSH-Quelle und die IG-Seite zu den Variantentypen.",
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
        "code" : "HGNC:76",
        "display" : "ABL1"
      },
      {
        "code" : "HGNC:427",
        "display" : "ALK"
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
        "code" : "HGNC:1133",
        "display" : "BTK"
      },
      {
        "code" : "HGNC:2561",
        "display" : "CXCR4"
      },
      {
        "code" : "HGNC:3236",
        "display" : "EGFR"
      },
      {
        "code" : "HGNC:3430",
        "display" : "ERBB2"
      },
      {
        "code" : "HGNC:3689",
        "display" : "FGFR2"
      },
      {
        "code" : "HGNC:3765",
        "display" : "FLT3"
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
        "code" : "HGNC:6342",
        "display" : "KIT"
      },
      {
        "code" : "HGNC:13726",
        "display" : "KMT2C"
      },
      {
        "code" : "HGNC:6407",
        "display" : "KRAS"
      },
      {
        "code" : "HGNC:6470",
        "display" : "L1CAM"
      },
      {
        "code" : "HGNC:6840",
        "display" : "MAP2K1"
      },
      {
        "code" : "HGNC:7029",
        "display" : "MET"
      },
      {
        "code" : "HGNC:7059",
        "display" : "MGMT"
      },
      {
        "code" : "HGNC:7562",
        "display" : "MYD88"
      },
      {
        "code" : "HGNC:7765",
        "display" : "NF1"
      },
      {
        "code" : "HGNC:7910",
        "display" : "NPM1"
      },
      {
        "code" : "HGNC:7989",
        "display" : "NRAS"
      },
      {
        "code" : "HGNC:7997",
        "display" : "NRG1"
      },
      {
        "code" : "HGNC:8031",
        "display" : "NTRK1"
      },
      {
        "code" : "HGNC:8032",
        "display" : "NTRK2"
      },
      {
        "code" : "HGNC:8033",
        "display" : "NTRK3"
      },
      {
        "code" : "HGNC:8803",
        "display" : "PDGFRA"
      },
      {
        "code" : "HGNC:8975",
        "display" : "PIK3CA"
      },
      {
        "code" : "HGNC:9177",
        "display" : "POLE"
      },
      {
        "code" : "HGNC:9864",
        "display" : "RARA"
      },
      {
        "code" : "HGNC:9967",
        "display" : "RET"
      },
      {
        "code" : "HGNC:10261",
        "display" : "ROS1"
      },
      {
        "code" : "HGNC:10680",
        "display" : "SDHA"
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
        "code" : "HGNC:25941",
        "display" : "TET2"
      },
      {
        "code" : "HGNC:11998",
        "display" : "TP53"
      }]
    }]
  }
}

```
