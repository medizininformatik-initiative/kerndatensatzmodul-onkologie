# KDL-Dokumentklassen im onkologischen Behandlungspfad — Cluster-Analyse

**Stand:** 2026-08-24 · Quelle: KDL 2025 (`dvmd.de/fhir/CodeSystem/kdl`, 557 Konzepte, verifiziert
gegen MII SU-TermServ `ontoserver.mii-termserv.de`)
**Zweck:** Kuratierte Zuordnung KDL ↔ oBDS-Meldeanlässe ↔ MII-Onko-Profile — Grundlage für die
Dokumentenebene (DocumentReference.type) im Modul, insb. für #305 (Bildbefund) und ggf. ein
ValueSet `mii-vs-onko-kdl-dokumentklassen`.

**Kernbefund:** Die KDL kennt keine onkologiespezifischen Befundklassen außer `SD1501` (5 Klassen
aus der Register-/Zentrumsperspektive). Alle behandlungsbezogenen Dokumente laufen über
fachneutrale Klassen — „onkologisch" entsteht erst durch Kombination mit
`context.practiceSetting` (IHE-D) oder den Bezug auf unsere Profile.

## Cluster entlang der oBDS-Kapitel

### 1 · Diagnose & Erstmeldung (oBDS 5, 6)
| KDL | Klasse | MII-Onko-Bezug |
|---|---|---|
| `PT080102` | Histologiebefund | Histologie (Observation) |
| `PT260102` | Zytologiebefund | Histologie |
| `PT130102` | Molekularpathologiebefund | Genetische Variante / MolGen |
| `SD150102` | Meldebogen Krebsregister | gesamte oBDS-Meldung |
| `SD150104` | Tumorlokalisationsbogen | Diagnose Primärtumor (bodySite) |

### 2 · Staging & Bildgebung (oBDS 8 TNM, 11 Fernmetastasen)
`DG020103` CT · `DG020107` MRT · `DG020109` PET · `DG020112` SPECT · `DG020113` Szintigraphie ·
`DG020110` Röntgen · `DG020111` Sonographie · `DG020114` Mammographie · `DG020105` Endoskopie ·
`DG020199` Sonstige
→ **Kein onkologischer Bildbefund-Code**; Modalität via KDL, onkologische Semantik via Profil (#305)

### 3 · Tumorkonferenz (oBDS 18/19)
| KDL | Klasse | Anmerkung |
|---|---|---|
| `SD150103` | Tumorkonferenzprotokoll | ⚠️ Dublette zu `AD060106` (identisches Display, andere Klasse) |
| `AD060106` | Tumorkonferenzprotokoll | unter „Fallbesprechungen" |
| `AD060103/-04/-10` | Konsilberichte | Zuweisung/Mitbehandlung |

### 4 · Operation (oBDS 13)
`OP150103` OP-Bericht · `OP150106` OP-Protokoll · `OP150104` OP-Bilddokumentation ·
`AM010303` Operationsaufklärungsbogen

### 5 · Strahlentherapie (oBDS 14)
`TH020101` Bestrahlungsplan · `TH020102` Bestrahlungsprotokoll · `TH020103` Bestrahlungsverordnung ·
`TH020104` Radiojodtherapieprotokoll · `TH020105` Therapieprotokoll mit Radionukliden

### 6 · Systemische Therapie (oBDS 16)
`TH130103` Chemotherapieprotokoll · `TH130104` Hormontherapieprotokoll · `TH130107` Medikationsplan ·
`TH130102` Arzneiadministration · `AM010304` Aufklärungsbogen Therapie

### 7 · Verlauf & Nachsorge (oBDS 17)
`SD150101` Follow up-Bogen · `LB120107/-02/-03` Laborbefunde · `LB120106` Hämatologisches
Speziallabor (→ #246 Biomarker) · Bildgebung wie Cluster 2

### 8 · Tod (oBDS 20)
`AD020103` Todesbescheinigung · (Obduktion: keine eigene Klasse, nur `PT2301`/`PT230199`)

### 9 · Studien / Forschungsvorhaben
`SF1901`-Serie: `SF190101` CRF-Bogen · `SF190102` Einwilligung Studie · `SF190106` Studienbericht
(→ #232 Modul Forschungsvorhaben)

### 10 · Übergreifend
`AD010103/-04` Entlassungsbericht (Arztbrief) · `SD150199` Sonstiger onkologischer
Dokumentationsbogen (inkl. Psychoonkologische Basisdoku, Tumorverlaufsblatt, Checkliste
Tumorpatienten)

## Lücken / Beobachtungen
1. **Kein onkologischer Bildbefund** und kein RECIST-/Response-Dokument → bestätigt Profil-Ansatz #305
2. **Tumorkonferenzprotokoll doppelt** (`SD150103` ↔ `AD060106`) — bei ValueSet-Bau beide aufnehmen
   oder Vorzugscode festlegen
3. **Keine Humangenetik-/Keimbahn-Befundklasse** (nur Molekularpathologie) — relevant für oBDS 23
4. **Keine Obduktions-/Autopsieklasse** (für Autopsie-Meldeanlass nur Pathologie-Auffangklassen)
5. Psychoonkologie nur als Inklusion in `SD150199`

## Möglicher nächster Schritt
ValueSet `mii-vs-onko-kdl-dokumentklassen` (Cluster 1–10 als kuratierte Auswahl) als
Begleitartefakt für die Dokumentenebene; Lücken 1/3/4 ggf. als Change Request an die DVMD.
