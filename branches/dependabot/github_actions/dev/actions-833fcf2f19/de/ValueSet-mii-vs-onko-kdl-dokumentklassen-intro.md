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

### Zuordnung zu IHE-XDS, SNOMED CT und LOINC

Für den dokumentenbasierten Austausch (XDS-Infrastrukturen) und die internationale
Interoperabilität sind die 45 KDL-Klassen den entsprechenden Dokumenttyp-Terminologien
zugeordnet. Legende: ≡ bedeutungsgleich, ⊃ Zielkonzept weiter gefasst, ⊂ Zielkonzept
enger gefasst, — keine vertretbare Zuordnung.

{:.bg-info}
**Hinweise zur Herkunft und Verbindlichkeit:** Die **IHE-XDS-Spalte** ist amtlich —
sie stammt per `$translate` aus der offiziellen DVMD-ConceptMap
(`kdl-ihe-typecode`, KDL→IHE-D-XDS-typeCode) auf dem MII-Terminologieserver.
Eine offizielle KDL→SNOMED-CT- oder KDL→LOINC-Zuordnung existiert dagegen **nicht**;
die Spalten SNOMED CT (Teilbaum `229059009 |Report|` bzw. `419891008 |Record artifact|`)
und LOINC (Document Ontology) sind eine **projektseitige, konservative Kuratierung**
(Stand 2026-08-28, alle Zielcodes serververifiziert und aktiv). Für Vollständigkeit
und Korrektheit wird keine Gewähr übernommen; vor einer Nutzung in Produktivsystemen
ist eine eigenverantwortliche fachliche Prüfung erforderlich. Deutsche Register- und
Studienformulare (z.B. Meldebogen Krebsregister, CRF-Bogen) haben erwartungsgemäß
kein internationales Äquivalent und bleiben KDL-only.


**Cluster 1 — Diagnose & Erstmeldung (oBDS 5, 6)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `PT080102` | Histologiebefund | `PATH` Pathologiebefundberichte (⊃) | `371528001` Pathology report (⊃) | `11526-1` Pathology study (⊃) |
| `PT260102` | Zytologiebefund | `PATH` Pathologiebefundberichte (⊃) | `726738003` Cytology report (≡) | `11526-1` Pathology study (⊃) |
| `PT130102` | Molekularpathologiebefund | `PATH` Pathologiebefundberichte (⊃) | `371528001` Pathology report (⊃) | `51969-4` Genetic analysis report (⊃) |
| `SD150102` | Meldebogen Krebsregister | `ONKO` Onkologische Dokumente (⊃) | — | `72134-0` Cancer event report (≡) |
| `SD150104` | Tumorlokalisationsbogen | `ONKO` Onkologische Dokumente (⊃) | — | — |

**Cluster 2 — Staging & Bildgebung (oBDS 8, 11)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `DG020103` | CT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4261000179100` Computed tomography imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020105` | Endoskopiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | — | `18751-8` Endoscopy study (≡) |
| `DG020107` | MRT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4251000179103` Magnetic resonance imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020109` | PET-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020110` | Röntgenbefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `371527006` Radiology report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020111` | Sonographiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4221000179107` Ultrasound imaging report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020112` | SPECT-Befund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020113` | Szintigraphiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4271000179106` Nuclear medicine report (⊃) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020114` | Mammographiebefund | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4231000179109` Mammography report (≡) | `18748-4` Diagnostic imaging study (⊃) |
| `DG020199` | Sonstige Dokumentation bildgebende Diagnostik | `BILD` Ergebnisse bildgebender Diagnostik (⊃) | `4201000179104` Imaging report (⊃) | `18748-4` Diagnostic imaging study (⊃) |

**Cluster 3 — Tumorkonferenz (oBDS 18/19); NICHT AD060106 (deprecated)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `SD150103` | Tumorkonferenzprotokoll | `ONKO` Onkologische Dokumente (⊃) | `444804000` Multidisciplinary care conference report (⊃) | `85231-9` Tumor board Note (≡) |
| `AD060103` | Konsilbericht intern | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (⊃) | `11488-4` Consult note (⊃) |
| `AD060104` | Konsilbericht extern | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (⊃) | `11488-4` Consult note (⊃) |
| `AD060110` | Konsilbericht | `FALL` Fallbesprechungen (⊃) | `371530004` Clinical consultation report (≡) | `11488-4` Consult note (≡) |

