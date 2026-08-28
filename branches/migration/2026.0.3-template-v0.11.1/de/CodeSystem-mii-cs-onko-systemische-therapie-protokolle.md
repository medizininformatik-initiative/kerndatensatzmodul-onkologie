# MII CS Onkologie Systemische Therapie Protokolle - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII CS Onkologie Systemische Therapie Protokolle**

## CodeSystem: MII CS Onkologie Systemische Therapie Protokolle 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_CS_Onko_Systemische_Therapie_Protokolle |

 
oBDS-spezifisches Codesystem für Protokolle systemischer Therapien 

Dieses CodeSystem wird in der Definition der folgenden ValueSets referenziert:

* [MII VS Onkologie Systemische Therapie Protokolle](ValueSet-mii-vs-onko-systemische-therapie-protokolle.md)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-systemische-therapie-protokolle",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-shareablecodesystem",
    "http://hl7.org/fhir/uv/crmi/StructureDefinition/crmi-publishablecodesystem"]
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-systemische-therapie-protokolle",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Systemische_Therapie_Protokolle",
  "title" : "MII CS Onkologie Systemische Therapie Protokolle",
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
  "description" : "oBDS-spezifisches Codesystem für Protokolle systemischer Therapien",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-protokolle",
  "content" : "complete",
  "count" : 164,
  "concept" : [{
    "code" : "ABVD",
    "display" : "ABVD",
    "definition" : "Bleomycin, Dacarbazin, Doxorubicin, Vinblastin"
  },
  {
    "code" : "AC",
    "display" : "AC",
    "definition" : "Cyclophosphamid, Doxorubicin"
  },
  {
    "code" : "ACO",
    "display" : "ACO",
    "definition" : "Cyclophosphamid, Doxorubicin, Vincristin"
  },
  {
    "code" : "ADORE",
    "display" : "ADORE",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "ADR-IFO",
    "display" : "ADR-IFO",
    "definition" : "Doxorubicin, Ifosfamid, Mesna"
  },
  {
    "code" : "AIO",
    "display" : "AIO",
    "definition" : "Fluorouracil, Folinsäure"
  },
  {
    "code" : "AIO-04",
    "display" : "AIO-04",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "AIO-Irinotecan",
    "display" : "AIO-Irinotecan",
    "definition" : "Fluorouracil, Folinsäure, Irinotecan"
  },
  {
    "code" : "ARO",
    "display" : "ARO",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "AVD",
    "display" : "AVD",
    "definition" : "Dacarbazin, Doxorubicin, Vinblastin"
  },
  {
    "code" : "BCD",
    "display" : "BCD",
    "definition" : "Actinomycin D, Bleomycin, Cyclophosphamid"
  },
  {
    "code" : "BEACOPP-basis",
    "display" : "BEACOPP basis",
    "definition" : "Bleomycin, Cyclophosphamid, Doxorubicin, Etoposid, Procarbazin, Vincristin, Prednison"
  },
  {
    "code" : "BEACOPP-eskaliert",
    "display" : "BEACOPP eskaliert",
    "definition" : "Bleomycin, Cyclophosphamid, Doxorubicin, Etoposid, Procarbazin, Vincristin, Prednison"
  },
  {
    "code" : "BEAM",
    "display" : "BEAM",
    "definition" : "BCNU, Cytarabin, Etoposid, Melphalan"
  },
  {
    "code" : "BOLD",
    "display" : "BOLD",
    "definition" : "Bleomycin, Dacarbazin, Lomustin, Vincristin"
  },
  {
    "code" : "BP",
    "display" : "BP",
    "definition" : "Bendamustin, Prednison"
  },
  {
    "code" : "BR",
    "display" : "BR",
    "definition" : "Bendamustin, Rituximab"
  },
  {
    "code" : "BrECADD",
    "display" : "BrECADD",
    "definition" : "Brentuximab, Cyclophosphamid, Dacarbacin, Doxorubicin, Etoposid, Dexamethason"
  },
  {
    "code" : "BuCy",
    "display" : "BuCy",
    "definition" : "Busulfan, Cyclophosphamid"
  },
  {
    "code" : "CAD",
    "display" : "CAD",
    "definition" : "Cyclophosphamid, Doxorubicin, Dexamethason"
  },
  {
    "code" : "CAO",
    "display" : "CAO",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "CapeOx",
    "display" : "CapeOx",
    "definition" : "Capecitabin, Oxaliplatin"
  },
  {
    "code" : "Cap-Schema",
    "display" : "Cap-Schema",
    "definition" : "Capecitabin"
  },
  {
    "code" : "CarboTax",
    "display" : "CarboTax",
    "definition" : "Carboplatin, Paclitaxel"
  },
  {
    "code" : "CEV",
    "display" : "CEV",
    "definition" : "Carboplatin, Etoposid, Vincristin"
  },
  {
    "code" : "CHOEP",
    "display" : "CHOEP",
    "definition" : "Cyclophosphamid, Doxorubicin, Etoposid, Vincristin, Prednison"
  },
  {
    "code" : "CHOEP-14",
    "display" : "CHOEP-14",
    "definition" : "Cyclophosphamid, Doxorubicin, Etoposid, Vincristin, Prednison, G-CSF"
  },
  {
    "code" : "CHOEP-21",
    "display" : "CHOEP-21",
    "definition" : "Cyclophosphamid, Doxorubicin, Etoposid, Vincristin, Prednison, G-CSF"
  },
  {
    "code" : "CHOP",
    "display" : "CHOP",
    "definition" : "Cyclophosphamid, Doxorubicin, Vincristin, Prednison"
  },
  {
    "code" : "CHOP-14",
    "display" : "CHOP-14",
    "definition" : "Cyclophosphamid, Doxorubicin, Vincristin, Prednison, G-CSF"
  },
  {
    "code" : "CHOP-21",
    "display" : "CHOP-21",
    "definition" : "Cyclophosphamid, Doxorubicin, Vincristin, Prednison, G-CSF"
  },
  {
    "code" : "CMF",
    "display" : "CMF",
    "definition" : "Cyclophosphamid, Fluorouracil, Methotrexat"
  },
  {
    "code" : "COPP",
    "display" : "COPP",
    "definition" : "Cyclophosphamid, Procarbazin, Vincristin, Prednison"
  },
  {
    "code" : "CV",
    "display" : "CV",
    "definition" : "Cisplatin, Vinorelbin"
  },
  {
    "code" : "DA",
    "display" : "DA",
    "definition" : "Cytarabin, Daunorubicin"
  },
  {
    "code" : "DAC",
    "display" : "DAC",
    "definition" : "Cyclophosphamid, Docetaxel, Doxorubicin"
  },
  {
    "code" : "DC-Doce-Carbo",
    "display" : "DC (Doce/Carbo)",
    "definition" : "Carboplatin, Docetaxel"
  },
  {
    "code" : "DC-Doce-Cyclo",
    "display" : "DC (Doce/Cyclo)",
    "definition" : "Cyclophosphamid, Docetaxel"
  },
  {
    "code" : "DCbH",
    "display" : "DCbH",
    "definition" : "Carboplatin, Docetaxel, Trastuzumab"
  },
  {
    "code" : "DeVIC",
    "display" : "DeVIC",
    "definition" : "Carboplatin, Etoposid, Ifosfamid, Dexamethason"
  },
  {
    "code" : "Dexa-BEAM",
    "display" : "Dexa-BEAM",
    "definition" : "Carmustin, Cytarabin, Etoposid, Melphalan, Dexamethason"
  },
  {
    "code" : "DHAP",
    "display" : "DHAP",
    "definition" : "Cisplatin, Cytarabin, Dexamethason"
  },
  {
    "code" : "DRC",
    "display" : "DRC",
    "definition" : "Cyclophosphamid, Rituximab, Dexamethason"
  },
  {
    "code" : "DVP",
    "display" : "DVP",
    "definition" : "Cisplatin, Dacarbazin, Vindesin"
  },
  {
    "code" : "EC",
    "display" : "EC",
    "definition" : "Cyclophosphamid, Epirubicin"
  },
  {
    "code" : "EC-D",
    "display" : "EC-D",
    "definition" : "Cyclophosphamid, Docetaxel, Epirubicin"
  },
  {
    "code" : "ECF",
    "display" : "ECF",
    "definition" : "Cisplatin, Epirubicin, Fluorouracil"
  },
  {
    "code" : "EC-P",
    "display" : "EC-P",
    "definition" : "Cyclophosphamid, Epirubicin, Paclitaxel"
  },
  {
    "code" : "ELO-Rd",
    "display" : "ELO-Rd",
    "definition" : "Elotuzumab, Lenalidomid, Dexamethason"
  },
  {
    "code" : "EOX",
    "display" : "EOX",
    "definition" : "Capecitabin, Epirubicin, Oxaliplatin"
  },
  {
    "code" : "EXTREME-mit-Carboplatin",
    "display" : "EXTREME mit Carboplatin",
    "definition" : "Carboplatin, Cetuximab, Fluorouracil"
  },
  {
    "code" : "EXTREME-mit-Cisplatin",
    "display" : "EXTREME mit Cisplatin",
    "definition" : "Cetuximab, Cisplatin, Fluorouracil"
  },
  {
    "code" : "FAC",
    "display" : "FAC",
    "definition" : "Cyclophosphamid, Doxorubicin, Fluorouracil"
  },
  {
    "code" : "FC",
    "display" : "FC",
    "definition" : "Cyclophosphamid, Fludarabin"
  },
  {
    "code" : "FCR",
    "display" : "FCR",
    "definition" : "Cyclophosphamid, Fludarabin, Rituximab"
  },
  {
    "code" : "FEC",
    "display" : "FEC",
    "definition" : "Cyclophosphamid, Epirubicin, Fluorouracil"
  },
  {
    "code" : "FEC-Doc",
    "display" : "FEC-Doc",
    "definition" : "Cyclophosphamid, Docetaxel, Epirubicin, Fluorouracil"
  },
  {
    "code" : "FLAG-Ida",
    "display" : "FLAG-Ida",
    "definition" : "Cytarabin, Fludarabin, Idarubicin, Lenogastrim"
  },
  {
    "code" : "FLO",
    "display" : "FLO",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "FLOT",
    "display" : "FLOT",
    "definition" : "Docetaxel, Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "Flu-Cam",
    "display" : "Flu-Cam",
    "definition" : "Alemtuzumab, Fludarabin"
  },
  {
    "code" : "FOLFIRI",
    "display" : "FOLFIRI",
    "definition" : "Fluorouracil, Folinsäure, Irinotecan"
  },
  {
    "code" : "Folfirinox",
    "display" : "Folfirinox",
    "definition" : "Fluorouracil, Folinsäure, Irinotecan, Oxaliplatin"
  },
  {
    "code" : "FOLFOX4",
    "display" : "FOLFOX4",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "FOLFOX-6",
    "display" : "FOLFOX-6",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "FOLFOXIRI",
    "display" : "FOLFOXIRI",
    "definition" : "Fluorouracil, Folinsäure, Irinotecan, Oxaliplatin"
  },
  {
    "code" : "FUFAMI",
    "display" : "FUFAMI",
    "definition" : "Fluorouracil, Folinsäure, Mitomycin"
  },
  {
    "code" : "FUFIRI",
    "display" : "FUFIRI",
    "definition" : "Fluorouracil, Folinsäure, Irinotecan"
  },
  {
    "code" : "FUFOX",
    "display" : "FUFOX",
    "definition" : "Fluorouracil, Folinsäure, Oxaliplatin"
  },
  {
    "code" : "GC-B",
    "display" : "GC-B",
    "definition" : "Bevacizumab, Carboplatin, Gemcitabin"
  },
  {
    "code" : "GDP-Schema",
    "display" : "GDP-Schema",
    "definition" : "Cisplatin, Gemcitabin, Dexamethason"
  },
  {
    "code" : "GELOX",
    "display" : "GELOX",
    "definition" : "Asparaginase, Gemcitabin, Oxaliplatin"
  },
  {
    "code" : "Gem-Carbo",
    "display" : "Gem-Carbo",
    "definition" : "Carboplatin, Gemcitabin"
  },
  {
    "code" : "Gem-Cis",
    "display" : "Gem-Cis",
    "definition" : "Cisplatin, Gemcitabin"
  },
  {
    "code" : "GemTreo",
    "display" : "GemTreo",
    "definition" : "Gemcitabin, Treosulfan"
  },
  {
    "code" : "GOP",
    "display" : "GOP",
    "definition" : "Gemcitabin, Oxaliplatin, Paclitaxel"
  },
  {
    "code" : "HAM-Cytarabin",
    "display" : "HAM-Cytarabin",
    "definition" : "Cytarabin, Mitoxantron"
  },
  {
    "code" : "HD-Protokoll",
    "display" : "HD-Protokoll",
    "definition" : "BCNU, Rituximab, Thiotepa"
  },
  {
    "code" : "ICE",
    "display" : "ICE",
    "definition" : "Carboplatin, Etoposid, Ifosfamid"
  },
  {
    "code" : "IEV",
    "display" : "IEV",
    "definition" : "Epirubicin, Etoposid, Ifosfamid"
  },
  {
    "code" : "IMVP-16",
    "display" : "IMVP-16",
    "definition" : "Etoposid, Ifosfamid, Methotrexat"
  },
  {
    "code" : "IRd",
    "display" : "IRd",
    "definition" : "Ixazomib, Lenalidomid, Dexamethason"
  },
  {
    "code" : "Knospe",
    "display" : "Knospe",
    "definition" : "Chlorambucil, Prednison"
  },
  {
    "code" : "Knospe-modifiziert",
    "display" : "Knospe modifiziert",
    "definition" : "Chlorambucil, Rituximab"
  },
  {
    "code" : "KRD",
    "display" : "KRD",
    "definition" : "Carfilzomib, Lenalidomid, Dexamethason"
  },
  {
    "code" : "LV5FU2",
    "display" : "LV5FU2",
    "definition" : "Fluorouracil, Folinsäure"
  },
  {
    "code" : "LV5FU2-modif",
    "display" : "LV5FU2 modif.",
    "definition" : "Fluorouracil, Folinsäure"
  },
  {
    "code" : "MAMAC",
    "display" : "MAMAC",
    "definition" : "Amsacrin, Cytarabin"
  },
  {
    "code" : "MATRix",
    "display" : "MATRix",
    "definition" : "Cytarabin, Methotrexat, Rituximab, Thiotepa"
  },
  {
    "code" : "MAV",
    "display" : "MAV",
    "definition" : "Cytarabin, Etoposid, Mitoxantron"
  },
  {
    "code" : "Mayo-Protokoll",
    "display" : "Mayo-Protokoll",
    "definition" : "Fluorouracil, Folinsäure"
  },
  {
    "code" : "M-Cavi",
    "display" : "M-Cavi",
    "definition" : "Carboplatin, Methotrexat, Vinblastin"
  },
  {
    "code" : "MPT",
    "display" : "MPT",
    "definition" : "Melphalan, Thalidomid, Prednison"
  },
  {
    "code" : "M-VAC",
    "display" : "M-VAC",
    "definition" : "Cisplatin, Doxorubicin, Methotrexat, Vinblastin"
  },
  {
    "code" : "PAC",
    "display" : "PAC",
    "definition" : "Cisplatin, Cyclophosphamid, Doxorubicin"
  },
  {
    "code" : "PC",
    "display" : "PC",
    "definition" : "Bevacizumab, Carboplatin, Paclitaxel"
  },
  {
    "code" : "PC-mit-Bevacizumab",
    "display" : "PC mit Bevacizumab",
    "definition" : "Bevacizumab, Carboplatin, Paclitaxel"
  },
  {
    "code" : "PC-ohne-Bevacizumab",
    "display" : "PC ohne Bevacizumab",
    "definition" : "Carboplatin, Paclitaxel"
  },
  {
    "code" : "PCV",
    "display" : "PCV",
    "definition" : "Lomustin, Procarbazin, Vincristin"
  },
  {
    "code" : "PE",
    "display" : "PE",
    "definition" : "Cisplatin, Etoposid"
  },
  {
    "code" : "PEB",
    "display" : "PEB",
    "definition" : "Bleomycin, Cisplatin, Etoposid"
  },
  {
    "code" : "Peg-DoxC",
    "display" : "Peg. DoxC",
    "definition" : "Carboplatin, Doxorubicin"
  },
  {
    "code" : "PEI",
    "display" : "PEI",
    "definition" : "Cisplatin, Etoposid, Ifosfamid"
  },
  {
    "code" : "P-GEMOX",
    "display" : "P-GEMOX",
    "definition" : "Asparaginase (peg), Gemcitabin, Oxaliplatin"
  },
  {
    "code" : "PLF",
    "display" : "PLF",
    "definition" : "Cisplatin, Fluorouracil, Folinsäure"
  },
  {
    "code" : "PVAG-Schema",
    "display" : "PVAG-Schema",
    "definition" : "Doxorubicin, Gemcitabin, Vinblastin, Prednison"
  },
  {
    "code" : "PVBI",
    "display" : "PVBI",
    "definition" : "Cisplatin, Ifosfamid, Vinblastin"
  },
  {
    "code" : "R-BAC",
    "display" : "R-BAC",
    "definition" : "Bendamustin, Cytarabin, Rituximab"
  },
  {
    "code" : "R-Bendamustin",
    "display" : "R-Bendamustin",
    "definition" : "Bendamustin, Rituximab"
  },
  {
    "code" : "R-CHOP",
    "display" : "R-CHOP",
    "definition" : "Cyclophosphamid, Doxorubicin, Vincristin, Rituximab, Prednison"
  },
  {
    "code" : "R-DeVIC",
    "display" : "R-DeVIC",
    "definition" : "Carboplatin, Etoposid, Ifosfamid, Rituximab, Dexamethason"
  },
  {
    "code" : "R-DHAP",
    "display" : "R-DHAP",
    "definition" : "Cisplatin, Cytarabin, Rituximab, Dexamethason"
  },
  {
    "code" : "RD-Schema",
    "display" : "RD-Schema",
    "definition" : "Lenalidomid, Dexamethason"
  },
  {
    "code" : "RevDex",
    "display" : "Rev/Dex",
    "definition" : "Lenalidomid, Dexamethason"
  },
  {
    "code" : "R-GemOx",
    "display" : "R-GemOx",
    "definition" : "Gemcitabin, Oxaliplatin, Rituximab"
  },
  {
    "code" : "R-HAD",
    "display" : "R-HAD",
    "definition" : "Cytarabin, Rituximab, Dexamethason"
  },
  {
    "code" : "R-ICE",
    "display" : "R-ICE",
    "definition" : "Carboplatin, Etoposid, Ifosfamid, Rituximab"
  },
  {
    "code" : "R-MCP",
    "display" : "R-MCP",
    "definition" : "Chlorambucil, Mitoxantron, Rituximab, Prednison"
  },
  {
    "code" : "R-MP",
    "display" : "R-MP",
    "definition" : "Methotrexat, Procarbazin, Rituximab"
  },
  {
    "code" : "S-HAI",
    "display" : "S-HAI",
    "definition" : "Cytarabin, Idarubicin, G-CSF"
  },
  {
    "code" : "S-HAM",
    "display" : "S-HAM",
    "definition" : "Cytarabin, Mitoxantron, G-CSF"
  },
  {
    "code" : "SMILE",
    "display" : "SMILE",
    "definition" : "Asparaginase, Etoposid, Ifosfamid, Methotrexat, Dexamethason"
  },
  {
    "code" : "TAC",
    "display" : "TAC",
    "definition" : "Cyclophosphamid, Docetaxel, Doxorubicin"
  },
  {
    "code" : "TCED",
    "display" : "TCED",
    "definition" : "Cyclophosphamid, Etoposid, Thalidomid, Dexamethason"
  },
  {
    "code" : "TCH",
    "display" : "TCH",
    "definition" : "Carboplatin, Docetaxel, Trastuzumab"
  },
  {
    "code" : "TIP",
    "display" : "TIP",
    "definition" : "Cisplatin, Ifosfamid, Paclitaxel"
  },
  {
    "code" : "TMZ",
    "display" : "TMZ",
    "definition" : "Temozolomid"
  },
  {
    "code" : "TPF",
    "display" : "TPF",
    "definition" : "Cisplatin, Docetaxel, Fluorouracil"
  },
  {
    "code" : "VCD",
    "display" : "VCD",
    "definition" : "Bortezomib, Cyclophosphamid, Dexamethason"
  },
  {
    "code" : "VFD",
    "display" : "VFD",
    "definition" : "Bortezomib, Panobinostat, Dexamethason"
  },
  {
    "code" : "VIPD",
    "display" : "VIPD",
    "definition" : "Carboplatin, Etoposid, Ifosfamid, Dexamethason"
  },
  {
    "code" : "VMP",
    "display" : "VMP",
    "definition" : "Bortezomib, Melphalan, Prednison"
  },
  {
    "code" : "VRD",
    "display" : "VRD",
    "definition" : "Bortezomib, Lenalidomid, Dexamethason"
  },
  {
    "code" : "VTD",
    "display" : "VTD",
    "definition" : "Bortezomib, Thalidomid, Dexamethason"
  },
  {
    "code" : "XELOX",
    "display" : "XELOX",
    "definition" : "Capecitabin, Oxaliplatin"
  },
  {
    "code" : "XP",
    "display" : "XP",
    "definition" : "Capecitabin, Cisplatin"
  },
  {
    "code" : "Konditionierung-aemyeloablativ-MAC",
    "display" : "Konditionierung, ämyeloablativ (MAC)",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "Konditionierung-nicht-myeloablativ-NMA",
    "display" : "Konditionierung, nicht myeloablativ (NMA)",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "Konditionierung-reduzierte-Intensitaet-RIC",
    "display" : "Konditionierung, reduzierte Intensität (RIC)",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "Konditionierung-reduzierte-Toxizitaet-RTC",
    "display" : "Konditionierung, reduzierte Toxizität (RTC)",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "TACE-Doxorubicin-Mitomycin",
    "display" : "TACE Doxorubicin-Mitomycin",
    "definition" : "Doxorubicin, Mitomycin"
  },
  {
    "code" : "TACE-Doxorubicin",
    "display" : "TACE Doxorubicin",
    "definition" : "Doxorubicin"
  },
  {
    "code" : "TACE",
    "display" : "TACE",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "HIPEC-Cisplatin-Mitomycin",
    "display" : "HIPEC Cisplatin-Mitomycin",
    "definition" : "Cisplatin, Mitomycin"
  },
  {
    "code" : "HIPEC-Mitomycin",
    "display" : "HIPEC Mitomycin",
    "definition" : "Mitomycin"
  },
  {
    "code" : "HIPEC",
    "display" : "HIPEC",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "HITOC",
    "display" : "HITOC",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "PIPAC-Cisplatin-Doxorubicin",
    "display" : "PIPAC Cisplatin-Doxorubicin",
    "definition" : "Cisplatin, Doxorubicin"
  },
  {
    "code" : "PIPAC-Cisplatin-Paclitaxel",
    "display" : "PIPAC Cisplatin-Paclitaxel",
    "definition" : "Cisplatin, Paclitaxel"
  },
  {
    "code" : "PIPAC",
    "display" : "PIPAC",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "Instillation-Harnblase-Mitomycin",
    "display" : "Instillation Harnblase Mitomycin",
    "definition" : "Mitomycin"
  },
  {
    "code" : "Instillation-Harnblase-Doxorubicin",
    "display" : "Instillation Harnblase Doxorubicin",
    "definition" : "Doxorubicin"
  },
  {
    "code" : "Instillation-Harnblase-Chemotherapeutikum",
    "display" : "Instillation Harnblase Chemotherapeutikum",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "Instillation-Harnblase-BCG",
    "display" : "Instillation Harnblase (BCG)",
    "definition" : "BCG"
  },
  {
    "code" : "Instillation-Intrathekal-Tripel",
    "display" : "Instillation Intrathekal Tripel",
    "definition" : "Cytarabin, Methotrexat, Dexamethason"
  },
  {
    "code" : "Instillation-Intrathekal-Quadrupel",
    "display" : "Instillation Intrathekal Quadrupel",
    "definition" : "Cytarabin, Methotrexat, Dexamethason, Rituximab"
  },
  {
    "code" : "Instillation-intrathekal",
    "display" : "Instillation intrathekal",
    "definition" : "Individuell zu wählende Substanzen"
  },
  {
    "code" : "PUVA-systemisch-oral",
    "display" : "PUVA systemisch oral",
    "definition" : "Psoralen"
  },
  {
    "code" : "Bade-PUVA-topisch",
    "display" : "(Bade-) PUVA (topisch)",
    "definition" : "Psoralen"
  },
  {
    "code" : "Aderlass",
    "display" : "Aderlass",
    "definition" : "Aderlass"
  },
  {
    "code" : "Leukapherese",
    "display" : "Leukapherese",
    "definition" : "Leukapherese"
  },
  {
    "code" : "Plasmapherese",
    "display" : "Plasmapherese",
    "definition" : "Plasmapherese"
  },
  {
    "code" : "TTFields",
    "display" : "TTFields",
    "definition" : "TTFields"
  },
  {
    "code" : "CAR-T-Zelltherapie",
    "display" : "CAR-T-Zelltherapie",
    "definition" : "Individuell zu wählende Substanzen"
  }]
}

```
