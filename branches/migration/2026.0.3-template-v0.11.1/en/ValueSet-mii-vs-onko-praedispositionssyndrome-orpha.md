# MII VS Onkologie Krebsprädispositionssyndrome ORPHA - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie Krebsprädispositionssyndrome ORPHA**

## ValueSet: MII VS Onkologie Krebsprädispositionssyndrome ORPHA 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-praedispositionssyndrome-orpha | *Version*:2026.0.3 |
| Active as of 2026-09-01 | *Computable Name*:MII_VS_Onko_Praedispositionssyndrome_ORPHA |

 
Krebsprädispositionssyndrome der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als Orphanet-Codes. Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker); 15 genspezifische Prädispositionen der Quell-Liste haben kein Orphanet-Konzept und sind über das Gen-ValueSet mii-vs-onko-praedispositionsgene-hgnc adressierbar. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich. 

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
  "id" : "mii-vs-onko-praedispositionssyndrome-orpha",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-praedispositionssyndrome-orpha",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Praedispositionssyndrome_ORPHA",
  "title" : "MII VS Onkologie Krebsprädispositionssyndrome ORPHA",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T22:10:57+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Krebsprädispositionssyndrome der §65c-Liste (Manual Plus, Krebsprädispositionssyndrom und -gen) als Orphanet-Codes. Begleitartefakt ohne Profil-Binding (Andockung an die genetischen Profile folgt mit dem Konzept für genetische Marker); 15 genspezifische Prädispositionen der Quell-Liste haben kein Orphanet-Konzept und sind über das Gen-ValueSet mii-vs-onko-praedispositionsgene-hgnc adressierbar. Projektseitige Code-Auflösung ohne Gewähr; fachliche Prüfung vor Produktivnutzung erforderlich.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://www.orpha.net",
      "concept" : [{
        "code" : "100",
        "display" : "Ataxia-telangiectasia"
      },
      {
        "code" : "116",
        "display" : "Beckwith-Wiedemann syndrome"
      },
      {
        "code" : "125",
        "display" : "Bloom syndrome"
      },
      {
        "code" : "97297",
        "display" : "Bohring-Opitz syndrome"
      },
      {
        "code" : "363972",
        "display" : "Noonan syndrome-like disorder with juvenile myelomonocytic leukemia"
      },
      {
        "code" : "319465",
        "display" : "Inherited acute myeloid leukemia"
      },
      {
        "code" : "626",
        "display" : "Large/giant congenital melanocytic nevus"
      },
      {
        "code" : "252202",
        "display" : "Constitutional mismatch repair deficiency syndrome"
      },
      {
        "code" : "3071",
        "display" : "Costello syndrome"
      },
      {
        "code" : "1553",
        "display" : "Curry-Jones syndrome"
      },
      {
        "code" : "124",
        "display" : "Diamond-Blackfan anemia"
      },
      {
        "code" : "284343",
        "display" : "DICER1 tumor-predisposition syndrome"
      },
      {
        "code" : "870",
        "display" : "Down syndrome"
      },
      {
        "code" : "733",
        "display" : "Familial adenomatous polyposis"
      },
      {
        "code" : "84",
        "display" : "Fanconi anemia"
      },
      {
        "code" : "404476",
        "display" : "Global developmental delay-lung cysts-overgrowth-Wilms tumor syndrome"
      },
      {
        "code" : "377",
        "display" : "Gorlin syndrome"
      },
      {
        "code" : "29072",
        "display" : "Hereditary pheochromocytoma-paraganglioma"
      },
      {
        "code" : "357027",
        "display" : "Hereditary retinoblastoma"
      },
      {
        "code" : "2929",
        "display" : "Juvenile polyposis syndrome"
      },
      {
        "code" : "524",
        "display" : "Li-Fraumeni syndrome"
      },
      {
        "code" : "144",
        "display" : "Lynch syndrome"
      },
      {
        "code" : "634461",
        "display" : "Mosaic neurofibromatosis type 1"
      },
      {
        "code" : "1052",
        "display" : "Mosaic variegated aneuploidy syndrome"
      },
      {
        "code" : "2576",
        "display" : "Mulibrey nanism"
      },
      {
        "code" : "652",
        "display" : "Multiple endocrine neoplasia type 1"
      },
      {
        "code" : "247698",
        "display" : "Multiple endocrine neoplasia type 2A"
      },
      {
        "code" : "247709",
        "display" : "Multiple endocrine neoplasia type 2B"
      },
      {
        "code" : "636",
        "display" : "Neurofibromatosis type 1"
      },
      {
        "code" : "647",
        "display" : "Nijmegen breakage syndrome"
      },
      {
        "code" : "648",
        "display" : "Noonan syndrome"
      },
      {
        "code" : "296",
        "display" : "Ollier disease"
      },
      {
        "code" : "163634",
        "display" : "Maffucci syndrome"
      },
      {
        "code" : "2780",
        "display" : "Osteopathia striata-cranial sclerosis syndrome"
      },
      {
        "code" : "324299",
        "display" : "Multiple paragangliomas associated with polycythemia"
      },
      {
        "code" : "2849",
        "display" : "Perlman syndrome"
      },
      {
        "code" : "2869",
        "display" : "Peutz-Jeghers syndrome"
      },
      {
        "code" : "661",
        "display" : "Congenital central hypoventilation syndrome"
      },
      {
        "code" : "530313",
        "display" : "PIK3CA-related overgrowth syndrome"
      },
      {
        "code" : "306498",
        "display" : "PTEN hamartoma tumor syndrome"
      },
      {
        "code" : "231108",
        "display" : "Rhabdoid tumor predisposition syndrome"
      },
      {
        "code" : "2909",
        "display" : "Rothmund-Thomson syndrome"
      },
      {
        "code" : "71290",
        "display" : "Familial platelet disorder with associated myeloid malignancy"
      },
      {
        "code" : "494433",
        "display" : "MIRAGE syndrome"
      },
      {
        "code" : "2585",
        "display" : "Ataxia-pancytopenia syndrome"
      },
      {
        "code" : "42738",
        "display" : "Severe congenital neutropenia"
      },
      {
        "code" : "373",
        "display" : "Simpson-Golabi-Behmel syndrome"
      },
      {
        "code" : "821",
        "display" : "Sotos syndrome"
      },
      {
        "code" : "1775",
        "display" : "Dyskeratosis congenita"
      },
      {
        "code" : "3380",
        "display" : "Trisomy 18 syndrome"
      },
      {
        "code" : "805",
        "display" : "Tuberous sclerosis complex"
      },
      {
        "code" : "892",
        "display" : "Von Hippel-Lindau disease"
      },
      {
        "code" : "893",
        "display" : "WAGR syndrome"
      },
      {
        "code" : "3447",
        "display" : "Weaver syndrome"
      },
      {
        "code" : "910",
        "display" : "Xeroderma pigmentosum"
      }]
    }]
  }
}

```