**Cluster 4 — Operation (oBDS 13)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `OP150103` | OP-Bericht | `OPDK` OP-Dokumente (⊃) | `371526002` Operative report (≡) | `11504-8` Surgical operation note (≡) |
| `OP150104` | OP-Bilddokumentation | `OPDK` OP-Dokumente (⊃) | `723394009` Photographic image record (⊃) | `72170-4` Photographic image (⊃) |
| `OP150106` | OP-Protokoll | `OPDK` OP-Dokumente (⊃) | `416868005` Surgical intraoperative record (≡) | `11504-8` Surgical operation note (⊃) |
| `AM010303` | Operationsaufklärungsbogen | `EINW` Einwilligungen/Aufklärungen (⊃) | `721914005` Patient consent document (⊃) | `61358-8` Surgical operation consent Document (≡) |

**Cluster 5 — Strahlentherapie (oBDS 14)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `TH020101` | Bestrahlungsplan | `BSTR` Bestrahlungsdokumentation (⊃) | `736249004` Radiotherapy care plan (⊃) | — |
| `TH020102` | Bestrahlungsprotokoll | `BSTR` Bestrahlungsdokumentation (⊃) | — | `34832-6` Radiation oncology Note (⊃) |
| `TH020103` | Bestrahlungsverordnung | `BSTR` Bestrahlungsdokumentation (⊃) | — | — |
| `TH020104` | Radiojodtherapieprotokoll | `BSTR` Bestrahlungsdokumentation (⊃) | — | `90344-3` Nuclear medicine Note (⊃) |
| `TH020105` | Therapieprotokoll mit Radionukliden | `BSTR` Bestrahlungsdokumentation (⊃) | — | `90344-3` Nuclear medicine Note (⊃) |

**Cluster 6 — Systemische Therapie (oBDS 16)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `TH130102` | Arzneiadministration | `MEDI` Medikamentöse Therapien (⊃) | — | `80565-5` Medication administration record (≡) |
| `TH130103` | Chemotherapieprotokoll | `MEDI` Medikamentöse Therapien (⊃) | — | `11486-8` Chemotherapy records (⊃) |
| `TH130104` | Hormontherapieprotokoll | `MEDI` Medikamentöse Therapien (⊃) | — | — |
| `TH130107` | Medikationsplan | `MEDI` Medikamentöse Therapien (⊃) | `761931002` Medication treatment plan report (≡) | `56445-0` Medication summary Document (≡) |
| `AM010304` | Aufklärungsbogen Therapie | `EINW` Einwilligungen/Aufklärungen (⊃) | `721914005` Patient consent document (⊃) | `59284-0` Consent Document (⊃) |

**Cluster 7 — Verlauf & Nachsorge (oBDS 17)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `SD150101` | Follow up-Bogen | `ONKO` Onkologische Dokumente (⊃) | — | `72134-0` Cancer event report (⊃) |
| `LB120102` | Laborbefund extern | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120103` | Laborbefund intern | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120106` | Hämatologisches Speziallabor | `BEFU` Ergebnisse Diagnostik (⊃) | `4321000179101` Hematology report (⊃) | `11502-2` Laboratory report (⊃) |
| `LB120107` | Laborbefund | `BEFU` Ergebnisse Diagnostik (⊃) | `4241000179101` Laboratory report (≡) | `11502-2` Laboratory report (≡) |

**Cluster 8 — Tod (oBDS 20)**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `AD020103` | Todesbescheinigung | `BESC` Ärztliche Bescheinigungen (⊃) | `307930005` Death certificate (≡) | `64297-5` Death certificate (≡) |

**Cluster 9 — Studien / Forschungsvorhaben**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `SF190101` | CRF-Bogen | `STUD` Studiendokumente (⊃) | — | — |
| `SF190102` | Einwilligung Studie | `STUD` Studiendokumente (⊃) | `721914005` Patient consent document (⊃) | `77602-1` Research study consent (≡) |
| `SF190106` | Studienbericht | `STUD` Studiendokumente (⊃) | — | — |

**Cluster 10 — Übergreifend**

| KDL | Dokumentklasse | IHE-XDS typeCode (amtlich, DVMD) | SNOMED CT (kuratiert) | LOINC (kuratiert) |
|---|---|---|---|---|
| `AD010103` | Entlassungsbericht intern | `BERI` Arztberichte (⊃) | `373942005` Discharge summary (⊃) | `18842-5` Discharge summary (⊃) |
| `AD010104` | Entlassungsbericht extern | `BERI` Arztberichte (⊃) | `373942005` Discharge summary (⊃) | `18842-5` Discharge summary (⊃) |
| `SD150199` | Sonstiger onkologischer Dokumentationsbogen | `ONKO` Onkologische Dokumente (⊃) | — | `34806-0` Oncology Note (⊃) |
