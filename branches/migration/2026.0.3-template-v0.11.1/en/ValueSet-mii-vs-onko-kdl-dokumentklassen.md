# MII VS Onkologie KDL Dokumentklassen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MII VS Onkologie KDL Dokumentklassen**

## ValueSet: MII VS Onkologie KDL Dokumentklassen 

| | |
| :--- | :--- |
| *Official URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-kdl-dokumentklassen | *Version*:2026.0.3 |
| Active as of 2026-08-28 | *Computable Name*:MII_VS_Onko_KDL_Dokumentklassen |

 
Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

Oncological care produces documents across all specialties — pathology reports, imaging reports, therapy protocols, tumour board minutes, registry notifications. At the document level (e.g. `DocumentReference.type` in document exchange) these are classified in Germany via the **Klinische Dokumentenklassen-Liste (KDL)** of the DVMD (CodeSystem `http://dvmd.de/fhir/CodeSystem/kdl`, as of version 2025).

This page assigns the KDL document classes to the oncological treatment pathway (oBDS chapters) and shows which MII KDS module represents the respective content in a structured way. It complements the page **Context within the overall project / relations to other modules** with the document perspective.

### Basic principle

The KDL knows **no oncology-specific report classes** — apart from the small subclass `SD1501` "Onkologische Dokumente" (oncological documents) from the registry/centre perspective. All treatment-related documents run through specialty-neutral classes (imaging by modality, pathology by method, therapy by procedure). The oncological semantics only arise from:

1. the**context**:`DocumentReference.context.practiceSetting`with the specialty oncology (IHE-D terminology), and
1. the**structured representation**via the profiles of this module or of the linked KDS modules.

### KDL classes along the oncological treatment pathway

| | | |
| :--- | :--- | :--- |
| **Diagnosis & initial notification**(ch. 5, 6) | `PT080102`Histologiebefund ·`PT260102`Zytologiebefund ·`SD150102`Meldebogen Krebsregister ·`SD150104`Tumorlokalisationsbogen | Onkologie (Diagnose Primärtumor, Histologie),**Pathologiebefundbericht** |
| **Molecular diagnostics**(ch. 23) | `PT130102`Molekularpathologiebefund | Onkologie (Genetische Variante),**Molekulargenetischer Befundbericht (MolGen)** |
| **Staging & imaging**(ch. 8, 11) | `DG020103`CT ·`DG020107`MRT ·`DG020109`PET ·`DG020112`SPECT ·`DG020113`Szintigraphie ·`DG020110`Röntgen ·`DG020111`Sonographie ·`DG020114`Mammographie ·`DG020105`Endoskopie | Onkologie (TNM, Fernmetastasen),**Bildgebung**(integration planned for v2027) |
| **Tumour board**(ch. 18/19) | `SD150103`Tumorkonferenzprotokoll ·`AD060103`/`AD060110`Konsilberichte | Onkologie (Tumorkonferenz),**Molekulares Tumorboard** |
| **Surgery**(ch. 13) | `OP150103`OP-Bericht ·`OP150106`OP-Protokoll ·`OP150104`OP-Bilddokumentation ·`AM010303`Operationsaufklärungsbogen | Onkologie (Operation),**Prozedur** |
| **Radiotherapy**(ch. 14) | `TH020101`Bestrahlungsplan ·`TH020102`Bestrahlungsprotokoll ·`TH020103`Bestrahlungsverordnung ·`TH020104`Radiojodtherapieprotokoll ·`TH020105`Therapieprotokoll mit Radionukliden | Onkologie (Strahlentherapie),**Prozedur** |
| **Systemic therapy**(ch. 16) | `TH130103`Chemotherapieprotokoll ·`TH130104`Hormontherapieprotokoll ·`TH130107`Medikationsplan ·`TH130102`Arzneiadministration ·`AM010304`Aufklärungsbogen Therapie | Onkologie (Systemische Therapie),**Medikation** |
| **Course of disease & aftercare**(ch. 17) | `SD150101`Follow up-Bogen ·`LB120107`Laborbefund ·`LB120106`Hämatologisches Speziallabor | Onkologie (Verlauf),**Labor** |
| **Death**(ch. 20) | `AD020103`Todesbescheinigung | Onkologie (Tod), Vitalstatus (alignment planned) |
| **Studies** | `SF190101`CRF-Bogen ·`SF190102`Einwilligung Studie ·`SF190106`Studienbericht | **Studie / Forschungsvorhaben** |
| **Cross-cutting** | `AD010103`/`AD010104`Entlassungsbericht ·`SD150199`Sonstiger onkologischer Dokumentationsbogen (incl. Psychoonkologische Basisdokumentation, Tumorverlaufsblatt) | — |

