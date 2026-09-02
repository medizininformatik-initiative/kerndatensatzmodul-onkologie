
Hier sind alle Änderungen aufgelistet. 

## Änderungen v2027.0.0 (noch nicht veröffentlicht)

### ⚠️ Breaking Changes

Diese Änderungen erfordern möglicherweise Anpassungen in bestehenden Implementierungen:

- **`BREAKING`** **UICC-Präfixe y, r und a als modifierExtension auf Kategorie-Ebene**: Die Präfixe werden nicht mehr im Kategorie-Wert mitgeführt, sondern an der jeweiligen T-, N- bzw. M-Beobachtung über die neuen Extensions `mii-ex-onko-tnm-y-praefix`, `mii-ex-onko-tnm-r-praefix` und `mii-ex-onko-tnm-a-praefix` abgebildet.
  - **Warum modifierExtension**: Die Präfixe verändern die Interpretation des Kategorie-Wertes — `ypT2` (Feststellung während oder nach initialer multimodaler Therapie) ist **nicht** dasselbe wie `pT2`. Verarbeitende Systeme MÜSSEN die Extensions kennen und dürfen eine Kategorie nicht ohne Auswertung des Präfixes interpretieren.
  - **Abgrenzung**: Das c/p/u-Präfix bleibt als reguläre Extension `mii-ex-onko-tnm-cp-praefix` auf `Observation.code` (es benennt die Feststellungsmethode, nicht eine abweichende Interpretation).
