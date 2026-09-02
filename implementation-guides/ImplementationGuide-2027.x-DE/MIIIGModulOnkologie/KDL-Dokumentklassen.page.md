## {{page-title}}

Onkologische Versorgung erzeugt Dokumente quer durch alle Fachbereiche — Pathologiebefunde,
Bildbefunde, Therapieprotokolle, Tumorkonferenzprotokolle, Registermeldungen. Auf der
Dokumentenebene (z. B. `DocumentReference.type` beim Dokumentenaustausch) werden diese in
Deutschland über die **Klinische Dokumentenklassen-Liste (KDL)** der DVMD klassifiziert
(CodeSystem `http://dvmd.de/fhir/CodeSystem/kdl`, Stand: Version 2025).

Diese Seite ordnet die KDL-Dokumentklassen dem onkologischen Behandlungspfad (oBDS-Kapitel) zu
und zeigt, welches MII-KDS-Modul die jeweiligen Inhalte strukturiert abbildet. Sie ergänzt die
Seite *Kontext im Gesamtprojekt / Bezüge zu anderen Modulen* um die Dokumentenperspektive.

### Grundprinzip

Die KDL kennt **keine onkologiespezifischen Befundklassen** — außer der kleinen Unterklasse
`SD1501` „Onkologische Dokumente" aus der Register-/Zentrumsperspektive. Alle
behandlungsbezogenen Dokumente laufen über fachneutrale Klassen (Bildgebung nach Modalität,
Pathologie nach Methode, Therapie nach Verfahren). Die onkologische Semantik entsteht erst durch:

1. den **Kontext**: `DocumentReference.context.practiceSetting` mit der Fachrichtung Onkologie
   (IHE-D-Terminologie), und
2. die **strukturierte Abbildung** über die Profile dieses Moduls bzw. der verknüpften KDS-Module.

### KDL-Klassen entlang des onkologischen Behandlungspfads

| Behandlungsphase (oBDS) | KDL-Dokumentklassen | Strukturierte Abbildung (MII-Modul) |
|---|---|---|
| **Diagnose & Erstmeldung** (Kap. 5, 6) | `PT080102` Histologiebefund · `PT260102` Zytologiebefund · `SD150102` Meldebogen Krebsregister · `SD150104` Tumorlokalisationsbogen | Onkologie (Diagnose Primärtumor, Histologie), **Pathologiebefundbericht** |
| **Molekulare Diagnostik** (Kap. 23) | `PT130102` Molekularpathologiebefund | Onkologie (Genetische Variante), **Molekulargenetischer Befundbericht (MolGen)** |
| **Staging & Bildgebung** (Kap. 8, 11) | `DG020103` CT · `DG020107` MRT · `DG020109` PET · `DG020112` SPECT · `DG020113` Szintigraphie · `DG020110` Röntgen · `DG020111` Sonographie · `DG020114` Mammographie · `DG020105` Endoskopie | Onkologie (TNM, Fernmetastasen), **Bildgebung** (Integration geplant für v2027) |
| **Tumorkonferenz** (Kap. 18/19) | `SD150103` Tumorkonferenzprotokoll · `AD060103`/`AD060110` Konsilberichte | Onkologie (Tumorkonferenz), **Molekulares Tumorboard** |
| **Operation** (Kap. 13) | `OP150103` OP-Bericht · `OP150106` OP-Protokoll · `OP150104` OP-Bilddokumentation · `AM010303` Operationsaufklärungsbogen | Onkologie (Operation), **Prozedur** |
| **Strahlentherapie** (Kap. 14) | `TH020101` Bestrahlungsplan · `TH020102` Bestrahlungsprotokoll · `TH020103` Bestrahlungsverordnung · `TH020104` Radiojodtherapieprotokoll · `TH020105` Therapieprotokoll mit Radionukliden | Onkologie (Strahlentherapie), **Prozedur** |
| **Systemische Therapie** (Kap. 16) | `TH130103` Chemotherapieprotokoll · `TH130104` Hormontherapieprotokoll · `TH130107` Medikationsplan · `TH130102` Arzneiadministration · `AM010304` Aufklärungsbogen Therapie | Onkologie (Systemische Therapie), **Medikation** |
| **Verlauf & Nachsorge** (Kap. 17) | `SD150101` Follow up-Bogen · `LB120107` Laborbefund · `LB120106` Hämatologisches Speziallabor | Onkologie (Verlauf), **Labor** |
| **Tod** (Kap. 20) | `AD020103` Todesbescheinigung | Onkologie (Tod), Vitalstatus (Angleichung geplant) |
| **Studien** | `SF190101` CRF-Bogen · `SF190102` Einwilligung Studie · `SF190106` Studienbericht | **Studie / Forschungsvorhaben** |
| **Übergreifend** | `AD010103`/`AD010104` Entlassungsbericht · `SD150199` Sonstiger onkologischer Dokumentationsbogen (inkl. Psychoonkologische Basisdokumentation, Tumorverlaufsblatt) | — |