### Notes on usage

* **Tumour board minutes**: In KDL 2025 the older code `AD060106` (under "Fallbesprechungen") is marked as **deprecated** — the class was moved into the oncological subclass. **`SD150103`** is to be used.
* **Oncological documents (`SD1501`)** comprises exactly five classes: Follow up-Bogen, Meldebogen Krebsregister, Tumorkonferenzprotokoll, Tumorlokalisationsbogen and the catch-all class `SD150199`.
* **Known gaps of the KDL** from an oncological point of view: no oncological imaging report (only modality classes), no human genetics/germline report class (only molecular pathology), no autopsy class. For these cases the closest specialty-neutral class plus `practiceSetting` is to be used.

### Relation to the MII KDS module Dokument and to the ISiK document exchange

The Onkologie module **deliberately defines no DocumentReference profiles of its own**. For the document level, reference is made to the **[MII KDS module Dokument](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument)**: its profile `MII_PR_Dokument_Dokument` (DocumentReference) already foresees the KDL as a mandatory slice on `type.coding` (alongside LOINC, SNOMED CT and IHE-XDS), binds `context.practiceSetting` to a specialty ValueSet and `category` to, among others, the IHE-D classCodes. The KDL codes recommended on this page are to be given there in the slice `type.coding:KDL`; the specialty oncology belongs in `context.practiceSetting`.

Since the Dokument module uses the same axes as the ISiK document exchange (KDL, IHE-D/XDS), oncological document instances thereby also remain **ISiK-compatible**, without this module deriving from either of the two. The structured representation of the content takes place independently of this via the profiles of this module.

### Accompanying artefact: curated ValueSet

