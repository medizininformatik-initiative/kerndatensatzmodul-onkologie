# MII VS Onkologie Systemische Therapie Substanzen ATC 2019 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Substanzen ATC 2019**

## ValueSet: MII VS Onkologie Systemische Therapie Substanzen ATC 2019 (Experimentell) 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2019 | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_Systemische_Therapie_Substanzen_2019 |

 
ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2019. Für historische Datenvalidierung. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unsupported Code System Version)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-systemische-therapie-substanzen-2019",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2019",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Substanzen_2019",
  "title" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2019",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-08-28T12:26:30+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2019. Für historische Datenvalidierung.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://fhir.de/CodeSystem/bfarm/atc",
      "version" : "2019",
      "concept" : [{
        "code" : "L02BX01",
        "display" : "Abarelix"
      },
      {
        "code" : "L04AA24",
        "display" : "Abatacept"
      },
      {
        "code" : "L04AA22",
        "display" : "Abetimus"
      },
      {
        "code" : "L02BX03",
        "display" : "Abirateron"
      },
      {
        "code" : "L01DB04",
        "display" : "Aclarubicin"
      },
      {
        "code" : "L04AB04",
        "display" : "Adalimumab"
      },
      {
        "code" : "L01XE13",
        "display" : "Afatinib"
      },
      {
        "code" : "L04AB03",
        "display" : "Afelimomab"
      },
      {
        "code" : "L01XX44",
        "display" : "Aflibercept"
      },
      {
        "code" : "L03AC01",
        "display" : "Aldesleukin"
      },
      {
        "code" : "L01XE36",
        "display" : "Alectinib"
      },
      {
        "code" : "L04AA15",
        "display" : "Alefacept"
      },
      {
        "code" : "L04AA34",
        "display" : "Alemtuzumab"
      },
      {
        "code" : "M05BA04",
        "display" : "Alendronsäure"
      },
      {
        "code" : "L01XX22",
        "display" : "Alitretinoin"
      },
      {
        "code" : "L01XX03",
        "display" : "Altretamin"
      },
      {
        "code" : "V03AM01",
        "display" : "Amilomer"
      },
      {
        "code" : "L02BG01",
        "display" : "Aminoglutethimid"
      },
      {
        "code" : "L01XD04",
        "display" : "Aminolevulinsäure"
      },
      {
        "code" : "L01DB10",
        "display" : "Amrubicin"
      },
      {
        "code" : "L01XX01",
        "display" : "Amsacrin"
      },
      {
        "code" : "L01XX35",
        "display" : "Anagrelid"
      },
      {
        "code" : "L04AC03",
        "display" : "Anakinra"
      },
      {
        "code" : "L02BG03",
        "display" : "Anastrozol"
      },
      {
        "code" : "L04AA04",
        "display" : "Antithymozytäres Immunglobulin (Kaninchen)"
      },
      {
        "code" : "L01XX27",
        "display" : "Arsentrioxid"
      },
      {
        "code" : "P01BE03",
        "display" : "Artesunat"
      },
      {
        "code" : "L01XX02",
        "display" : "Asparaginase"
      },
      {
        "code" : "L01XC32",
        "display" : "Atezolizumab"
      },
      {
        "code" : "L01XC31",
        "display" : "Avelumab"
      },
      {
        "code" : "L01XE17",
        "display" : "Axitinib"
      },
      {
        "code" : "L01BC07",
        "display" : "Azacitidin"
      },
      {
        "code" : "L04AX01",
        "display" : "Azathioprin"
      },
      {
        "code" : "L04AC02",
        "display" : "Basiliximab"
      },
      {
        "code" : "L03AX03",
        "display" : "BCG-Impfstoff"
      },
      {
        "code" : "L04AA28",
        "display" : "Belatacept"
      },
      {
        "code" : "L04AA26",
        "display" : "Belimumab"
      },
      {
        "code" : "L01XX49",
        "display" : "Belinostat"
      },
      {
        "code" : "L01AA09",
        "display" : "Bendamustin"
      },
      {
        "code" : "L01XC07",
        "display" : "Bevacizumab"
      },
      {
        "code" : "L01XX25",
        "display" : "Bexaroten"
      },
      {
        "code" : "L02BB03",
        "display" : "Bicalutamid"
      },
      {
        "code" : "L01XE41",
        "display" : "Binimetinib"
      },
      {
        "code" : "L01DC01",
        "display" : "Bleomycin"
      },
      {
        "code" : "L01XC19",
        "display" : "Blinatumomab"
      },
      {
        "code" : "L01XX32",
        "display" : "Bortezomib"
      },
      {
        "code" : "L01XE14",
        "display" : "Bosutinib"
      },
      {
        "code" : "L01XC12",
        "display" : "Brentuximab vedotin"
      },
      {
        "code" : "L04AC09",
        "display" : "Briakinumab"
      },
      {
        "code" : "L01XE43",
        "display" : "Brigatinib"
      },
      {
        "code" : "N04BC01",
        "display" : "Bromocriptin"
      },
      {
        "code" : "L02AE01",
        "display" : "Buserelin"
      },
      {
        "code" : "L01AB01",
        "display" : "Busulfan"
      },
      {
        "code" : "L01CD04",
        "display" : "Cabazitaxel"
      },
      {
        "code" : "N04BC06",
        "display" : "Cabergolin"
      },
      {
        "code" : "L01XE26",
        "display" : "Cabozantinib"
      },
      {
        "code" : "V03AF04",
        "display" : "Calciumlevofolinat"
      },
      {
        "code" : "L04AC08",
        "display" : "Canakinumab"
      },
      {
        "code" : "L01BC06",
        "display" : "Capecitabin"
      },
      {
        "code" : "L01XA02",
        "display" : "Carboplatin"
      },
      {
        "code" : "L01AC03",
        "display" : "Carboquon"
      },
      {
        "code" : "L01XX45",
        "display" : "Carfilzomib"
      },
      {
        "code" : "L01BC04",
        "display" : "Carmofur"
      },
      {
        "code" : "L01AD01",
        "display" : "Carmustin"
      },
      {
        "code" : "L01XE28",
        "display" : "Ceritinib"
      },
      {
        "code" : "L04AB05",
        "display" : "Certolizumab pegol"
      },
      {
        "code" : "H01CC02",
        "display" : "Cetrorelix"
      },
      {
        "code" : "L01XC06",
        "display" : "Cetuximab"
      },
      {
        "code" : "L01AA02",
        "display" : "Chlorambucil"
      },
      {
        "code" : "G03DB06",
        "display" : "Chlormadinon"
      },
      {
        "code" : "L01AA05",
        "display" : "Chlormethin"
      },
      {
        "code" : "L04AD01",
        "display" : "Ciclosporin"
      },
      {
        "code" : "L01XA01",
        "display" : "Cisplatin"
      },
      {
        "code" : "L01BB04",
        "display" : "Cladribin"
      },
      {
        "code" : "M05BA02",
        "display" : "Clodronsäure"
      },
      {
        "code" : "L01BB06",
        "display" : "Clofarabin"
      },
      {
        "code" : "L01XE38",
        "display" : "Cobimetinib"
      },
      {
        "code" : "L01XE16",
        "display" : "Crizotinib"
      },
      {
        "code" : "L01AA01",
        "display" : "Cyclophosphamid"
      },
      {
        "code" : "G03HA01",
        "display" : "Cyproteron"
      },
      {
        "code" : "L01BC01",
        "display" : "Cytarabin"
      },
      {
        "code" : "L01XY01",
        "display" : "Cytarabin und Daunorubicin"
      },
      {
        "code" : "L01XE23",
        "display" : "Dabrafenib"
      },
      {
        "code" : "L01AX04",
        "display" : "Dacarbazin"
      },
      {
        "code" : "L04AC01",
        "display" : "Daclizumab"
      },
      {
        "code" : "L01DA01",
        "display" : "Dactinomycin"
      },
      {
        "code" : "L01XC24",
        "display" : "Daratumumab"
      },
      {
        "code" : "B03XA02",
        "display" : "Darbepoetin alfa"
      },
      {
        "code" : "L01XE06",
        "display" : "Dasatinib"
      },
      {
        "code" : "L01DB02",
        "display" : "Daunorubicin"
      },
      {
        "code" : "L01BC08",
        "display" : "Decitabin"
      },
      {
        "code" : "L02BX02",
        "display" : "Degarelix"
      },
      {
        "code" : "L01CC01",
        "display" : "Demecolcin"
      },
      {
        "code" : "L01XX29",
        "display" : "Denileukindiftitox"
      },
      {
        "code" : "M05BX04",
        "display" : "Denosumab"
      },
      {
        "code" : "H02AB02",
        "display" : "Dexamethason"
      },
      {
        "code" : "L01CD02",
        "display" : "Docetaxel"
      },
      {
        "code" : "L01DB01",
        "display" : "Doxorubicin"
      },
      {
        "code" : "L01XC28",
        "display" : "Durvalumab"
      },
      {
        "code" : "G04CB02",
        "display" : "Dutasterid"
      },
      {
        "code" : "L04AA25",
        "display" : "Eculizumab"
      },
      {
        "code" : "L04AA21",
        "display" : "Efalizumab"
      },
      {
        "code" : "L01XD06",
        "display" : "Efaproxiral"
      },
      {
        "code" : "B02BX05",
        "display" : "Eltrombopag"
      },
      {
        "code" : "L01XX59",
        "display" : "Enasidenib"
      },
      {
        "code" : "L01XE46",
        "display" : "Encorafenib"
      },
      {
        "code" : "L02BB04",
        "display" : "Enzalutamid"
      },
      {
        "code" : "L01DB03",
        "display" : "Epirubicin"
      },
      {
        "code" : "L01XX41",
        "display" : "Eribulin"
      },
      {
        "code" : "L01XE03",
        "display" : "Erlotinib"
      },
      {
        "code" : "B03XA01",
        "display" : "Erythropoietin"
      },
      {
        "code" : "L01XX11",
        "display" : "Estramustin"
      },
      {
        "code" : "L04AB01",
        "display" : "Etanercept"
      },
      {
        "code" : "M05BA01",
        "display" : "Etidronsäure"
      },
      {
        "code" : "L01AG01",
        "display" : "Etoglucid"
      },
      {
        "code" : "L01CB01",
        "display" : "Etoposid"
      },
      {
        "code" : "L01XE10",
        "display" : "Everolimus"
      },
      {
        "code" : "L02BG06",
        "display" : "Exemestan"
      },
      {
        "code" : "L03AA02",
        "display" : "Filgrastim"
      },
      {
        "code" : "G04CB01",
        "display" : "Finasterid"
      },
      {
        "code" : "L04AA27",
        "display" : "Fingolimod"
      },
      {
        "code" : "L01BC09",
        "display" : "Floxuridin"
      },
      {
        "code" : "L01BB05",
        "display" : "Fludarabin"
      },
      {
        "code" : "L01BC02",
        "display" : "Fluorouracil"
      },
      {
        "code" : "L01BC52",
        "display" : "Fluorouracil, Kombinationen"
      },
      {
        "code" : "L02BB01",
        "display" : "Flutamid"
      },
      {
        "code" : "V03AF03",
        "display" : "Calciumfolinat"
      },
      {
        "code" : "L02BG02",
        "display" : "Formestan"
      },
      {
        "code" : "L02AA04",
        "display" : "Fosfestrol"
      },
      {
        "code" : "L01AD05",
        "display" : "Fotemustin"
      },
      {
        "code" : "L02BA03",
        "display" : "Fulvestrant"
      },
      {
        "code" : "L01XE02",
        "display" : "Gefitinib"
      },
      {
        "code" : "L01BC05",
        "display" : "Gemcitabin"
      },
      {
        "code" : "L02AB03",
        "display" : "Gestonoron"
      },
      {
        "code" : "L04AB06",
        "display" : "Golimumab"
      },
      {
        "code" : "H01CA01",
        "display" : "Gonadorelin"
      },
      {
        "code" : "L02AE03",
        "display" : "Goserelin"
      },
      {
        "code" : "L04AA19",
        "display" : "Gusperimus"
      },
      {
        "code" : "L03AX14",
        "display" : "Histamindihydrochlorid"
      },
      {
        "code" : "L02AE05",
        "display" : "Histrelin"
      },
      {
        "code" : "L01XX05",
        "display" : "Hydroxycarbamid"
      },
      {
        "code" : "M05BA06",
        "display" : "Ibandronsäure"
      },
      {
        "code" : "V10XX02",
        "display" : "(90Y)Ibritumomabtiuxetan"
      },
      {
        "code" : "L01XE27",
        "display" : "Ibrutinib"
      },
      {
        "code" : "L01DB06",
        "display" : "Idarubicin"
      },
      {
        "code" : "L01XX47",
        "display" : "Idelalisib"
      },
      {
        "code" : "L01AA06",
        "display" : "Ifosfamid"
      },
      {
        "code" : "L01XE01",
        "display" : "Imatinib"
      },
      {
        "code" : "D06BB10",
        "display" : "Imiquimod"
      },
      {
        "code" : "L04AB02",
        "display" : "Infliximab"
      },
      {
        "code" : "D06BX02",
        "display" : "Ingenolmebutat"
      },
      {
        "code" : "L01XC26",
        "display" : "Inotuzumab ozogamicin"
      },
      {
        "code" : "L03AB01",
        "display" : "Interferon alfa, natürlich"
      },
      {
        "code" : "L03AB04",
        "display" : "Interferon alfa-2a"
      },
      {
        "code" : "L03AB05",
        "display" : "Interferon alfa-2b"
      },
      {
        "code" : "L03AB18",
        "display" : "Interferon gamma-1b"
      },
      {
        "code" : "L01XC11",
        "display" : "Ipilimumab"
      },
      {
        "code" : "L01XX19",
        "display" : "Irinotecan"
      },
      {
        "code" : "L01DC04",
        "display" : "Ixabepilon"
      },
      {
        "code" : "L01XX50",
        "display" : "Ixazomib"
      },
      {
        "code" : "H01CB03",
        "display" : "Lanreotid"
      },
      {
        "code" : "L01XE07",
        "display" : "Lapatinib"
      },
      {
        "code" : "L04AA13",
        "display" : "Leflunomid"
      },
      {
        "code" : "L04AX04",
        "display" : "Lenalidomid"
      },
      {
        "code" : "L03AA10",
        "display" : "Lenograstim"
      },
      {
        "code" : "L01XE29",
        "display" : "Lenvatinib"
      },
      {
        "code" : "L02BG04",
        "display" : "Letrozol"
      },
      {
        "code" : "L02AE02",
        "display" : "Leuprorelin"
      },
      {
        "code" : "L03AA14",
        "display" : "Lipegfilgrastim"
      },
      {
        "code" : "L01AD02",
        "display" : "Lomustin"
      },
      {
        "code" : "L01XX07",
        "display" : "Lonidamin"
      },
      {
        "code" : "L01XE44",
        "display" : "Lorlatinib"
      },
      {
        "code" : "G03DC03",
        "display" : "Lynestrenol"
      },
      {
        "code" : "L01AB03",
        "display" : "Mannosulfan"
      },
      {
        "code" : "J05AX09",
        "display" : "Maraviroc"
      },
      {
        "code" : "L01XX10",
        "display" : "Masoprocol"
      },
      {
        "code" : "L02AB02",
        "display" : "Medroxyprogesteron"
      },
      {
        "code" : "L02AB01",
        "display" : "Megestrol"
      },
      {
        "code" : "L01AA03",
        "display" : "Melphalan"
      },
      {
        "code" : "R03DX09",
        "display" : "Mepolizumab"
      },
      {
        "code" : "L01BB02",
        "display" : "Mercaptopurin"
      },
      {
        "code" : "V03AF01",
        "display" : "Mesna"
      },
      {
        "code" : "N07BC02",
        "display" : "Methadon"
      },
      {
        "code" : "L01BA01",
        "display" : "Methotrexat"
      },
      {
        "code" : "L01XD10",
        "display" : "Methoxsalen"
      },
      {
        "code" : "B03XA03",
        "display" : "Methoxy-Polyethylenglycol-Epoetin beta"
      },
      {
        "code" : "L01XD03",
        "display" : "Methylaminolevulinat"
      },
      {
        "code" : "H02AB04",
        "display" : "Methylprednisolon"
      },
      {
        "code" : "L01XE39",
        "display" : "Midostaurin"
      },
      {
        "code" : "L03AX15",
        "display" : "Mifamurtid"
      },
      {
        "code" : "L01XX09",
        "display" : "Miltefosin"
      },
      {
        "code" : "L01CH01",
        "display" : "Mistelkraut"
      },
      {
        "code" : "L01CP01",
        "display" : "Mistelkraut"
      },
      {
        "code" : "L01AX01",
        "display" : "Mitobronitol"
      },
      {
        "code" : "L01XX16",
        "display" : "Mitoguazon"
      },
      {
        "code" : "L01DC03",
        "display" : "Mitomycin"
      },
      {
        "code" : "L01XX23",
        "display" : "Mitotan"
      },
      {
        "code" : "L01DB07",
        "display" : "Mitoxantron"
      },
      {
        "code" : "L03AA03",
        "display" : "Molgramostim"
      },
      {
        "code" : "L04AA02",
        "display" : "Muromonab-CD3"
      },
      {
        "code" : "L04AA06",
        "display" : "Mycophenolsäure"
      },
      {
        "code" : "L04AA23",
        "display" : "Natalizumab"
      },
      {
        "code" : "V03AF10",
        "display" : "Natriumlevofolinat"
      },
      {
        "code" : "L01BB07",
        "display" : "Nelarabin"
      },
      {
        "code" : "L01XE45",
        "display" : "Neratinib"
      },
      {
        "code" : "L01XE08",
        "display" : "Nilotinib"
      },
      {
        "code" : "L02BB02",
        "display" : "Nilutamid"
      },
      {
        "code" : "L01AD06",
        "display" : "Nimustin"
      },
      {
        "code" : "L01XE31",
        "display" : "Nintedanib"
      },
      {
        "code" : "L01XX54",
        "display" : "Niraparib"
      },
      {
        "code" : "L01XC17",
        "display" : "Nivolumab"
      },
      {
        "code" : "L01XC15",
        "display" : "Obinutuzumab"
      },
      {
        "code" : "L01XX36",
        "display" : "Oblimersen"
      },
      {
        "code" : "H01CB02",
        "display" : "Octreotid"
      },
      {
        "code" : "L01XX46",
        "display" : "Olaparib"
      },
      {
        "code" : "L01XC27",
        "display" : "Olaratumab"
      },
      {
        "code" : "L01XX40",
        "display" : "Omacetaxinmepesuccinat"
      },
      {
        "code" : "L03AC02",
        "display" : "Oprelvekin"
      },
      {
        "code" : "L01XE35",
        "display" : "Osimertinib"
      },
      {
        "code" : "L01XA03",
        "display" : "Oxaliplatin"
      },
      {
        "code" : "L01CD01",
        "display" : "Paclitaxel"
      },
      {
        "code" : "L01CD03",
        "display" : "Paclitaxelpoliglumex"
      },
      {
        "code" : "L01XE33",
        "display" : "Palbociclib"
      },
      {
        "code" : "V03AF08",
        "display" : "Palifermin"
      },
      {
        "code" : "M05BA03",
        "display" : "Pamidronsäure"
      },
      {
        "code" : "L01XC08",
        "display" : "Panitumumab"
      },
      {
        "code" : "L01XX42",
        "display" : "Panobinostat"
      },
      {
        "code" : "L01XX24",
        "display" : "Pegaspargase"
      },
      {
        "code" : "L03AA13",
        "display" : "Pegfilgrastim"
      },
      {
        "code" : "L03AB11",
        "display" : "Peginterferon alfa-2a"
      },
      {
        "code" : "L03AB10",
        "display" : "Peginterferon alfa-2b"
      },
      {
        "code" : "L01XC18",
        "display" : "Pembrolizumab"
      },
      {
        "code" : "L01BA04",
        "display" : "Pemetrexed"
      },
      {
        "code" : "L01XX08",
        "display" : "Pentostatin"
      },
      {
        "code" : "L01XC13",
        "display" : "Pertuzumab"
      },
      {
        "code" : "L01AX02",
        "display" : "Pipobroman"
      },
      {
        "code" : "L01DB08",
        "display" : "Pirarubicin"
      },
      {
        "code" : "L01DB11",
        "display" : "Pixantron"
      },
      {
        "code" : "V03AX10",
        "display" : "Placebo"
      },
      {
        "code" : "L03AX16",
        "display" : "Plerixafor"
      },
      {
        "code" : "L01DC02",
        "display" : "Plicamycin"
      },
      {
        "code" : "L03AX08",
        "display" : "Poly ICLC"
      },
      {
        "code" : "L02AA02",
        "display" : "Polyestradiolphosphat"
      },
      {
        "code" : "L01XA05",
        "display" : "Polyplatillen"
      },
      {
        "code" : "L04AX06",
        "display" : "Pomalidomid"
      },
      {
        "code" : "L01XE24",
        "display" : "Ponatinib"
      },
      {
        "code" : "L01XD01",
        "display" : "Porfimer natrium"
      },
      {
        "code" : "L01BA05",
        "display" : "Pralatrexat"
      },
      {
        "code" : "D07AC18",
        "display" : "Prednicarbat"
      },
      {
        "code" : "L01AA08",
        "display" : "Prednimustin"
      },
      {
        "code" : "H02AB06",
        "display" : "Prednisolon"
      },
      {
        "code" : "H02AB07",
        "display" : "Prednison"
      },
      {
        "code" : "L01XB01",
        "display" : "Procarbazin"
      },
      {
        "code" : "D05AD",
        "display" : "Psoralene zur topischen Anwendung"
      },
      {
        "code" : "D05BA",
        "display" : "Psoralene zur systemischen Anwendung"
      },
      {
        "code" : "G03XC01",
        "display" : "Raloxifen"
      },
      {
        "code" : "L01BA03",
        "display" : "Raltitrexed"
      },
      {
        "code" : "L01XC21",
        "display" : "Ramucirumab"
      },
      {
        "code" : "L01AD07",
        "display" : "Ranimustin"
      },
      {
        "code" : "L01XE21",
        "display" : "Regorafenib"
      },
      {
        "code" : "L01XE42",
        "display" : "Ribociclib"
      },
      {
        "code" : "L04AC04",
        "display" : "Rilonacept"
      },
      {
        "code" : "M05BA07",
        "display" : "Risedronsäure"
      },
      {
        "code" : "L01XC02",
        "display" : "Rituximab"
      },
      {
        "code" : "L01XX39",
        "display" : "Romidepsin"
      },
      {
        "code" : "B02BX04",
        "display" : "Romiplostim"
      },
      {
        "code" : "L03AB15",
        "display" : "Ropeginterferon alfa-2b"
      },
      {
        "code" : "L01XE18",
        "display" : "Ruxolitinib"
      },
      {
        "code" : "L01XA04",
        "display" : "Satraplatin"
      },
      {
        "code" : "L01AD03",
        "display" : "Semustin"
      },
      {
        "code" : "L04AC11",
        "display" : "Siltuximab"
      },
      {
        "code" : "L04AA10",
        "display" : "Sirolimus"
      },
      {
        "code" : "H01CB01",
        "display" : "Somatostatin"
      },
      {
        "code" : "L01XE05",
        "display" : "Sorafenib"
      },
      {
        "code" : "L01AD04",
        "display" : "Streptozocin"
      },
      {
        "code" : "L01XE04",
        "display" : "Sunitinib"
      },
      {
        "code" : "L04AD02",
        "display" : "Tacrolimus"
      },
      {
        "code" : "L01XX51",
        "display" : "Talimogen laherparepvec"
      },
      {
        "code" : "L02BA01",
        "display" : "Tamoxifen"
      },
      {
        "code" : "L03AX11",
        "display" : "Tasonermin"
      },
      {
        "code" : "L01BC53",
        "display" : "Tegafur, Kombinationen"
      },
      {
        "code" : "L01BC63",
        "display" : "Tegafur und Uracil"
      },
      {
        "code" : "L01BC73",
        "display" : "Tegafur, Gimeracil und Oteracil"
      },
      {
        "code" : "L01XD05",
        "display" : "Temoporfin"
      },
      {
        "code" : "L01AX03",
        "display" : "Temozolomid"
      },
      {
        "code" : "L01XE09",
        "display" : "Temsirolimus"
      },
      {
        "code" : "L01CB02",
        "display" : "Teniposid"
      },
      {
        "code" : "L04AX02",
        "display" : "Thalidomid"
      },
      {
        "code" : "L01AC01",
        "display" : "Thiotepa"
      },
      {
        "code" : "L01XX18",
        "display" : "Tiazofurin"
      },
      {
        "code" : "M05BA05",
        "display" : "Tiludronsäure"
      },
      {
        "code" : "L01BB03",
        "display" : "Tioguanin"
      },
      {
        "code" : "L01XE34",
        "display" : "Tivozanib"
      },
      {
        "code" : "L04AC07",
        "display" : "Tocilizumab"
      },
      {
        "code" : "L01XX17",
        "display" : "Topotecan"
      },
      {
        "code" : "L02BA02",
        "display" : "Toremifen"
      },
      {
        "code" : "V10XA53",
        "display" : "Tositumomab/(131I)Iodtositumomab"
      },
      {
        "code" : "L01CX01",
        "display" : "Trabectedin"
      },
      {
        "code" : "L01XE25",
        "display" : "Trametinib"
      },
      {
        "code" : "L01XC03",
        "display" : "Trastuzumab"
      },
      {
        "code" : "L01XC14",
        "display" : "Trastuzumab emtansin"
      },
      {
        "code" : "L01AB02",
        "display" : "Treosulfan"
      },
      {
        "code" : "L01XX14",
        "display" : "Tretinoin"
      },
      {
        "code" : "L01AC02",
        "display" : "Triaziquon"
      },
      {
        "code" : "L01BC59",
        "display" : "Trifluridin, Kombinationen"
      },
      {
        "code" : "L02AE04",
        "display" : "Triptorelin"
      },
      {
        "code" : "L01AA07",
        "display" : "Trofosfamid"
      },
      {
        "code" : "L01AD08",
        "display" : "Uramustin"
      },
      {
        "code" : "N03AG01",
        "display" : "Valproinsäure"
      },
      {
        "code" : "L01DB09",
        "display" : "Valrubicin"
      },
      {
        "code" : "L01XE12",
        "display" : "Vandetanib"
      },
      {
        "code" : "L01XE15",
        "display" : "Vemurafenib"
      },
      {
        "code" : "L01XX52",
        "display" : "Venetoclax"
      },
      {
        "code" : "L01CA01",
        "display" : "Vinblastin"
      },
      {
        "code" : "L01CA02",
        "display" : "Vincristin"
      },
      {
        "code" : "L01CA03",
        "display" : "Vindesin"
      },
      {
        "code" : "L01CA05",
        "display" : "Vinflunin"
      },
      {
        "code" : "L01CA04",
        "display" : "Vinorelbin"
      },
      {
        "code" : "L01XX43",
        "display" : "Vismodegib"
      },
      {
        "code" : "L04AD03",
        "display" : "Voclosporin"
      },
      {
        "code" : "L01XX38",
        "display" : "Vorinostat"
      },
      {
        "code" : "L02BG05",
        "display" : "Vorozol"
      },
      {
        "code" : "L01XX53",
        "display" : "Vosaroxin"
      },
      {
        "code" : "M05BA08",
        "display" : "Zoledronsäure"
      },
      {
        "code" : "L01DB05",
        "display" : "Zorubicin"
      }]
    }]
  }
}

```