### Hinweise zur Verwendung

- **Tumorkonferenzprotokoll**: In der KDL 2025 ist der ältere Code `AD060106` (unter
  „Fallbesprechungen") als *deprecated* markiert — die Klasse wurde in die onkologische
  Unterklasse verschoben. Zu verwenden ist **`SD150103`**.
- **Onkologische Dokumente (`SD1501`)** umfasst genau fünf Klassen: Follow up-Bogen, Meldebogen
  Krebsregister, Tumorkonferenzprotokoll, Tumorlokalisationsbogen und die Auffangklasse
  `SD150199`.
- **Bekannte Lücken der KDL** aus onkologischer Sicht: kein onkologischer Bildbefund (nur
  Modalitätsklassen), keine Humangenetik-/Keimbahn-Befundklasse (nur Molekularpathologie),
  keine Obduktions-/Autopsieklasse. Für diese Fälle ist die jeweils nächstliegende
  fachneutrale Klasse plus `practiceSetting` zu verwenden.

### Verhältnis zum MII-KDS-Modul Dokument und zum ISiK-Dokumentenaustausch

Das Modul Onkologie definiert **bewusst keine eigenen DocumentReference-Profile**. Für die
Dokumentenebene wird auf das **[MII-KDS-Modul Dokument][kds-dok]** verwiesen: Dessen Profil
`MII_PR_Dokument_Dokument` (DocumentReference) sieht die KDL bereits als verpflichtenden Slice auf
`type.coding` vor (daneben LOINC, SNOMED CT und IHE-XDS), bindet `context.practiceSetting` an ein
Fachgebiets-ValueSet und `category` u. a. an die IHE-D-classCodes. Die auf dieser Seite
empfohlenen KDL-Codes sind dort im Slice `type.coding:KDL` anzugeben; die Fachrichtung Onkologie
gehört in `context.practiceSetting`.

Da das Dokument-Modul dieselben Achsen wie der ISiK-Dokumentenaustausch verwendet (KDL, IHE-D/XDS),
bleiben onkologische Dokument-Instanzen damit auch **ISiK-kompatibel**, ohne dass dieses Modul von
einem der beiden ableitet. Die strukturierte Abbildung der Inhalte erfolgt unabhängig davon über
die Profile dieses Moduls.

[kds-dok]: https://simplifier.net/packages/de.medizininformatikinitiative.kerndatensatz.dokument "MII KDS-Modul Dokument"

### Begleitartefakt: kuratiertes ValueSet

Die auf dieser Seite hergeleitete Auswahl steht als ValueSet
**`mii-vs-onko-kdl-dokumentklassen`** zur Verfügung (45 KDL-Klassen entlang der
Cluster 1–10, KDL 2025). Es ist eine **Teilmenge** des KDL-Bindings im
Dokument-Modul-Slice `type.coding:KDL` — es definiert keine eigenen Codes und
schließt deprecated-Klassen aus (insbesondere `AD060106` Tumorkonferenzprotokoll,
das in KDL 2025 durch `SD150103` ersetzt ist). Das ValueSet ist als
Auswahlunterstützung und für Abfragen gedacht, nicht als verpflichtende
Einschränkung: Instanzen dürfen weiterhin jede gültige KDL-Klasse verwenden.
