# MII VS Onkologie Systemische Therapie Substanzen ATC 2024 - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie Systemische Therapie Substanzen ATC 2024**

## ValueSet: MII VS Onkologie Systemische Therapie Substanzen ATC 2024 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024 | *Version*:2026.0.3 |
| Active Stand: 2026-09-01 | *Maschinenlesbarer Name*:MII_VS_Onko_Systemische_Therapie_Substanzen_2024 |

 
ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2024. Für historische Datenvalidierung. 

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
  "id" : "mii-vs-onko-systemische-therapie-substanzen-2024",
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
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-systemische-therapie-substanzen-2024",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_Systemische_Therapie_Substanzen_2024",
  "title" : "MII VS Onkologie Systemische Therapie Substanzen ATC 2024",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-01T19:43:49+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "ATC-Codes für Substanzen der systemischen Therapie, validiert gegen ATC-DE Version 2024. Für historische Datenvalidierung.",
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
      "version" : "2024",
      "concept" : [{
        "code" : "L02BX01",
        "display" : "Abarelix"
      },
      {
        "code" : "L04AA24",
        "display" : "Abatacept"
      },
      {
        "code" : "L01EF03",
        "display" : "Abemaciclib"
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
        "code" : "L01EL02",
        "display" : "Acalabrutinib"
      },
      {
        "code" : "L01DB04",
        "display" : "Aclarubicin"
      },
      {
        "code" : "L01XX77",
        "display" : "Adagrasib"
      },
      {
        "code" : "L04AB04",
        "display" : "Adalimumab"
      },
      {
        "code" : "L01EB03",
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
        "code" : "L01ED03",
        "display" : "Alectinib"
      },
      {
        "code" : "L04AA15",
        "display" : "Alefacept"
      },
      {
        "code" : "L04AG06",
        "display" : "Alemtuzumab"
      },
      {
        "code" : "M05BA04",
        "display" : "Alendronsäure"
      },
      {
        "code" : "L01XF02",
        "display" : "Alitretinoin"
      },
      {
        "code" : "L01EM03",
        "display" : "Alpelisib"
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
        "code" : "L01FX18",
        "display" : "Amivantamab"
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
        "code" : "L02BB05",
        "display" : "Apalutamid"
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
        "code" : "L01EA06",
        "display" : "Asciminib"
      },
      {
        "code" : "L01XX02",
        "display" : "Asparaginase"
      },
      {
        "code" : "L01FF05",
        "display" : "Atezolizumab"
      },
      {
        "code" : "L01EX18",
        "display" : "Avapritinib"
      },
      {
        "code" : "L01FF04",
        "display" : "Avelumab"
      },
      {
        "code" : "L01XL03",
        "display" : "Axicabtagen ciloleucel"
      },
      {
        "code" : "L01EK01",
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
        "code" : "L01FX15",
        "display" : "Belantamab mafodotin"
      },
      {
        "code" : "L04AA28",
        "display" : "Belatacept"
      },
      {
        "code" : "L04AG04",
        "display" : "Belimumab"
      },
      {
        "code" : "L01XH04",
        "display" : "Belinostat"
      },
      {
        "code" : "L01XX74",
        "display" : "Belzutifan"
      },
      {
        "code" : "L01AA09",
        "display" : "Bendamustin"
      },
      {
        "code" : "L01FG01",
        "display" : "Bevacizumab"
      },
      {
        "code" : "L01XF03",
        "display" : "Bexaroten"
      },
      {
        "code" : "L02BB03",
        "display" : "Bicalutamid"
      },
      {
        "code" : "L01EE03",
        "display" : "Binimetinib"
      },
      {
        "code" : "L01DC01",
        "display" : "Bleomycin"
      },
      {
        "code" : "L01FX07",
        "display" : "Blinatumomab"
      },
      {
        "code" : "L01XG01",
        "display" : "Bortezomib"
      },
      {
        "code" : "L01EA04",
        "display" : "Bosutinib"
      },
      {
        "code" : "L01FX05",
        "display" : "Brentuximab vedotin"
      },
      {
        "code" : "L01XL06",
        "display" : "Brexucabtagen autoleucel"
      },
      {
        "code" : "L04AC09",
        "display" : "Briakinumab"
      },
      {
        "code" : "L01ED04",
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
        "code" : "L01EX07",
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
        "code" : "L01EX17",
        "display" : "Capmatinib"
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
        "code" : "L01XG02",
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
        "code" : "L01FX03",
        "display" : "Catumaxomab"
      },
      {
        "code" : "L01FF06",
        "display" : "Cemiplimab"
      },
      {
        "code" : "L01ED02",
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
        "code" : "L01FE01",
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
        "code" : "L01XL05",
        "display" : "Ciltacabtagen autoleucel"
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
        "code" : "L01EE02",
        "display" : "Cobimetinib"
      },
      {
        "code" : "L01EM02",
        "display" : "Copanlisib"
      },
      {
        "code" : "L01ED01",
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
        "code" : "L01EC02",
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
        "code" : "L01EB07",
        "display" : "Dacomitinib"
      },
      {
        "code" : "L01DA01",
        "display" : "Dactinomycin"
      },
      {
        "code" : "L01FC01",
        "display" : "Daratumumab"
      },
      {
        "code" : "B03XA02",
        "display" : "Darbepoetin alfa"
      },
      {
        "code" : "L02BB06",
        "display" : "Darolutamid"
      },
      {
        "code" : "L01EA02",
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
        "code" : "L01FX06",
        "display" : "Dinutuximab beta"
      },
      {
        "code" : "L01CD02",
        "display" : "Docetaxel"
      },
      {
        "code" : "L01FF07",
        "display" : "Dostarlimab"
      },
      {
        "code" : "L01DB01",
        "display" : "Doxorubicin"
      },
      {
        "code" : "L01FF03",
        "display" : "Durvalumab"
      },
      {
        "code" : "G04CB02",
        "display" : "Dutasterid"
      },
      {
        "code" : "L01EM04",
        "display" : "Duvelisib"
      },
      {
        "code" : "L04AJ01",
        "display" : "Eculizumab"
      },
      {
        "code" : "L01FX01",
        "display" : "Edrecolomab"
      },
      {
        "code" : "L04AG02",
        "display" : "Efalizumab"
      },
      {
        "code" : "L01XD06",
        "display" : "Efaproxiral"
      },
      {
        "code" : "L02BA04",
        "display" : "Elacestrant"
      },
      {
        "code" : "L01FX08",
        "display" : "Elotuzumab"
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
        "code" : "L01EC03",
        "display" : "Encorafenib"
      },
      {
        "code" : "L01FX13",
        "display" : "Enfortumab vedotin"
      },
      {
        "code" : "L01EX14",
        "display" : "Entrectinib"
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
        "code" : "L01EN01",
        "display" : "Erdafitinib"
      },
      {
        "code" : "L01XX41",
        "display" : "Eribulin"
      },
      {
        "code" : "L01EB02",
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
        "code" : "L01EG02",
        "display" : "Everolimus"
      },
      {
        "code" : "L04AH02",
        "display" : "Everolimus"
      },
      {
        "code" : "L02BG06",
        "display" : "Exemestan"
      },
      {
        "code" : "L01EJ02",
        "display" : "Fedratinib"
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
        "code" : "L04AE01",
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
        "code" : "B02BX09",
        "display" : "Fostamatinib"
      },
      {
        "code" : "L01AD05",
        "display" : "Fotemustin"
      },
      {
        "code" : "L01EK04",
        "display" : "Fruquintinib"
      },
      {
        "code" : "L02BA03",
        "display" : "Fulvestrant"
      },
      {
        "code" : "L01EN04",
        "display" : "Futibatinib"
      },
      {
        "code" : "L01EB01",
        "display" : "Gefitinib"
      },
      {
        "code" : "L01BC05",
        "display" : "Gemcitabin"
      },
      {
        "code" : "L01FX02",
        "display" : "Gemtuzumab ozogamicin"
      },
      {
        "code" : "L02AB03",
        "display" : "Gestonoron"
      },
      {
        "code" : "L01EX13",
        "display" : "Gilteritinib"
      },
      {
        "code" : "L01XJ03",
        "display" : "Glasdegib"
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
        "code" : "L01EL01",
        "display" : "Ibrutinib"
      },
      {
        "code" : "L01DB06",
        "display" : "Idarubicin"
      },
      {
        "code" : "L01XL07",
        "display" : "Idecabtagen vicleucel"
      },
      {
        "code" : "L01EM01",
        "display" : "Idelalisib"
      },
      {
        "code" : "L01AA06",
        "display" : "Ifosfamid"
      },
      {
        "code" : "L01EA01",
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
        "code" : "L01FB01",
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
        "code" : "L01FX04",
        "display" : "Ipilimumab"
      },
      {
        "code" : "L01CE02",
        "display" : "Irinotecan"
      },
      {
        "code" : "L01FC02",
        "display" : "Isatuximab"
      },
      {
        "code" : "L01XX62",
        "display" : "Ivosidenib"
      },
      {
        "code" : "L01DC04",
        "display" : "Ixabepilon"
      },
      {
        "code" : "L01XG03",
        "display" : "Ixazomib"
      },
      {
        "code" : "H02CA03",
        "display" : "Ketoconazol"
      },
      {
        "code" : "H01CB03",
        "display" : "Lanreotid"
      },
      {
        "code" : "L01EH01",
        "display" : "Lapatinib"
      },
      {
        "code" : "L01EX12",
        "display" : "Larotrectinib"
      },
      {
        "code" : "L01EB09",
        "display" : "Lazertinib"
      },
      {
        "code" : "L04AK01",
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
        "code" : "L01EX08",
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
        "code" : "L01XL08",
        "display" : "Lisocabtagen maraleucel"
      },
      {
        "code" : "L01AD02",
        "display" : "Lomustin"
      },
      {
        "code" : "A16AX20",
        "display" : "Lonafarnib"
      },
      {
        "code" : "L01XX07",
        "display" : "Lonidamin"
      },
      {
        "code" : "L01ED05",
        "display" : "Lorlatinib"
      },
      {
        "code" : "L01XX69",
        "display" : "Lurbinectedin"
      },
      {
        "code" : "B03XA06",
        "display" : "Luspatercept"
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
        "code" : "L01FD06",
        "display" : "Margetuximab"
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
        "code" : "L01EX10",
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
        "code" : "L01EB10",
        "display" : "Mobocertinib"
      },
      {
        "code" : "L01FX09",
        "display" : "Mogamulizumab"
      },
      {
        "code" : "L03AA03",
        "display" : "Molgramostim"
      },
      {
        "code" : "L01FX24",
        "display" : "Teclistamab"
      },
      {
        "code" : "L01FX25",
        "display" : "Mosunetuzumab"
      },
      {
        "code" : "L01FB02",
        "display" : "Moxetumomab pasudotox"
      },
      {
        "code" : "L04AG01",
        "display" : "Muromonab-CD3"
      },
      {
        "code" : "L04AA06",
        "display" : "Mycophenolsäure"
      },
      {
        "code" : "L04AG03",
        "display" : "Natalizumab"
      },
      {
        "code" : "V03AF10",
        "display" : "Natriumlevofolinat"
      },
      {
        "code" : "L01FE03",
        "display" : "Necitumumab"
      },
      {
        "code" : "L01BB07",
        "display" : "Nelarabin"
      },
      {
        "code" : "L01EH02",
        "display" : "Neratinib"
      },
      {
        "code" : "L01EA03",
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
        "code" : "L01EX09",
        "display" : "Nintedanib"
      },
      {
        "code" : "L01XK02",
        "display" : "Niraparib"
      },
      {
        "code" : "L01FF01",
        "display" : "Nivolumab"
      },
      {
        "code" : "L01FY02",
        "display" : "Nivolumab und Relatlimab"
      },
      {
        "code" : "L01FA03",
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
        "code" : "L01FA02",
        "display" : "Ofatumumab"
      },
      {
        "code" : "L04AG12",
        "display" : "Ofatumumab"
      },
      {
        "code" : "L01XK01",
        "display" : "Olaparib"
      },
      {
        "code" : "L01FX10",
        "display" : "Olaratumab"
      },
      {
        "code" : "L01XX40",
        "display" : "Omacetaxinmepesuccinat"
      },
      {
        "code" : "L01FX16",
        "display" : "Oportuzumab monatox"
      },
      {
        "code" : "L03AC02",
        "display" : "Oprelvekin"
      },
      {
        "code" : "L01EB04",
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
        "code" : "L01EJ03",
        "display" : "Pacritinib"
      },
      {
        "code" : "L01EF01",
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
        "code" : "L01FE02",
        "display" : "Panitumumab"
      },
      {
        "code" : "L01XH03",
        "display" : "Panobinostat"
      },
      {
        "code" : "L01EX03",
        "display" : "Pazopanib"
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
        "code" : "L01FF02",
        "display" : "Pembrolizumab"
      },
      {
        "code" : "L01BA04",
        "display" : "Pemetrexed"
      },
      {
        "code" : "L01EN02",
        "display" : "Pemigatinib"
      },
      {
        "code" : "L01XX08",
        "display" : "Pentostatin"
      },
      {
        "code" : "L01FD02",
        "display" : "Pertuzumab"
      },
      {
        "code" : "L01FY01",
        "display" : "Pertuzumab und Trastuzumab"
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
        "code" : "L01FX14",
        "display" : "Polatuzumab vedotin"
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
        "code" : "L01EA05",
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
        "code" : "L01EX23",
        "display" : "Pralsetinib"
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
        "code" : "L01EX11",
        "display" : "Quizartinib"
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
        "code" : "L01FG02",
        "display" : "Ramucirumab"
      },
      {
        "code" : "L01AD07",
        "display" : "Ranimustin"
      },
      {
        "code" : "L01EX05",
        "display" : "Regorafenib"
      },
      {
        "code" : "L02BX04",
        "display" : "Relugolix"
      },
      {
        "code" : "L01FF10",
        "display" : "Retifanlimab"
      },
      {
        "code" : "L01EF02",
        "display" : "Ribociclib"
      },
      {
        "code" : "L04AC04",
        "display" : "Rilonacept"
      },
      {
        "code" : "L01EX19",
        "display" : "Ripretinib"
      },
      {
        "code" : "M05BA07",
        "display" : "Risedronsäure"
      },
      {
        "code" : "L01FA01",
        "display" : "Rituximab"
      },
      {
        "code" : "L01XH02",
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
        "code" : "L01XK03",
        "display" : "Rucaparib"
      },
      {
        "code" : "L01EJ01",
        "display" : "Ruxolitinib"
      },
      {
        "code" : "L01FX19",
        "display" : "Sabatolimab"
      },
      {
        "code" : "L01FX17",
        "display" : "Sacituzumab govitecan"
      },
      {
        "code" : "L01XA04",
        "display" : "Satraplatin"
      },
      {
        "code" : "L01XX66",
        "display" : "Selinexor"
      },
      {
        "code" : "L01EX22",
        "display" : "Selpercatinib"
      },
      {
        "code" : "L01EE04",
        "display" : "Selumetinib"
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
        "code" : "L04AH01",
        "display" : "Sirolimus"
      },
      {
        "code" : "L01XL01",
        "display" : "Sitimagen ceradenovec"
      },
      {
        "code" : "H01CB01",
        "display" : "Somatostatin"
      },
      {
        "code" : "L01XJ02",
        "display" : "Sonidegib"
      },
      {
        "code" : "L01EX02",
        "display" : "Sorafenib"
      },
      {
        "code" : "L01XX73",
        "display" : "Sotorasib"
      },
      {
        "code" : "L01AD04",
        "display" : "Streptozocin"
      },
      {
        "code" : "L01FF11",
        "display" : "Sugemalimab"
      },
      {
        "code" : "L01EX01",
        "display" : "Sunitinib"
      },
      {
        "code" : "L04AD02",
        "display" : "Tacrolimus"
      },
      {
        "code" : "L01FX12",
        "display" : "Tafasitamab"
      },
      {
        "code" : "L01XX67",
        "display" : "Tagraxofusp"
      },
      {
        "code" : "L01XK04",
        "display" : "Talazoparib"
      },
      {
        "code" : "L01XL02",
        "display" : "Talimogen laherparepvec"
      },
      {
        "code" : "L01FX29",
        "display" : "Talquetamab"
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
        "code" : "L01XX72",
        "display" : "Tazemetostat"
      },
      {
        "code" : "L01XX75",
        "display" : "Tebentafusp"
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
        "code" : "L01EG01",
        "display" : "Temsirolimus"
      },
      {
        "code" : "L01CB02",
        "display" : "Teniposid"
      },
      {
        "code" : "L01EX21",
        "display" : "Tepotinib"
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
        "code" : "L01XL04",
        "display" : "Tisagenlecleucel"
      },
      {
        "code" : "L01FF09",
        "display" : "Tislelizumab"
      },
      {
        "code" : "L01EK03",
        "display" : "Tivozanib"
      },
      {
        "code" : "L04AC07",
        "display" : "Tocilizumab"
      },
      {
        "code" : "L01CE01",
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
        "code" : "L01EE01",
        "display" : "Trametinib"
      },
      {
        "code" : "L01FD01",
        "display" : "Trastuzumab"
      },
      {
        "code" : "L01FD04",
        "display" : "Trastuzumab deruxtecan"
      },
      {
        "code" : "L01FD05",
        "display" : "Trastuzumab duocarmazin"
      },
      {
        "code" : "L01FD03",
        "display" : "Trastuzumab emtansin"
      },
      {
        "code" : "L01FX20",
        "display" : "Tremelimumab"
      },
      {
        "code" : "L01AB02",
        "display" : "Treosulfan"
      },
      {
        "code" : "L01XF01",
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
        "code" : "L01EH03",
        "display" : "Tucatinib"
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
        "code" : "L01EX04",
        "display" : "Vandetanib"
      },
      {
        "code" : "L01XK05",
        "display" : "Veliparib"
      },
      {
        "code" : "L01EC01",
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
        "code" : "L01XJ01",
        "display" : "Vismodegib"
      },
      {
        "code" : "L04AD03",
        "display" : "Voclosporin"
      },
      {
        "code" : "L01XH01",
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
        "code" : "L01EL03",
        "display" : "Zanubrutinib"
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
