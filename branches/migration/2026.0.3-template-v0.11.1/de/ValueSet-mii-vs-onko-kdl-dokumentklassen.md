# MII VS Onkologie KDL Dokumentklassen - MII IG Kerndatensatz-Modul Onkologie v2026.0.3

* [**Inhaltsverzeichnis**](toc.md)
* [**Artefaktübersicht**](artifacts.md)
* **MII VS Onkologie KDL Dokumentklassen**

## ValueSet: MII VS Onkologie KDL Dokumentklassen 

| | |
| :--- | :--- |
| *Offizielle URL*:https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/ValueSet/mii-vs-onko-kdl-dokumentklassen | *Version*:2026.0.3 |
| Active Stand: 2026-08-28 | *Maschinenlesbarer Name*:MII_VS_Onko_KDL_Dokumentklassen |

 
Kuratierte Auswahl der KDL-Dokumentklassen (KDL 2025) entlang des onkologischen Behandlungspfads (oBDS-Kapitel: Diagnose/Pathologie, Staging-Bildgebung, Tumorkonferenz, Operation, Strahlentherapie, Systemische Therapie, Verlauf/Labor, Tod, Studien, übergreifende Dokumente) als Begleitartefakt für DocumentReference.type. Teilmenge des KDL-Bindings im MII-KDS-Modul Dokument; deprecated-Klassen sind ausgeschlossen. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

Onkologische Versorgung erzeugt Dokumente quer durch alle Fachbereiche — Pathologiebefunde, Bildbefunde, Therapieprotokolle, Tumorkonferenzprotokolle, Registermeldungen. Auf der Dokumentenebene (z. B. `DocumentReference.type` beim Dokumentenaustausch) werden diese in Deutschland über die **Klinische Dokumentenklassen-Liste (KDL)** der DVMD klassifiziert (CodeSystem `http://dvmd.de/fhir/CodeSystem/kdl`, Stand: Version 2025).

Diese Seite ordnet die KDL-Dokumentklassen dem onkologischen Behandlungspfad (oBDS-Kapitel) zu und zeigt, welches MII-KDS-Modul die jeweiligen Inhalte strukturiert abbildet. Sie ergänzt die Seite **Kontext im Gesamtprojekt / Bezüge zu anderen Modulen** um die Dokumentenperspektive.

### Grundprinzip

Die KDL kennt **keine onkologiespezifischen Befundklassen** — außer der kleinen Unterklasse `SD1501` „Onkologische Dokumente" aus der Register-/Zentrumsperspektive. Alle behandlungsbezogenen Dokumente laufen über fachneutrale Klassen (Bildgebung nach Modalität, Pathologie nach Methode, Therapie nach Verfahren). Die onkologische Semantik entsteht erst durch:

1. den**Kontext**:`DocumentReference.context.practiceSetting`mit der Fachrichtung Onkologie (IHE-D-Terminologie), und
1. die**strukturierte Abbildung**über die Profile dieses Moduls bzw. der verknüpften KDS-Module.

### KDL-Klassen entlang des onkologischen Behandlungspfads

| | | |
| :--- | :--- | :--- |
| **Diagnose & Erstmeldung**(Kap. 5, 6) | `PT080102`Histologiebefund ·`PT260102`Zytologiebefund ·`SD150102`Meldebogen Krebsregister ·`SD150104`Tumorlokalisationsbogen | Onkologie (Diagnose Primärtumor, Histologie),**Pathologiebefundbericht** |
| **Molekulare Diagnostik**(Kap. 23) | `PT130102`Molekularpathologiebefund | Onkologie (Genetische Variante),**Molekulargenetischer Befundbericht (MolGen)** |
| **Staging & Bildgebung**(Kap. 8, 11) | `DG020103`CT ·`DG020107`MRT ·`DG020109`PET ·`DG020112`SPECT ·`DG020113`Szintigraphie ·`DG020110`Röntgen ·`DG020111`Sonographie ·`DG020114`Mammographie ·`DG020105`Endoskopie | Onkologie (TNM, Fernmetastasen),**Bildgebung**(Integration geplant für v2027) |
| **Tumorkonferenz**(Kap. 18/19) | `SD150103`Tumorkonferenzprotokoll ·`AD060103`/`AD060110`Konsilberichte | Onkologie (Tumorkonferenz),**Molekulares Tumorboard** |
| **Operation**(Kap. 13) | `OP150103`OP-Bericht ·`OP150106`OP-Protokoll ·`OP150104`OP-Bilddokumentation ·`AM010303`Operationsaufklärungsbogen | Onkologie (Operation),**Prozedur** |
| **Strahlentherapie**(Kap. 14) | `TH020101`Bestrahlungsplan ·`TH020102`Bestrahlungsprotokoll ·`TH020103`Bestrahlungsverordnung ·`TH020104`Radiojodtherapieprotokoll ·`TH020105`Therapieprotokoll mit Radionukliden | Onkologie (Strahlentherapie),**Prozedur** |
| **Systemische Therapie**(Kap. 16) | `TH130103`Chemotherapieprotokoll ·`TH130104`Hormontherapieprotokoll ·`TH130107`Medikationsplan ·`TH130102`Arzneiadministration ·`AM010304`Aufklärungsbogen Therapie | Onkologie (Systemische Therapie),**Medikation** |
| **Verlauf & Nachsorge**(Kap. 17) | `SD150101`Follow up-Bogen ·`LB120107`Laborbefund ·`LB120106`Hämatologisches Speziallabor | Onkologie (Verlauf),**Labor** |
| **Tod**(Kap. 20) | `AD020103`Todesbescheinigung | Onkologie (Tod), Vitalstatus (Angleichung geplant) |
| **Studien** | `SF190101`CRF-Bogen ·`SF190102`Einwilligung Studie ·`SF190106`Studienbericht | **Studie / Forschungsvorhaben** |
| **Übergreifend** | `AD010103`/`AD010104`Entlassungsbericht ·`SD150199`Sonstiger onkologischer Dokumentationsbogen (inkl. Psychoonkologische Basisdokumentation, Tumorverlaufsblatt) | — |

