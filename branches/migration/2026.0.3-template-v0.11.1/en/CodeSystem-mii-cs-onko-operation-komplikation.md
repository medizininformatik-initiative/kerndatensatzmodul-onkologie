# MII CS Onkologie Operation Komplikationen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII CS Onkologie Operation Komplikationen**

## CodeSystem: MII CS Onkologie Operation Komplikationen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation | *Version*:2026.0.3 |
| Active as of 2026-08-31 | *Computable Name*:MII_CS_Onko_Operation_Komplikationen |

 
oBDS-spezifisches Codesystem für Klassifikation von Komplikationen während der OP 

This Code system is referenced in the definition of the following value sets:

* [MII VS Onkologie Operation Komplikationen](ValueSet-mii-vs-onko-operation-komplikation.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "mii-cs-onko-operation-komplikation",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/CodeSystem/mii-cs-onko-operation-komplikation",
  "version" : "2026.0.3",
  "name" : "MII_CS_Onko_Operation_Komplikationen",
  "title" : "MII CS Onkologie Operation Komplikationen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-31T15:22:09+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "oBDS-spezifisches Codesystem für Klassifikation von Komplikationen während der OP",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "caseSensitive" : true,
  "valueSet" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-operation-komplikation",
  "content" : "complete",
  "count" : 79,
  "concept" : [{
    "code" : "N",
    "display" : "nein"
  },
  {
    "code" : "U",
    "display" : "unbekannt"
  },
  {
    "code" : "ABD",
    "display" : "Abszess in einem Drainagekanal"
  },
  {
    "code" : "ABS",
    "display" : "Abszess, intraabdominaler oder intrathorakaler"
  },
  {
    "code" : "ASF",
    "display" : "Abszess, subfaszialer"
  },
  {
    "code" : "ANI",
    "display" : "Akute Niereninsuffizienz"
  },
  {
    "code" : "AEP",
    "display" : "Alkoholentzugspsychose"
  },
  {
    "code" : "ALR",
    "display" : "Allergische Reaktion ohne Schocksymptomatik"
  },
  {
    "code" : "ANS",
    "display" : "Anaphylaktischer Schock"
  },
  {
    "code" : "AEE",
    "display" : "Anastomoseninsuffizienz einer Enterostomie"
  },
  {
    "code" : "API",
    "display" : "Apoplektischer Insult"
  },
  {
    "code" : "BIF",
    "display" : "Biliäre Fistel"
  },
  {
    "code" : "BOG",
    "display" : "Blutung, obere gastrointestinale (z. B „Stressulkus“)"
  },
  {
    "code" : "BOE",
    "display" : "Bolusverlegung eines Endotubus"
  },
  {
    "code" : "BSI",
    "display" : "Bronchusstumpfinsuffizienz"
  },
  {
    "code" : "CHI",
    "display" : "Cholangitis"
  },
  {
    "code" : "DAI",
    "display" : "Darmanastomoseninsuffizienz"
  },
  {
    "code" : "DPS",
    "display" : "Darmpassagestörungen (z. B. protrahierte Atonie, Subileus, Ileus)"
  },
  {
    "code" : "DIC",
    "display" : "Disseminierte intravasale Koagulopathie"
  },
  {
    "code" : "DEP",
    "display" : "Drogenentzugspsychose"
  },
  {
    "code" : "DLU",
    "display" : "Druck- und Lagerungsschäden, z. B. Dekubitalulzera"
  },
  {
    "code" : "DSI",
    "display" : "Duodenalstumpfinsuffizienz"
  },
  {
    "code" : "ENF",
    "display" : "Enterale Fistel"
  },
  {
    "code" : "GER",
    "display" : "Gerinnungsstörung"
  },
  {
    "code" : "HEM",
    "display" : "Hämatemesis"
  },
  {
    "code" : "HUR",
    "display" : "Hämaturie"
  },
  {
    "code" : "HAE",
    "display" : "Hämorrhagischer Schock"
  },
  {
    "code" : "HFI",
    "display" : "Harnfistel"
  },
  {
    "code" : "HNK",
    "display" : "Hautnekrose im Operationsbereich"
  },
  {
    "code" : "HZI",
    "display" : "Herzinsuffizienz"
  },
  {
    "code" : "HRS",
    "display" : "Herzrhythmusstörungen"
  },
  {
    "code" : "HNA",
    "display" : "Hirnnervenausfälle"
  },
  {
    "code" : "HOP",
    "display" : "Hirnorganisches Psychosyndrom (z. B. „Durchgangssyndrom“)"
  },
  {
    "code" : "HYB",
    "display" : "Hyperbilirubinämie"
  },
  {
    "code" : "HYF",
    "display" : "Hypopharynxfistel"
  },
  {
    "code" : "IFV",
    "display" : "Ileofemorale Venenthrombose"
  },
  {
    "code" : "KAS",
    "display" : "Kardiogener Schock"
  },
  {
    "code" : "KES",
    "display" : "Komplikationen einer Stomaanlage"
  },
  {
    "code" : "KIM",
    "display" : "Komplikation eines Implantates (Gefäßprothese, Totalendoprothese, Katheter), z. B. Dislokation"
  },
  {
    "code" : "KRA",
    "display" : "Krampfanfall"
  },
  {
    "code" : "KDS",
    "display" : "Kurzdarmsyndrom"
  },
  {
    "code" : "LEV",
    "display" : "Leberversagen"
  },
  {
    "code" : "LOE",
    "display" : "Lungenödem"
  },
  {
    "code" : "LYF",
    "display" : "Lymphfistel"
  },
  {
    "code" : "LYE",
    "display" : "Lymphozele"
  },
  {
    "code" : "MES",
    "display" : "Magenentleerungsstörung"
  },
  {
    "code" : "MIL",
    "display" : "Mechanischer Ileus"
  },
  {
    "code" : "MED",
    "display" : "Mediastinitis"
  },
  {
    "code" : "MAT",
    "display" : "Mesenterialarterien- oder -venenthrombose"
  },
  {
    "code" : "MYI",
    "display" : "Myokardinfarkt"
  },
  {
    "code" : "RNB",
    "display" : "Nachblutung, revisionsbedürftig, anderweitig nicht erwähnt"
  },
  {
    "code" : "NAB",
    "display" : "Nachblutung, nicht revisionsbedürftig, anderweitig nicht erwähnt"
  },
  {
    "code" : "NIN",
    "display" : "Nahtinsuffizienz, anderweitig nicht erwähnt"
  },
  {
    "code" : "OES",
    "display" : "Ösophagitis"
  },
  {
    "code" : "OSM",
    "display" : "Osteitis, Osteomyelitis"
  },
  {
    "code" : "PAF",
    "display" : "Pankreasfistel"
  },
  {
    "code" : "PIT",
    "display" : "Pankreatitis"
  },
  {
    "code" : "PAB",
    "display" : "Peranale Blutung"
  },
  {
    "code" : "PPA",
    "display" : "Periphere Parese"
  },
  {
    "code" : "PAV",
    "display" : "Peripherer arterieller Verschluss (Embolie, Thrombose)"
  },
  {
    "code" : "PER",
    "display" : "Peritonitis"
  },
  {
    "code" : "PLB",
    "display" : "Platzbauch"
  },
  {
    "code" : "PEY",
    "display" : "Pleuraempyem"
  },
  {
    "code" : "PLE",
    "display" : "Pleuraerguss"
  },
  {
    "code" : "PMN",
    "display" : "Pneumonie"
  },
  {
    "code" : "PNT",
    "display" : "Pneumothorax"
  },
  {
    "code" : "PDA",
    "display" : "Protrahierte Darmatonie (paralytischer Ileus)"
  },
  {
    "code" : "PAE",
    "display" : "Pulmonalarterienembolie"
  },
  {
    "code" : "RPA",
    "display" : "Rekurrensparese"
  },
  {
    "code" : "RIN",
    "display" : "Respiratorische Insuffizienz"
  },
  {
    "code" : "SKI",
    "display" : "Septische Komplikation eines Implantates"
  },
  {
    "code" : "SES",
    "display" : "Septischer Schock"
  },
  {
    "code" : "SFH",
    "display" : "Störungen des Flüssigkeits-, Elektrolyt- und Säurebasenhaushaltes"
  },
  {
    "code" : "STK",
    "display" : "Stomakomplikation (z. B. Blutung, Nekrose, Stenose)"
  },
  {
    "code" : "TZP",
    "display" : "Thrombozytopenie"
  },
  {
    "code" : "TIA",
    "display" : "TIA(transitorische ischämische Attacke) oder RIND(reversibles ischämisches neurologisches Defizit)"
  },
  {
    "code" : "TRZ",
    "display" : "Transfusionszwischenfall"
  },
  {
    "code" : "WUH",
    "display" : "Wundhämatom (konservativ therapiert)"
  },
  {
    "code" : "WSS",
    "display" : "Wundheilungsstörung, subkutane"
  }]
}

```