The selection derived on this page is available as the ValueSet **`mii-vs-onko-kdl-dokumentklassen`** (45 KDL classes along clusters 1–10, KDL 2025). It is a **subset** of the KDL binding in the Dokument module slice `type.coding:KDL` — it defines no codes of its own and excludes deprecated classes (in particular `AD060106` Tumorkonferenzprotokoll, which in KDL 2025 is replaced by `SD150103`). The ValueSet is intended as selection support and for queries, not as a mandatory restriction: instances may still use any valid KDL class.

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "mii-vs-onko-kdl-dokumentklassen",
  "meta" : {
    "profile" : ["http://hl7.org/fhir/StructureDefinition/shareablevalueset"]
  },
  "url" : "https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-kdl-dokumentklassen",
  "version" : "2026.0.3",
  "name" : "MII_VS_Onko_KDL_Dokumentklassen",
  "title" : "MII VS Onkologie KDL Dokumentklassen",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-08-28T07:24:31+00:00",
  "publisher" : "Medizininformatik Initiative",
  "contact" : [{
    "name" : "Medizininformatik Initiative",
    "telecom" : [{
      "system" : "url",
      "value" : "https://www.medizininformatik-initiative.de/"
    }]
  }],
  "description" : "Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "DE",
      "display" : "Germany"
    }]
  }],
  "compose" : {
    "include" : [{
      "system" : "http://dvmd.de/fhir/CodeSystem/kdl",
      "concept" : [{
        "code" : "PT080102",
        "display" : "Histologiebefund"
      },
      {
        "code" : "PT260102",
        "display" : "Zytologiebefund"
      },
      {
        "code" : "PT130102",
        "display" : "Molekularpathologiebefund"
      },
      {
        "code" : "SD150102",
        "display" : "Meldebogen Krebsregister"
      },
      {
        "code" : "SD150104",
        "display" : "Tumorlokalisationsbogen"
      },
      {
        "code" : "DG020103",
        "display" : "CT-Befund"
      },
      {
        "code" : "DG020105",
        "display" : "Endoskopiebefund"
      },
      {
        "code" : "DG020107",
        "display" : "MRT-Befund"
      },
      {
        "code" : "DG020109",
        "display" : "PET-Befund"
      },
      {
        "code" : "DG020110",
        "display" : "Röntgenbefund"
      },
      {
        "code" : "DG020111",
        "display" : "Sonographiebefund"
      },
      {
        "code" : "DG020112",
        "display" : "SPECT-Befund"
      },
      {
        "code" : "DG020113",
        "display" : "Szintigraphiebefund"
      },
      {
        "code" : "DG020114",
        "display" : "Mammographiebefund"
      },
      {
        "code" : "DG020199",
        "display" : "Sonstige Dokumentation bildgebende Diagnostik"
      },
      {
        "code" : "SD150103",
        "display" : "Tumorkonferenzprotokoll"
      },
      {
        "code" : "AD060103",
        "display" : "Konsilbericht intern"
      },
      {
        "code" : "AD060104",
        "display" : "Konsilbericht extern"
      },
      {
        "code" : "AD060110",
        "display" : "Konsilbericht"
      },
      {
        "code" : "OP150103",
        "display" : "OP-Bericht"
      },
      {
        "code" : "OP150104",
        "display" : "OP-Bilddokumentation"
      },
      {
        "code" : "OP150106",
        "display" : "OP-Protokoll"
      },
      {
        "code" : "AM010303",
        "display" : "Operationsaufklärungsbogen"
      },
      {
        "code" : "TH020101",
        "display" : "Bestrahlungsplan"
      },
      {
        "code" : "TH020102",
        "display" : "Bestrahlungsprotokoll"
      },
      {
        "code" : "TH020103",
        "display" : "Bestrahlungsverordnung"
      },
      {
        "code" : "TH020104",
        "display" : "Radiojodtherapieprotokoll"
      },
      {
        "code" : "TH020105",
        "display" : "Therapieprotokoll mit Radionukliden"
      },
      {
        "code" : "TH130102",
        "display" : "Arzneiadministration"
      },
      {
        "code" : "TH130103",
        "display" : "Chemotherapieprotokoll"
      },
      {
        "code" : "TH130104",
        "display" : "Hormontherapieprotokoll"
      },
      {
        "code" : "TH130107",
        "display" : "Medikationsplan"
      },
      {
        "code" : "AM010304",
        "display" : "Aufklärungsbogen Therapie"
      },
      {
        "code" : "SD150101",
        "display" : "Follow up-Bogen"
      },
      {
        "code" : "LB120102",
        "display" : "Laborbefund extern"
      },
      {
        "code" : "LB120103",
        "display" : "Laborbefund intern"
      },
      {
        "code" : "LB120106",
        "display" : "Hämatologisches Speziallabor"
      },
      {
        "code" : "LB120107",
        "display" : "Laborbefund"
      },
      {
        "code" : "AD020103",
        "display" : "Todesbescheinigung"
      },
      {
        "code" : "SF190101",
        "display" : "CRF-Bogen"
      },
      {
        "code" : "SF190102",
        "display" : "Einwilligung Studie"
      },
      {
        "code" : "SF190106",
        "display" : "Studienbericht"
      },
      {
        "code" : "AD010103",
        "display" : "Entlassungsbericht intern"
      },
      {
        "code" : "AD010104",
        "display" : "Entlassungsbericht extern"
      },
      {
        "code" : "SD150199",
        "display" : "Sonstiger onkologischer Dokumentationsbogen"
      }]
    }]
  }
}

```