### Hinweise zur Verwendung

* **Tumorkonferenzprotokoll**: In der KDL 2025 ist der ältere Code `AD060106` (unter „Fallbesprechungen") als **deprecated** markiert — die Klasse wurde in die onkologische Unterklasse verschoben. Zu verwenden ist **`SD150103`**.
* **Onkologische Dokumente (`SD1501`)** umfasst genau fünf Klassen: Follow up-Bogen, Meldebogen Krebsregister, Tumorkonferenzprotokoll, Tumorlokalisationsbogen und die Auffangklasse `SD150199`.
* **Bekannte Lücken der KDL** aus onkologischer Sicht: kein onkologischer Bildbefund (nur Modalitätsklassen), keine Humangenetik-/Keimbahn-Befundklasse (nur Molekularpathologie), keine Obduktions-/Autopsieklasse. Für diese Fälle ist die jeweils nächstliegende fachneutrale Klasse plus `practiceSetting` zu verwenden.

### Verhältnis zum MII-KDS-Modul Dokument und zum ISiK-Dokumentenaustausch

Das Modul Onkologie definiert **bewusst keine eigenen DocumentReference-Profile**. Für die Dokumentenebene wird auf das **[MII-KDS-Modul Dokument](https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument)** verwiesen: Dessen Profil `MII_PR_Dokument_Dokument` (DocumentReference) sieht die KDL bereits als verpflichtenden Slice auf `type.coding` vor (daneben LOINC, SNOMED CT und IHE-XDS), bindet `context.practiceSetting` an ein Fachgebiets-ValueSet und `category` u. a. an die IHE-D-classCodes. Die auf dieser Seite empfohlenen KDL-Codes sind dort im Slice `type.coding:KDL` anzugeben; die Fachrichtung Onkologie gehört in `context.practiceSetting`.

Da das Dokument-Modul dieselben Achsen wie der ISiK-Dokumentenaustausch verwendet (KDL, IHE-D/XDS), bleiben onkologische Dokument-Instanzen damit auch **ISiK-kompatibel**, ohne dass dieses Modul von einem der beiden ableitet. Die strukturierte Abbildung der Inhalte erfolgt unabhängig davon über die Profile dieses Moduls.

### Begleitartefakt: kuratiertes ValueSet

Die auf dieser Seite hergeleitete Auswahl steht als ValueSet **`mii-vs-onko-kdl-dokumentklassen`** zur Verfügung (45 KDL-Klassen entlang der Cluster 1–10, KDL 2025). Es ist eine **Teilmenge** des KDL-Bindings im Dokument-Modul-Slice `type.coding:KDL` — es definiert keine eigenen Codes und schließt deprecated-Klassen aus (insbesondere `AD060106` Tumorkonferenzprotokoll, das in KDL 2025 durch `SD150103` ersetzt ist). Das ValueSet ist als Auswahlunterstützung und für Abfragen gedacht, nicht als verpflichtende Einschränkung: Instanzen dürfen weiterhin jede gültige KDL-Klasse verwenden.

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Beschreibung der obigen Tabelle(n)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



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
  "date" : "2026-08-28T06:49:57+00:00",
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