- **`BREAKING`** **Karnofsky-/ECOG-LOINC-ConceptMaps korrigiert** (GH #269): Die bisherigen Ziel-Codes waren systematisch falsch (Karnofsky um zehn LA-Nummern verschoben, ECOG mit falschen Prüfziffern). Systeme, die die alten LA-Codes aus den ConceptMaps übernommen haben, müssen ihre Daten korrigieren. Zusätzlich binden die Leistungszustand-Profile `valueCodeableConcept.coding[loinc]` jetzt required an neue enumerierte Answer-ValueSets (≙ LL4986-7 bzw. LL529-9, GH #236).
- **`BREAKING`** **Onkologie-Kennzeichnung an der Diagnose verpflichtend**: `Condition.category` trägt am Primärtumor- und am Früheren-Tumorerkrankung-Profil einen neuen Pflicht-Slice `onkologie` (1..1) mit SNOMED CT `55342001` "Neoplastic disease". Damit sind onkologische Diagnosen über `Condition?category=…|55342001` auffindbar. Bestandsinstanzen ohne diese Kategorie werden ungültig und müssen ergänzt werden; das extensible Kern-Binding (problem-list-item / encounter-diagnosis) bleibt unberührt.
- **`BREAKING`** **Gleason-Profile: `code.coding` gesliced** (GH #259): SNOMED CT ist verpflichtend (1..1), LOINC optional als Zweitkodierung (0..1) — für Grade Group, Score-Gesamt und Pattern. Bisher war das Coding ungesliced. Verifizierte LOINC-Codes: `94734-1` (Grade Group), `35266-6` (Score), `44641-9`/`44642-7`/`44643-5` (Pattern).
- **`BREAKING`** **CTCAE-Katalogversion aus der MedDRA-Kodierung herausgelöst** (oBDS 15.3): Die Version steht nicht mehr in `AdverseEvent.event.coding[meddra].version`, sondern in der neuen Extension `mii-ex-onko-nebenwirkung-ctcae-version` mit required-Bindung an die oBDS-Enumeration (`4`, `4.03`, `5.0`, `Sonstige`, neues CodeSystem `mii-cs-onko-nebenwirkung-ctcae-version`). Grund: `coding.version` bezeichnet die Version des CodeSystems, aus dem der Code stammt — das ist MedDRA (CTCAE v4.03 basiert auf MedDRA v12.0), nicht CTCAE. Die Vermischung machte Codes gegen das ValueSet unauflösbar. Systeme, die die CTCAE-Version aus `coding.version` lesen, müssen angepasst werden.
- **`BREAKING`** **Referenztypen gehärtet**: Bisher generische Referenzen sind jetzt auf die fachlich zulässigen Profile eingeschränkt — `Verlauf.hasMember` (statt beliebiger Observation nur die sieben definierten Mitglieder), `AdverseEvent.suspectEntity.instance` (Strahlentherapie / Systemische Therapie / Medikation), `Condition.extension:dueTo.valueReference`, `Residualstatus.partOf` (Operation), `TNM-synthetisiert.device` (Device) sowie `Tumorkonferenz.activity[extended].reference` (die drei Therapieempfehlungs-Profile). Instanzen mit anderen Zieltypen werden ungültig.
- **`BREAKING`** **Symbol-Profile der TNM-Klassifikation deprecated**: `mii-pr-onko-tnm-y-symbol`, `-r-symbol`, `-a-symbol` und `-m-symbol` stehen auf `retired`. Die Präfixe y/r/a laufen als `modifierExtension` an den Kategorie-Profilen; das m-Suffix als neue `component[multipleTumoren]` an der T-Kategorie (Component-Code LOINC `42030-7`, Wert weiterhin aus dem UICC-CodeSystem). Bestandsdaten bleiben lesbar — `hasMember` am Panel nennt die Profile weiterhin —, für Neuimplementierungen sind die Extensions bzw. die Component zu verwenden.
- **`BREAKING`** **Legacy-Artefakte entfernt**: die auskommentierte Strahlentherapie-Alt-Familie (Profil, Extension, Beispiel) sowie die nie aktivierten Quantity-Profile für ECOG und Karnofsky.
- **`BREAKING`** **Abhängigkeiten auf die 2027-Ballot-Linie**: `kerndatensatz.meta` 2027.0.0-ballot.rc3, `kerndatensatz.base` 2027.0.0-ballot.rc1, `de.basisprofil.r4` 1.6.0, `kerndatensatz.biobank` und `kerndatensatz.studie` je 2027.0.0-ballot.rc1. Neu hinzugekommen: `kerndatensatz.laborbefund` 2026.0.3 (für das Tumormarker-Profil) und `hl7.fhir.uv.genomics-reporting` 3.0.0.

### Neue Profile und Funktionalität

- `feat` **Synthetisierte TNM-Klassifikation finalisiert** (`mii-pr-onko-tnm-klassifikation-synthetisiert`): Zusammenführung mehrerer Meldungs-bezogener TNM-Klassifikationen zu einem kohärenten Stand zum Entscheidungszeitpunkt (z. B. Tumorkonferenz).
  - **Code fix** auf SNOMED CT `399703000` "Integrated TNM category"; das Typ-ValueSet `mii-vs-onko-tnm-klassifikation-typ` wurde entsprechend erweitert (klinisch / pathologisch / integriert)
  - **`value` (UICC-Stadium) jetzt 1..1**: Das Stadium ist der Zweck der Synthese; am Meldungs-Panel bleibt `value` unverändert 0..1
  - **Neues optionales `component[tnmFormel]`** (CodeSystem `mii-cs-onko-tnm-formel`) für die generierte TNM-Gesamtformel (z. B. "ypT0 ypN0 cM0"); sie MUSS zu den `hasMember`-Beobachtungen inklusive Präfixen passen und SOLL generiert, nicht manuell gepflegt werden
  - **Provenienz**: `derivedFrom` auf die Quell-Klassifikationen ist PFLICHT (1..*), `device` ist MS — bei automatisierter Erzeugung SOLL das erzeugende System inklusive Version dokumentiert werden, eine zusätzliche `Provenance`-Ressource KANN für Audit-Anforderungen ergänzt werden
- `feat` Neue SearchParameter `tnm-y-praefix` (`mii-sp-onko-observation-tnm-y-praefix`) und `tnm-r-praefix` (`mii-sp-onko-observation-tnm-r-praefix`) zur Suche über die neuen Präfix-modifierExtensions.
- `feat` **Beziehungsachsen der Diagnose vervollständigt**: Neben `occurredFollowing` (zeitliche Folge, oBDS 5.9 — Ziel jetzt auch Frühere Tumorerkrankung) gibt es die neue Extension `mii-ex-onko-transformation-von` (Linien-Kontinuität, z. B. MDS → AML, Meningeom /0 → /3) und einen Slice auf die HL7-Standard-Extension `condition-dueTo` (Verursachung, z. B. t-AML nach Chemotherapie, radiogenes Angiosarkom). Drei-Achsen-Guidance mit CUP-Abgrenzung auf der Diagnose-Seite; sechs neue Beispielinstanzen inkl. CUP-Beispielbundle mit Best-Of-Auflösung.
- `feat` **ICD-O-Revisions-Artefakte** (löst u. a. den Heidelberg-Befund zu 2014er-Codes): versionsgepinnte Jahres-ValueSets für Topographie und Morphologie (Erste Revision 2014 / Zweite Revision 2019), Haupt-ValueSet als Union beider Stände, Transitions-ConceptMap `mii-cm-onko-icdo3-transitions-2019` mit den Umsteigern der Morphologie-Achse (Stand nach BfArM-Abgleich: 56, siehe unten).
- `feat` **ATC-Jahres-ValueSets 2018–2026 versionsgepinnt** (3.422 Einträge) plus Transitions-ConceptMap 2022 (Monoklonale-Antikörper-Umzug L01XC → L01F); behebt die Versionsambiguität des Terminologieservers bei jahresversionierten CodeSystemen.
- `feat` **Meldepflicht-ValueSet + Warning-Invariante für die ICD-10-Codierung** der Onko-Diagnose (`mii-vs-onko-icd10-meldepflichtige-tumoren`, Blockcodes C00–C97, D00–D09, D32/D33, D35.2–.4, D37–D48): meldet nicht-meldepflichtige Codes als Warnung, ohne sie zu verbieten.
- `feat` **MedicationStatement Systemische Therapie**: `medicationReference` ist jetzt als Alternative zu `medicationCodeableConcept` zulässig (beide 0..1 bei `medication[x]` 1..1, GH #288) — erleichtert die Nachnutzung bestehender KDS-Medikation-Ressourcen.
- `feat` **Kuratiertes KDL-ValueSet** `mii-vs-onko-kdl-dokumentklassen` (45 Dokumentklassen entlang des onkologischen Behandlungspfads) als nicht-verpflichtendes Begleitartefakt für die Dokumentenebene.
- `feat` AdverseEvent: `event.coding` um SNOMED-CT-Slice erweitert (MedDRA-Binding unverändert am MedDRA-Slice).
- `feat` Approved Community-Changes: Morphologie-Extension `morphology-behavior-icdo3` jetzt 0..* (GH #298), FIGO-Stadien codierbar (GH #297), Gleason-Scores < 6 zulässig und Pattern-Titel korrigiert (GH #260/#261).
- `feat` **ConceptMap MedDRA → SNOMED CT für die CTCAE-Nebenwirkungen** (`mii-cm-onko-nebenwirkung-meddra-sct`): alle 790 Terme der CTCAE v4.03, davon 708 zugeordnet (638 äquivalent, 28 enger, 42 weiter), 82 bewusst ohne Zuordnung. Die Zielcodes sind gegen die Kurationsversion SNOMED International 20260501 verifiziert; `group.targetVersion` dokumentiert sie. Drei Beispielinstanzen zeigen Dual-Kodierung, Nachfolgekonzept-Fall und den MedDRA-only-Fall.
- `feat` **Tumormarker-Profil `mii-pr-onko-tumormarker`**: Ableitung von `MII_PR_Labor_Laboruntersuchung` (KDS-Modul Laborbefund) mit extensible Bindung von `Observation.code` an die neue Union-Liste `mii-vs-onko-tumormarker-loinc` (48 kuratierte LOINC-Codes) und Bezug zur Diagnose über `focus`. Laborwerte bleiben damit im Laborbefund-Modell; das Onkologie-Modul steuert nur die fachliche Auswahlliste bei.
- `feat` **ValueSets zur Krebsprädisposition** aus der §65c-Liste: `mii-vs-onko-praedispositionssyndrome-orpha` (55 Orphanet-Codes) und `mii-vs-onko-praedispositionsgene-hgnc` (109 HGNC-Gene, inkl. vollständiger Fanconi-Expansion).
- `feat` **Strukturierte Gen-Identität** (erste Stufe des tiered-Konzepts): `Observation.component:gene-studied` ist im Profil Genetische Variante extensible an `mii-vs-onko-marker-gene-hgnc` gebunden (40 HGNC-Gene der §65c-Markerliste). Der Freitext-Genname nach oBDS 23.1 bleibt in `note.text`. Für den IGHV-Sonderfall (Genfamilie statt Einzelgen) steht `mii-vs-onko-ighv-gensegmente-hgnc` mit allen 167 Segmenten bereit; mutiert/unmutiert wird weiterhin über die Ausprägung abgebildet (oBDS M/W).
- `feat` **TNM 9. Auflage**: die Codes `T1b3` (Zervix, FIGO-Angleichung) sowie `M1c1` und `M1c2` (Lunge) im UICC-CodeSystem und den Werte-ValueSets ergänzt.
- `feat` **CRMI-Metadaten auf allen Konformitätsressourcen** (324 von 325): StructureDefinitions, ValueSets, CodeSystems, ConceptMaps, SearchParameter, Library, CapabilityStatement und ImplementationGuide tragen jetzt crmi-shareable/publishable-Profile, `cqf-knowledgeCapability`, Contributor- und Topic-Angaben, Versionsalgorithmus, Freigabedatum, Gültigkeitszeitraum sowie `crmi-license` und `package-source` in `meta.extension` — nach dem Muster des Basismoduls.
- `feat` **ECOG- und Karnofsky-Profile mit `focus`** auf die Primärtumor-Diagnose — sie waren bisher die einzigen Kern-Observations ohne Diagnosebezug.
- `feat` **OPS-Seitenlokalisation am OP-Profil sichtbar**: Die aus der MII-Prozedur geerbte Extension (R/L/B) ist als Must-Support ausgewiesen. Das oBDS führt am OP kein eigenes Seitenfeld — die Seitenangabe läuft amtlich über den OPS-Seitenzusatz.
- `feat` **Bezug zum KDS-Modul Medizinisches Forschungsvorhaben** (GH #232): `Studienteilnahme.focus[studie]` verweist auf `MII_PR_Studie_Studie`; der generische `ResearchStudy` bleibt als dokumentierter Rückfall für Standorte ohne das Modul.
- `feat` **oBDS-Mapping am Logical Model**: Das Haupt-LM `mii-lm-onko` trägt neben dem FHIR-Mapping jetzt ein zweites mit `Id: oBDS` — alle 16 Bereiche und 85 Unterelemente sind auf ihre oBDS-Feldnummern abgebildet.

### Refaktorierungen

- `refactor` **SearchParameter für das c/p/u-Präfix konsolidiert**: Die drei defekten SearchParameter `tnm-t-cppraefix`, `tnm-n-cppraefix` und `tnm-m-cppraefix` wurden durch den gemeinsamen SearchParameter `mii-sp-onko-observation-tnm-cp-praefix` (Code `tnm-cp-praefix`) ersetzt. Die Extension existiert genau einmal auf `Observation.code`; die Unterscheidung zwischen T-, N- und M-Kategorie erfolgt über den Kategorie-Code der Observation (Kombination mit dem SearchParameter `code`).

### Weitere Verbesserungen

- `documentation` **LOINC-SNOMED-Anker der Tumormarker**: für 23 der 28 Marker ist das Observable-Konzept der LOINC-SNOMED-Ontologie verifiziert (sieben davon neu ermittelt). Für Gastrin, Calcitonin, M-Protein, IgA und IgM existiert dort kein „Measurement of …"-Grouper — ein Content-Request an SNOMED International wäre nötig. Methodischer Hinweis auf der Seite: Die Konzepte liegen in einer eigenen Terminologieserver-Branch und sind über die Standard-Expansion nicht auffindbar; eine naive Textsuche liefert für ACTH den Corticotropin releasing factor und für TSH den Rezeptor-Antikörper.
- `documentation` **UICC-CodeSystem: Auflagen-Union als bewusste Entscheidung dokumentiert** — das CodeSystem führt die Codes auflagenübergreifend (8. Auflage plus Ergänzungen der 9.), die verwendete Auflage steht als eigenes Datenelement daneben (TNM-Version, oBDS 8.2). Eine auflagenscharfe Validierung nach dem Muster der ATC-Jahresversionen ist als spätere Ausbaustufe vorgesehen.
- `fix` **Organmodule auf die amtliche oBDS-Nummerierung** (basisdatensatz.de-Feldkatalog und oBDS-XSD v3.0.5 als Quelle): Die Nummern sind flach (Mamma M1–M8, Kolorektal KR1–KR10, Prostata P1–P9, Melanom MM1–MM4); die früheren hierarchischen Angaben (P4.1, M2.1.1 …) existieren amtlich nicht. Korrigiert wurden das Organmodul-Logical-Model, die oBDS-Mappings aller 30 Organprofile und die zugehörigen Seiten. Dabei behobene Fehlzuordnungen: PSA war als P1 geführt (amtlich P7), Clavien-Dindo als P5 (amtlich P9), „Mamma-Operationen" als M4 (amtlich Her2neu-Status). Ergänzt wurden bislang fehlende Felder: Her2neu (M4), Tumorgrößen (M7/M8), RAS-Mutation (KR10), Anlass Gleason (P2), Datum der Stanzen (P3), Datum PSA (P8) sowie das im XSD zentralisierte `Modul_Allgemein` (Sozialdienst-, Psychoonkologie- und Studienkontakt).
- `fix` **ICD-O-Transitions-ConceptMap gegen die amtliche BfArM-Aktualisierungsliste abgeglichen** (Stand 29.01.2021): 56 statt bisher 55 Umsteiger. Neu aufgenommen ist `8153/1` (Gastrinom o.n.A.), das die Aktualisierungsliste und die amtliche Online-Fassung streichen, die maschinenlesbare ClaML-Fassung aber weiterhin führt — der Terminologieserver spiegelt die ClaML und zeigt den Code deshalb noch. Alle 119 amtlichen Neueinfügungen sind serverseitig vorhanden.
- `fix` **MVGenomSeq-ConceptMap gegen den echten Datenkranz korrigiert**: 13 von 15 Zielfeldern existierten im Schema `OncologyCase.json` nicht (Schreibweise `diagnosisOd` statt `diagnosisOD`, erfundene Verschachtelungen wie `mainDiagnosis.date`, falsche Feldnamen wie `germlineDiagnoses`). `additionalDiagnoses.date` ist jetzt als `unmatched` dokumentiert — der Datenkranz führt dort ein reines Coding-Array ohne Datumsattribut, ein Feststellungsdatum je Nebendiagnose ist also nicht übermittelbar.
- `fix` **Beispielinstanzen: unauflösbare Referenzen bereinigt** — sieben Anker-Instanzen für historisch gewachsene Verweise (`Patient/example` u. a.), profil-pflichtige Ziele auf bestehende konforme Beispiele umgebogen.
- `fix` **`experimental = false`** auf 37 Modul-Terminologien (Organmodule, ATC-Jahresstände, Weitere Klassifikationen, OP-Dringlichkeit) — nach einem Jahr im Feld nicht mehr experimentell.
- `fix` **Kurationsstatus der oBDS-SNOMED-ConceptMaps offengelegt**: Die 28 Maps der ersten Generation (2024, gegen SNOMED International 20240401) sind als `experimental = true` gekennzeichnet und tragen den Hinweis, dass sie weder offiziell endorsed noch final qualitätsgesichert sind.
- `fix` **UICC-Copyright am TNM-CodeSystem**: Der Rechtehinweis auf die UICC ersetzt die zuvor gesetzte CC-BY-4.0-Lizenzangabe — das CodeSystem führt fremdes, geschütztes Material unter der UICC-Kanonical-URL.
- `documentation` **Umzug des Implementation Guide auf den HL7 IG Publisher** (weg von Simplifier, MII-KDS-Modul-Template): Der Guide wird jetzt zweisprachig aus dem Repository gebaut; Identität (Canonical, Package-ID, Version) bleibt unverändert.
- `documentation` **Neue Übersichtsseite „Konformitäts-Mappings"**: alle 1.459 Zuordnungen des Moduls in fünf SQL-generierten Tabellen — nicht handgepflegt, sondern beim Build aus der Paket-Datenbank erzeugt und damit immer auf dem Stand der gebauten Artefakte.
- `documentation` **ENCR Table 4 auf der Tumormarker-Seite**: die 16 Entitäten, die bei fehlender pathologischer Sicherung über Tumormarker dokumentiert werden dürfen, mit der jeweils zu vergebenden ICD-O-Morphologie — fachliche Grundlage der oBDS-Diagnosesicherung `4`. Ergänzt um die Matrix-Frage (Probenmaterial) bei Serotonin/5-HIES, HVA/VMA, Katecholaminen und den neu aufgenommenen Metanephrinen.
- `documentation` **KDL-Dokumentklassen mit Zuordnungstabelle**: IHE-XDS-typeCode amtlich über die DVMD-ConceptMap (45/45), SNOMED CT (31/45) und LOINC (39/45) projektseitig kuratiert; fünf deutsche Register- und Studienformulare bleiben dokumentiert ohne internationales Äquivalent.
- `documentation` **Toronto-Klassifikation**: die §65c-Übermittlungsregeln ergänzt (Klassifikationsnamen „Toronto Stufe 1/2", zulässige Stadienkürzel, Zusammenfassungsregel Stufe 2 → Stufe 1, morphologiebasierte Zuordnung).
- `documentation` **Genetik: Übermittlungsnotation der §65c-Markerliste** — Zwei-Positionen-Modell (Gen an Position 1, Weitere Information an Position 2), Formelangabe nach HGVSp/HGVSc, Codon- und Fusionsschreibweise (`GEN1::GEN2`) samt Parser-Vertrag zur FHIR-Abbildung.
- `documentation` **TNM: die drei Kodier-Mechanismen erklärt** — binäre Präfixe (modifierExtension), wertetragendes m-Suffix (Component) und Kategoriewerte (Dual-Coding UICC/SNOMED), jeweils mit Begründung.
- `documentation` **oBDS-Diagnosesicherung 16.4 und Morphologie-Kardinalitäten**: Führungssystem für das Therapieprotokoll dokumentiert (`Procedure.usedCode` führend, `MedicationStatement.note.text` nur zur Schema-Zuordnung) sowie die bewusste Asymmetrie der Morphologie-Angaben (Diagnose 0..*, Histologie-Observation je Befund genau eine).
- `documentation` Neuer Guidance-Abschnitt "Erscheinungsformen der TNM-Klassifikation" auf der [TNMKlassifikationObservation](StructureDefinition-mii-pr-onko-tnm-klassifikation.html)-Seite: beschreibt klinisches Staging, pathologisches Staging, Verlauf und die synthetisierte Klassifikation sowie deren Unterscheidung über Code-Achse und Präfix-Modifier.

---

## Änderungen v2026.0.3 (veröffentlicht 27.03.2026)

### Technische Verbesserungen

- `fix` Package-Erstellung auf macOS korrigiert: `COPYFILE_DISABLE=1` beim tar-Aufruf verhindert AppleDouble (`._`)-Datei-Kontamination (v2026.0.2 enthielt 490 solcher Dateien)
- `fix` Abhängigkeiten aktualisiert: biobank `2026.0.1`, medikation `2026.0.1`, studie `2026.0.2`
- `chore` Firely Terminal auf 3.5.0 aktualisiert

---

## Änderungen v2026.0.2 (veröffentlicht 10.03.2026)

### Terminologie

- `feat` ATC-DE 2026 ValueSet aktualisiert: 23 neue Codes hinzugefügt, neue Substanzklasse L01EP (c-MET-Inhibitoren)
- `fix` 27 ATC Display-Namen korrigiert (WIdO-validiert)
- `feat` ATC-Code Transitions-ConceptMap für 2026 aktualisiert

### Technische Verbesserungen

- `fix` advisor.json Suppressionen für externe TX-Server Fehler erweitert

---

## Änderungen v2026.0.1 (veröffentlicht 05.02.2026)

### Abhängigkeiten

- `fix` Modul-Studie Abhängigkeit auf 2026.0.2 aktualisiert
- `fix` ResearchStudy Beispiel wiederhergestellt

### Technische Verbesserungen

- `fix` ig.ini an umbenannte IG-Ressource angepasst (v2025→v2026)
- `fix` MII IG Namenskonventionen für 2026 Release angewendet
- `fix` Bezeichnung 'Erweiterungsmodul' durch 'KDS-Modul' gemäß MII-Richtlinien ersetzt

---

## Änderungen v2026.0.0 (veröffentlicht 03.01.2026)

### ⚠️ Breaking Changes

Diese Änderungen erfordern möglicherweise Anpassungen in bestehenden Implementierungen:

- **`BREAKING`** Canonical URL des Strahlentherapie Applikationsart ValueSets von `mii-vs-onko-sstrahlentherapie-applikationsart` auf `mii-vs-onko-strahlentherapie-applikationsart` korrigiert (Tippfehler-Korrektur). Bestehende Referenzen müssen aktualisiert werden. [[HDB-708](https://hl7germany.atlassian.net/browse/HDB-708), [#219](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/219)]
- **`BREAKING`** CodeSystem-URLs für therapie-ende-grund und therapie-stellungzurop korrigiert. Bestehende Referenzen müssen aktualisiert werden.

### Neue Profile und Funktionalität

- `feat` **Frühere Tumorerkrankungen Profil**: Neues [FruehereTumorerkrankungCondition](StructureDefinition-mii-pr-onko-fruehere-tumorerkrankung.html) Profil zur Erfassung anamnestischer Tumorerkrankungen mit Mapping zu oBDS 5.9
  - **Basis**: FHIR Condition (nicht MII Diagnose) für flexible Freitexterfassung
  - **Kodierung**: code.text verpflichtend (1..1), code.coding[icd10-gm] optional (0..1)
  - **Optionale Elemente**: ICD-O-3 Topographie, Morphologie-Extension, assertedDate, clinicalStatus
  - **Integration**: condition-occurredFollowing Extension im Primärtumor-Profil für Verlinkung zu früheren Tumorerkrankungen
  - **Beispiele**: Vier Instanzen demonstrieren verschiedene Szenarien inklusive reiner Freitext-Dokumentation
- `feat` PRO-B Studienteilnahme-Beispiel mit ResearchStudy-Referenz zur Demonstration der Integration mit dem Forschungsvorhaben-Modul
- `feat` QA Validierungsseite zur Dokumentation der Qualitätssicherungsprozesse hinzugefügt

### Refaktorierungen

- `refactor` **ASA-Klassifikation**: Vom KRK-Modul in das Allgemeiner Leistungszustand Profil verschoben für breitere Anwendbarkeit über verschiedene Tumorentitäten hinweg

### Validierung und Qualitätsverbesserungen

- `fix` Package-Abhängigkeiten auf 2026.0.0-ballot Versionen aktualisiert (studie, biobank, molgen) um fehlende Snapshots zu beheben
- `fix` advisor.json Suppressionen für IG Parameter-Code Validierung erweitert
- `fix` MedDRA-Slice zum AdverseEvent-Profil hinzugefügt und explizite MedDRA-Codes zum ValueSet für Validierung ergänzt
- `fix` SNOMED-Code durch MedDRA-Code für Neuropathie-AdverseEvent ersetzt (präzisere Kodierung von Nebenwirkungen)
- `fix` HER2 ISH LOINC-Code auf korrekten FISH-Test geändert für präzisere Laborwerterfassung
- `fix` Neun fehlende Profile zum CapabilityStatement hinzugefügt für vollständige Server-Capability-Dokumentation
- `fix` capabilitystatement-expectation Extension aus Profile RuleSet entfernt (verursachte Validierungsfehler)

### Display-Namen und Terminologie-Korrekturen

- `fix` OPS- und SNOMED-CT Display-Namen in diversen Beispielen korrigiert (Sigmoidresektion, Right-Hemikolektomie, KRK-Operation, etc.)
- `fix` CodeSystem-URLs für therapie-ende-grund und therapie-stellungzurop korrigiert
- `fix` ATC Display-Namen für Folinsäure und Trastuzumab korrigiert
- `fix` TNM-Code und Verlauf Display-Namen korrigiert
- `fix` Residualstatus Display-Namen korrigiert
- `fix` FUFOL durch LV5FU2 ersetzt mit korrektem OPS Display-Namen

### oBDS-Mapping Verbesserungen

- `fix` oBDS-Mapping zur Operation Urgency Extension und Dokumentation hinzugefügt
- `fix` Korrektes oBDS-Mapping zum Tumorgröße-Profil hinzugefügt und Dokumentationsseite erstellt
- `fix` oBDS-Mapping zum Prostata PSA-Profil hinzugefügt

### Beispieldaten-Korrekturen

- `fix` Fehlende OPS-Versionen zu diversen Procedure-Instanzen hinzugefügt (palbociclib-therapie, pertuzumab-therapie, Strahlentherapie-Beispiele, etc.)
- `fix` [ops] Slice-Notation zu allen OPS code.coding in example-patient-1 hinzugefügt
- `fix` Fehlende SNOMED-CT Codes und Kategorien zu Procedure-Beispielen hinzugefügt
- `fix` Instanztyp von Procedure zu MedicationRequest für Tumorkonferenz-Beispiele korrigiert
- `fix` Ungültige SNOMED-Codes aus KRK-Operation entfernt
- `fix` Bundle-Typ von collection zu transaction für ECOG und Karnofsky Beispiele geändert
- `fix` Verpflichtende fullUrl zu Bundle-Einträgen in Beispielen hinzugefügt
- `fix` Verpflichtende diagnostic certainty und encounter zu Melanom-Diagnose hinzugefügt
- `fix` ICD-O-3 Display-Namen in Frühere Tumorerkrankung Beispielen korrigiert
- `fix` PRO-B ResearchStudy focus auf korrekten SNOMED-Code aktualisiert
- `fix` TKI-Beispiel Therapieempfehlung korrigiert
- `fix` Systemische Therapie Beispiel-Kategorie korrigiert

### ATC-Code Transitionen

- `feat` ATC-Code Transitionsbeispiele hinzugefügt und Display-Namen korrigiert zur Demonstration temporaler ATC-Änderungen (z.B. Imatinib, Quizartinib)
- `feat` Umfassende ATC-Code Transitions-Dokumentation und ConceptMaps hinzugefügt
- `feat` Protokoll- und Medikations-Tracking für Kombinationstherapie-Empfehlungen ergänzt

### Therapieempfehlung Medikation Erweiterung

- `improve` **reasonReference erweitert**: `MII_PR_Onko_Therapieempfehlung_Medikation` (MedicationRequest) erlaubt nun neben der Pflicht-Referenz auf `MII_PR_Onko_Diagnose_Primaertumor` auch Referenzen auf `Condition` und `Observation` zur Unterstützung zusätzlicher klinischer Begründungen für Therapieempfehlungen

### Technische Verbesserungen

- `chore` Version auf 2026.0.0-rc.1 aktualisiert
- `chore` .validation-history zu gitignore hinzugefügt
- `chore` Generierte CapabilityStatement und ECOG-Dateien aktualisiert
- `feat` UML-Diagramme aktualisiert und PlantUML Auto-Rendering Workflow hinzugefügt
- `fix` FHIRPath Typ-Vergleich in ECOG und Karnofsky Constraints korrigiert
- `fix` ECOG und Karnofsky Constraint Validierungsausdrücke verbessert
- `chore` Simplifier Build-Skript hinzugefügt und molgen Dependency aktualisiert

### Weitere Verbesserungen

- `improve` Dinatriumfolinat/Natriumfolinat zu Systemische Therapie Substanzen ValueSets hinzugefügt: UNII-Code für Leucovorin Sodium (4MXU9LJS4Q) und ATC-Code V03AF06 (Natriumfolinat). Dokumentation auf Terminologie-Seite aktualisiert. [[HDB-628](https://hl7germany.atlassian.net/browse/HDB-628)]
- `documentation` Fehlerhafte interne Dokumentationslinks (pagelinks) korrigiert, die nach Export von Simplifier zur MII-Homepage nicht funktionierten: Topic-Namen in Kommentierungs-Seite, Operation-Profile und Extension-Dokumentation aktualisiert. [[HDB-646](https://hl7germany.atlassian.net/browse/HDB-646)]
- `improve` Kardinalität von `Observation.code` im Residualstatus-Profil explizit auf `1..1` gesetzt für bessere Verständlichkeit. [[HDB-707](https://hl7germany.atlassian.net/browse/HDB-707), [#220](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/220)]
- `documentation` Beschreibung des Melanom Sicherheitsabstand Profils vervollständigt und Handhabung von nicht beurteilbaren Fällen dokumentiert. [[HDB-705](https://hl7germany.atlassian.net/browse/HDB-705), [#222](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/222)]
- `documentation` GOLD-Projektbeschreibung auf Seite "Bezug zu nationalen Standards" aktualisiert. [[HDB-711](https://hl7germany.atlassian.net/browse/HDB-711), [#216](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/216)]
- `improve` Optionale Specimen-Referenz (0..1) zum Genetische Variante Profil hinzugefügt. [[HDB-712](https://hl7germany.atlassian.net/browse/HDB-712), [#215](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/215)]
- `improve` Klarstellung der Datums-Semantik in Verlaufshistologie und Specimen Profilen: `Observation.effectiveDateTime` bezeichnet "Datum der histologischen Untersuchung", während `Specimen.collection.collectedDateTime` das "Datum der Probenentnahme" (oBDS 6.1 "Tumor Histologiedatum") darstellt. Labels, oBDS-Mappings und UML-Diagramme entsprechend aktualisiert. Verpflichtende 1..1 Specimen-Referenz im UML-Diagramm visualisiert. [[HDB-714](https://hl7germany.atlassian.net/browse/HDB-714), [#233](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/233)]
- `documentation` Hinweis auf Vererbung vom MII KDS Modul Diagnose zur Beschreibung des Diagnose Primärtumor Profils hinzugefügt. [[HDB-701](https://hl7germany.atlassian.net/browse/HDB-701), [#227](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/227)]
- `documentation` Beschreibungen der TNM c/p/u-Präfix Extension und ValueSet verbessert mit Erklärungen der Klassifikationsmethoden. [[HDB-699](https://hl7germany.atlassian.net/browse/HDB-699), [#229](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/229)]
- `fix` SNOMED CT Versions-URI-Syntax in ConceptMap mii-cm-onko-krk-stoma-obds-sct korrigiert: Versionierte URI von `target` nach `targetVersion` verschoben. [[HDB-702](https://hl7germany.atlassian.net/browse/HDB-702), [#226](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/226)]
- `documentation` Beschreibung und Definition im Prostata Operation Profil korrigiert um Binding-Stärke korrekt als `required` (statt `preferred`) zu reflektieren. [[HDB-706](https://hl7germany.atlassian.net/browse/HDB-706), [#224](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/224)]
- `documentation` UCUM Hinweistext in Lymphknoten-Zählprofilen verbessert für bessere Klarheit über verpflichtenden UCUM Code 1. [[HDB-700](https://hl7germany.atlassian.net/browse/HDB-700), [#228](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/228)]
- `improve` LOINC Slices zu Karnofsky und ECOG Leistungszustand Profilen hinzugefügt für bessere internationale Interoperabilität. [[HDB-689](https://hl7germany.atlassian.net/browse/HDB-689), [#236](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/236)]
- `improve` Strahlentherapie Applikationsart von `Procedure.usedCode` zu Standard-Extension `procedure-method` verschoben für semantisch korrektere Modellierung. [[HDB-682](https://hl7germany.atlassian.net/browse/HDB-682), [#238](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/238)]
- `documentation` MII Modul Forschungsvorhaben zum UML-Diagramm "Profile - Beziehungen und Referenzen" hinzugefügt zur Darstellung der optionalen Integration mit Forschungsprojekten. [[HDB-715](https://hl7germany.atlassian.net/browse/HDB-715), [#232](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/232)]
- `improve` Mamma Operation Profil um strukturierte `usedCode` Slices für intraoperatives Präparatröntgen/Sonografie (M6) und präoperative Drahtmarkierung (M5) mit entsprechenden ValueSets erweitert. [[HDB-653](https://hl7germany.atlassian.net/browse/HDB-653), [#243](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/243)]
- `improve` Prostata PSA LOINC ValueSet mit korrekten LOINC Display-Namen erstellt: Total-PSA (generisch und per Immunoassay), freies PSA (generisch und per Immunoassay) und ultrasensitives PSA (Nachweisgrenze ≤ 0.01 ng/mL). [[HDB-688](https://hl7germany.atlassian.net/browse/HDB-688), [#235](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/235)]
- `improve` Her2neu Status Profil für Mamma-Modul mit dualer Kodierungsstrategie implementiert: oBDS-Spezifikation (P/N/U) und S3-Leitlinie/ASCO-CAP Guidelines (positiv/low/ultralow/negativ/equivocal) mit IHC Score und ISH Result Komponenten für moderne HER2-low Therapieansätze.

## Änderungen Kommentierungs-Version 2026 (veröffentlicht 21.08.2025)

### Weitere Klassifikationen und Molekulare Tumorboards
- **Hierarchische Klassifikationssysteme**: Implementierung weiterer Klassifikationssysteme (BINET, Ann Arbor, ISS, WHO-Grad, etc.) als hierarchisches CodeSystem
  - **Grund**: Unterstützung hämatologischer und anderer spezifischer Klassifikationssysteme gemäß oBDS-Anforderungen
  - **Technische Umsetzung**: CodeSystem mit `descendant-of` ValueSet-Filtern für die jeweiligen Antwortmöglichkeiten, um hohe Anzahl eigener Profile zu vermeiden
  - **mCODE-Kompatibilität**: Integration des mCODE STU4 code+method+value Patterns für Staging-Observationen 

### Tumorkonferenz-Erweiterung
  - **Erweiterte [CarePlan](StructureDefinition-mii-pr-onko-tumorkonferenz.html)** zur Unterstützung sowohl bisheriger oBDS-Darstellung der Tumorkonferenzen als auch komplexere Darstellung von Therapieempfehlungen wie im Modul Molekulares Tumorboard
  - **Grund**: FHIR R4 Invariant cpl-3 verhindert gleichzeitige Nutzung von `activity.detail.code` und `activity.reference`
  - **Lösung**: Activity-Slicing mit `obds` (Standard oBDS 19.1 Kategorisierung) und `extended` ([TherapieempfehlungKombinationstherapieRequestGroup](StructureDefinition-mii-pr-onko-therapieempfehlung-kombinationstherapie.html)-basierte Protokolle) Slices
  - **Rückwärtskompatibilität**: Bestehende oBDS-Implementierungen werden unverändert unterstützt

### Systemische Therapie Erweiterungen

#### Protokoll-Implementierung
- **usedCode-Implementierung**: Strukturierte Dokumentation von Therapieprotokollen in [SystemischeTherapieProcedure](StructureDefinition-mii-pr-onko-systemische-therapie.html)
  - **Grund**: Ablösung der unstrukturierten `note.text` Protokollangaben durch standardisierte Kodierung
  - **Umfang**: Vollständiges CodeSystem mit 96 Protokollen aus oBDS Umsetzungsleitfaden (FOLFOX, R-CHOP, AC, etc.)
  - **Technische Umsetzung**: `Procedure.usedCode` mit extensible Binding an Protokolle-ValueSet
  - **Substanzkombinationen**: Jedes Protokoll dokumentiert enthaltene Wirkstoffe (z.B. "AC" → "Cyclophosphamid, Doxorubicin")
  - **oBDS-Mapping**: Protokollfeld 16.6 im oBDS-Mapping nun auch zur Systemischen Therapie hinzugefügt (vorher nur in MedicationStatements)

#### UNII-Kodierung für experimentelle Substanzen
- **Dual-Coding-Support**: [SystemischeTherapieMedicationStatement](StructureDefinition-mii-pr-onko-systemische-therapie-medikation.html) erweitert um UNII-Slice zusätzlich zum bestehenden ATC-Slice
  - **Grund**: Unterstützung experimenteller/neuerer Substanzen ohne etablierte ATC-Codes
  - **Technische Umsetzung**: 
    - Neuer `unii` Slice auf MedicationStatement.medication mit extensible Binding an UNII-ValueSet
  - **ValueSet**: UNII-ValueSet mit 100+ UNII-Codes
  - **Beispiel**: Iberdomide (UNII: 8V66F27X44) als experimenteller Immunmodulator

#### ATC-Code Transitionen und Post-hoc Mapping
- **Dokumentation temporaler ATC-Änderungen**: Neue Dokumentation für Terminologie-Besonderheiten
  - **Quizartinib-Beispiel**: L01XE52 (bis 2020) → L01EX11 (ab 2021)
  - **Weitere Transitionen**: Abemaciclib, Acalabrutinib, Adalimumab dokumentiert

- **Post-hoc Mapping (kontrovers, daher optional)**: Empfehlung zur DIZ-basierte Freitext-zu-ATC-Annotation
  - **Erlaubt wenn**: Klare Provenance-Dokumentation vorhanden
  - **Verwendung aktueller Codes**: Bei Post-Annotation aktuelle ATC-Codes verwenden (nicht zwingend die historischen)
  - **Originaltext erhalten**: Im `medicationCodeableConcept.text` Element

### [OperationProcedure](StructureDefinition-mii-pr-onko-operation.html) Erweiterungen

#### Mehrteilige Eingriffe Unterstützung
- **OPS-Code Kardinalität**: Änderung von `code.coding[ops] 1..1` zu `code.coding[ops] 0..1`
  - **Grund**: GitHub Issue #194 - Unterstützung für mehrteilige Operationen mit mehreren OPS-Codes
  - **Lösung**: Zwei Modellierungsansätze dokumentiert:
    - Übergeordnete Procedure mit SNOMED CT Code + Teil-Procedures mit OPS-Codes
    - Gleichberechtigte Procedures bei unklarer Hierarchie
  - **Code-Anforderung**: Klarstellung dass jede Procedure einen Code haben MUSS (OPS oder SNOMED CT)
  - **Beispiel aktualisiert**: Kim Musterperson 4-teilige Operation demonstriert Ansatz mit SNOMED CT für Hauptprocedure
  - **Dokumentation**: Ausführliche Anleitung für `partOf`-Verknüpfung und gemeinsame Aspekte
  - **Harmonisierung**: Hinweis auf Schwierigkeit der post-hoc Harmonisierung bei komplexen Tumoroperationen

#### Urgency Extension (Art des Eingriffs)
- **Neue Extension**: [ExtensionUrgencyOperation](StructureDefinition-mii-ex-onko-operation-urgency.html) zur Erfassung der Eingriffsmodalität
  - **Herkunft**: Ursprünglich aus KRK 6 oBDS 2021, aber universell auf alle Procedures anwendbar
  - **Wertebereich**: Elektiveingriff (E), Notfalleingriff (N), Unbekannt (U)
  - **Grund**: Qualitätssicherung und Risikostratifizierung - Notfalleingriffe haben andere Komplikationsraten
  - **Integration**: Extension in allgemeines [OperationProcedure](StructureDefinition-mii-pr-onko-operation.html) Profil integriert für breite Anwendbarkeit

### Verlauf-Profil Anpassungen
- **Component-Kardinalität**: Änderung von `component 1..*` zu `component 0..*` im **AllgemeinerObservation**
  - **Grund**: GitHub Issue #202 - Unterstützung für "K - keine Änderung" Fälle und hämatologische Krebsarten ohne TNM-Anwendbarkeit
  - **Betroffene Felder**: Tumor_Verlauf, Lymphknoten_Verlauf, Fernmetastasen_Verlauf bleiben 0..1

### Strahlentherapie Zielgebiet - oBDS 2014/2021 Kompatibilität
- **oBDS 2014 CodeSystem Integration**: Unterstützung für oBDS 2014 Zielgebiet-Definitionen zur Abwärtskompatibilität in [StrahlentherapieProcedure](StructureDefinition-mii-pr-onko-strahlentherapie.html)
  - **Grund**: oBDS 2021 führte architektonische Änderung ein - Trennung von Organ- und Lymphknotenkodierung
  - **oBDS 2014 Ansatz**: Kombinierte Kodierung mit `+`/`-` Suffixen (z.B. `"3.1.+"` = "Mamma mit Lymphknoten")
  - **oBDS 2021 Änderung**: Separate Kodierung - Organe (Sektionen 1-8) und dedizierte Lymphknotenregionen (Sektion 9)
  - **Technische Umsetzung**: Separates CodeSystem für Strahlentherapie-Zielgebiet-2014 - semantische Konflikte über Angabe der Version vermeidbar (2014 vs 2021)
  - **ValueSet Integration**: Erweiterte ValueSet für Strahlentherapie-Zielgebiet unterstützt beide CodeSystems
  - **Migration Pattern**: 2014 Einzelkodes → 2021 Mehrfachkodierung (z.B. `"3.1.+"` → `#3.1` + `#9.3`)

### Neue Profile zur Abdeckung der organspezifischen Module
- **Mamma**: Vollständige Implementierung des [MammaModule](profiles.html)
  - **Estrogen-Rezeptorstatus**: [MammaEstrogenRezeptorstatus](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-estrogen.html) mit dualer Kodierung (oBDS/S3-Leitlinien) und Komponenten für Anteil positiver Zellen und Färbeintensität
  - **Progesteron-Rezeptorstatus**: [MammaProgesteronRezeptorstatus](StructureDefinition-mii-pr-onko-mamma-rezeptorstatus-progesteron.html) mit identischer Struktur zum Estrogen-Status
  - **Menopause-Status**: [MammaMenopauseStatus](StructureDefinition-mii-pr-onko-mamma-menopause-status.html) mit oBDS 2021-konformer Subsumierung (perimenopausal → prämenopausal)
  - **Präoperative Markierung**: [MammaPraeoperativeMarkierung](StructureDefinition-mii-pr-onko-mamma-praeoperative-markierung.html) für verschiedene Markierungsmodalitäten (Draht, Seeds, magnetisch)
  - **Mamma-Operation**: [MammaOperation](StructureDefinition-mii-pr-onko-mamma-operation.html) mit SNOMED CT und OPS ValueSets
  - **Hinweise**: Her2Neu im Molecular Tumorboard-Profil; Tumorgröße im Histologie-Modul; Studienteilnahme in oBDS 2021 abgedeckt
- **Prostata**: Vollständige Implementierung des [ProstataModule](profiles.html)
  - **PSA**: [ProstataPSA](StructureDefinition-mii-pr-onko-prostate-psa.html) mit LOINC 2857-1 Kodierung
  - **Anzahl Stanzen**: [ProstataAnzahlStanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-stanzen.html) (LOINC 33743-6)
  - **Anzahl positive Stanzen**: [ProstataAnzahlPositiveStanzen](StructureDefinition-mii-pr-onko-prostate-anzahl-positive-stanzen.html) (LOINC 33746-9)
  - **Karzinom-Befall Stanze**: [ProstataKarzinomBefallStanze](StructureDefinition-mii-pr-onko-prostate-ca-befall-stanze.html) (LOINC 33748-5)
  - **Gleason Score/Grade Group**: [ProstataGleasonScoreGradeGroup](StructureDefinition-mii-pr-onko-prostate-gleason-grade-group.html) (LOINC 44648-7)
  - **Gleason Patterns**: Primäre und sekundäre Gleason-Grad-Komponenten
  - **Clavien-Dindo**: [ProstataClavienDindo](StructureDefinition-mii-pr-onko-prostate-clavien-dindo.html) mit dualer Kodierung (SNOMED CT + oBDS)
- **Kolorektales Karzinom**: Vollständige Implementierung des [KRKModule](profiles.html)
  - **Abstand Anokutanlinie**: [KRKAbstandTumorAnokutanlinie](StructureDefinition-mii-pr-onko-krk-abstand-anokutan.html) (oBDS KR1, LOINC 33748-5)
  - **Circumferelle Resektionsebene**: [KRKAbstandCircumferelleResektionsebene](StructureDefinition-mii-pr-onko-krk-abstand-circumferelle-resektionsebene.html) (oBDS KR3)
  - **Aboraler Resektionsrand**: [KRKAbstandResektionsrandAboral](StructureDefinition-mii-pr-onko-krk-abstand-aboral.html) (oBDS KR2)
  - **MRT Mesorektale Faszie**: [KRKMRTMesorektale](StructureDefinition-mii-pr-onko-krk-mrt-mesorektale-faszie.html) mit Abstandsmessung (oBDS KR5)
  - **ASA-Klassifikation**: **KRKASAKlassifikation** (oBDS KR9, LOINC 97816-3)
  - **Anastomoseninsuffizienz**: [KRKAnastomoseninsuffizienz](StructureDefinition-mii-pr-onko-krk-anastomoseninsuffizienz.html) (oBDS KR8, SNOMED CT 235919008)
  - **KRK-Operation**: [KRKOperation](StructureDefinition-mii-pr-onko-krk-operation.html) (oBDS KR6); TME-Qualitätsbewertung am Specimen (oBDS KR4)
  - **KRK-Specimen**: [KRKSpecimen](StructureDefinition-mii-pr-onko-krk-specimen.html) mit pathologischer TME-Qualität
  - **Stoma-Markierung**: [KRKStomaMarkierung](StructureDefinition-mii-pr-onko-krk-stoma-markierung.html) (oBDS KR7)
  - **Bundle-Beispiel**: [KRKBundle](profiles.html) demonstriert vollständigen KRK-Workflow
- **Malignes Melanom**: Vollständige Implementierung des [MalignesMelanomModule](profiles.html)
  - **Breslow-Tiefe**: [MelanomBreslowTiefe](StructureDefinition-mii-pr-onko-melanom-breslow-tiefe.html) (SNOMED CT 106243009)
  - **Ulzeration**: [MelanomUlzeration](StructureDefinition-mii-pr-onko-melanom-ulzeration.html) (oBDS MM4) 
  - **Sicherheitsabstand**: [MelanomSicherheitsabstand](StructureDefinition-mii-pr-onko-melanom-sicherheitsabstand.html) (oBDS MM1)
  - **LDH**: [MelanomLDH](StructureDefinition-mii-pr-onko-melanom-ldh.html) Laktatdehydrogenase als prognostischer Marker
  - **Melanom-Exzision**: **MelanomExzision** mit SNOMED CT Codes für Hautexzisionen
  - **Bundle-Beispiel**: [MelanomBundle](profiles.html) demonstriert vollständigen Melanom-Workflow

- **Bundle-Beispiele**: Für alle organspezifischen Module ([MammaBundle](profiles.html), **ProstataBundle**, [KRKBundle](profiles.html), [MelanomBundle](profiles.html)) stehen vollständige Transaktions-Bundles zur Verfügung, die alle zugehörigen Profile in einem server-konsumierbaren Format demonstrieren

---

## Änderungen in 2025.1.0 (veröffentlicht 12.06.2025)
- Umprofilierung des Strahlentherapie-Profils (BREAKING CHANGE!)
    - bisher: 
        - basierend auf MII-Prozedur-Profil
        - mit Extensions für Intention, Stellung zur OP und Bestrahlungsdetails
    - neu: 
        - übergeordnete Strahlentherapie-Prozedur 
            - Extensions für Intention und Stellung zur OP
            - Zeitraum der kompletten Strahlentherapie über Procedure
        - individuelle Bestrahlungsprofile für Strahlentherapi eund Nuklearmedizin
            - Strahlenart und Applikationsart über Procedure.usedCode
            - Zielstruktur und Seitenlokalisation über Procedure.bodySite
            - Zeitraum der Einzelbestrahlungen über Procedure.effectivePeriod
- Profile
    - `Verlauf.component[Tumor].code` von `277062004 |Status des Residualtumors|` auf `445200009 |Status of residual neoplasm (observable entity)|` (verfügbar seit September 2024) und pattern angepasst
    - Extensions haben jetzt experimental `experimental=true` und Datumsstempel
    - Slicing-Regeln des Onko-Befunds korrigiert und Label korrekt auf von `conclusion.value` auf `conclusion` gesetzt
    - Onko-Medikation: MedicationStatement.partOf-Slice korrigiert und Kardinalität von 1..* auf 0..1 angepasst
    - Operations-Prozeduren können jetzt wieder mit `Procedure.partOf` auf übergeordnete Profile verweisen, wenn mehrere OPS-Codes für einen Eingriff kodiert wurden(war vorher auf Observation eingeschränkt) [Ticket](https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/194)
    - UICC-ValueSet um vier Staging-Stadien ergänzt [Ticket] (https://github.com/medizininformatik-initiative/kerndatensatzmodul-onkologie/issues/193)
    - Nebenwirkung: AdverseEvent.event wieder auf 1..1 gesetzt und Beispieldatei mit nur-Text ohne coding unter AdverseEvent.event.text hinzugefügt

- ConceptMaps
    - Einfügen Versionsnummer entsprechend dem Package
    - Ersetzen der targetURI "http://snomed.info/sct" (CodeSystem-URI) mit spezifischer SNOMED-Distribution "http://snomed.info/sct/900000000000207008/version/20240401" (ValueSet-URI)
- Beispieldaten
    - Condition-PatientKimMusterperson-Diagnosis-1 - Korrektur: verificationStatus = `active` korrigert auf `verificationStatus` = `unconfirmed ` & `clinicalStatus` = `active` 
    - Korrektur des falsch hinterlegten Profils in Observation-TNM-V-Observation-2 (hier war L-Kategorie statt V-Kategorie hinterlegt)
    - Observation-mii-exa-onko-studienteilnahme: Korrektes Hinterlegen von system und display bei 'valueCodeableConcept.coding.code`= "Ja"
    - Observation-mii-exa-onko-weitere-klassifikationen-2: Code weiter spezifiziert von `385388004 |Ann Arbor Klassifkation|` auf `254373007 |Ann Arbor Hodgkin's disease tumor staging system (tumor staging)|`
    - Procedure-PatientKimMusterperson-Procedure-1: Einfügen der Imaging-Kategorie; Korrigieren des OPS-Codes von `3-222 Computertomographie des Thorax mit Kontrastmittel (Version 2024)` auf `3-225 Computertomographie des Abdomens mit Kontrastmittel (Version 2021)` 
    - Procedure-PatientKimMusterperson-Procedure-2: Einfügen einer Kategorie für Diagnostic Assessment, Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-Procedure-3: Einfügen der Imaging-Kategorie; Anpassen des Codes von `1-853.2 CT Thorax` auf `3-202 Native Computertomographie des Thorax`; Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-Procedure-4 und 4a-d: Korrigieren des Kategorien-Labels von "Operationen" auf "Surgical Procedure"; Einfügen der OPS-Version 2021
    - Procedure-PatientKimMusterperson-SystemicTherapy-2 und -3: Einfügen der Kategorie `18629005 |Administration of drug or medicament (procedure)|`; Einfügen der Version bei OPS

## Änderungen in 2025.0.4 (veröffentlicht 28.03.2025)
- Nebenwirkung: Kardinalität des Elements AdverseEvent.event von 1..1 auf 0..1 gesenkt, da in den Krebsregisterdaten keine näheren Informationen zu CTCAE 0-2 gegeben werden. 
- Studienteilnahme: Korrektur eines falschen SNOMED-Codes auf der IG-Seite von 70709491003 auf 709491003(Code im Profil war korrekt)
- Strahlentherapie-Bestrahlung: ValueSet-Binding von Strahlenart, Applikationsart und Lokalisation von required auf extensible gesenkt. Hintergrund war, dass auch experimentelle Strahlentherapien kodierbar sein sollen, und dass historische Werte teilweise auf der alten Werteliste Zielgebiet_2014 basieren (siehe https://plattform65c.atlassian.net/wiki/spaces/UMK/pages/15532594/oBDS_Zielgebiet2014_Typ)

## Änderungen in 2025.0.3
- Hinzufügen von ValueSets für ICD-O-3 Morphologie und Topologie, sowie required-binding bei den Profilen "Diagnose" und "Verlaufshistologie"
- Einfügen von fehlender SNOMED-Categories bei Operations-Beispielen
- kleine Korrekturen von Rechtschreibfehlern im IG
- Aktualisierung von externen Links 


## Änderungen in der Profilierung seit der Kommentierungsversion 2024.0.0-ballot

### FHIR-Profile
- SystemicTherapyMedication(MedicationStatement): Lockerung der Einschränkung von `MedicationStatement.basedOn`, so dass ein MedicationStatement andere MedicationStatements referenzieren kann
- Diagnose (Condition): Auslagerung des morphologischen ICD-O-3-Codes in die Extension `https://www.medizininformatik-initiative.de/fhir/ext/modul-onko/StructureDefinition/mii-ex-onko-histology-morphology-behavior-icdo3` (vgl. bei mCODE), da ICD-O-3 Morphologie-Codes nicht das gleiche klinische Konzept wie ein ICD-10 Code oder ein Orpha-Code beschreiben.   
- Verlaufshistologie (Observation): Hinzufügen der Seite im Implementation Guide und Ergänzen des ICD-O-3-Topographie-Codes unter `Observation.bodySite` 
- Änderung des Pathologie-Befund-Codes `DiagnosticReport.code` auf LOINC `22034-3 Pathology Report Cancer Narrative`
- Fernmetasen (Observation): Lokalisation der Fernmetastasen von `bodySite` nach `valueCodeableConcept` verschoben, um konform mit den Pathologiebefund-Patho Findings zu sein 
- Specimen (Specimen): Probennummer von `Specimen.identifier` nach `Specimen.accessionIdentifier` verschoben
- Allgemeiner Leistungszustand (Observation): Aufsplitten in einzelne Observations für  ECOG und Karnofsky , inkl. Anpassung der CodeSystems und ValueSets 
- Strahlentherapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"
- Systemische Therapie (Procedure): "Stellung zur OP"-Extension umbenannt von "Stellung" in "StellungZurOp"
- Tod (Observation): Lockerung der Kardinalitäten von Todesursache(`valueCodeableConcept`), Todesdatum(`effective`) und Zusammenhang mit Tumorerkrankung(`interpretation`) von 1..1 auf 0..1, da Informationen im Krankenhaus nicht immer bekannt und von den Krebsregistern häufig über Todesmeldungen in Standesämtern abgefragt 
- Nebenwirkungen (AdverseEvent): Ändern des CTCAE-Grads von `AdverseEvent.severity` zu `AdverseEvent.seriousness`

### Dokumentation und Implementation Guide
- Erarbeitung und Dokumentation von Kodierempfehlungen für `category` und `code` der Strahlentherapie und Systemischen / Abwartenden Therapie
- Aktualisierung der UML-Diagramme
- Anpassen der Beispieldateien


### SNOMED-CT Mappings
- IDs der ConceptMaps auf MII-Naming convention angepasst (mii-cm-*); Vereinheitlichen der ids, urls und Dateinamen 
- Beheben inhaltlicher Fehler 
- cave: größere inhaltliche Änderungen wurden nicht vorgenommen, da parallel die Abstimmung oBDS-meets-SNOMEDCT läuft 
